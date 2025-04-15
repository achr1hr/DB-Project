-- 1. Найти все книги в жанре "Фантастика" (genre_id = 1)
SELECT b.title, a.name AS author, b.year
FROM Book b
JOIN Author a ON b.author_id = a.author_id
WHERE b.genre_id = 1
ORDER BY b.year DESC;

-- 2. Показать издательства, выпустившие 2 и более книг в базе данных
SELECT p.name AS publisher, COUNT(b.book_id) AS books_count
FROM Publisher p
JOIN Book b ON p.publisher_id = b.publisher_id
GROUP BY p.name
HAVING COUNT(b.book_id) >= 2
ORDER BY books_count DESC;

-- 3. Показать читателей с количеством взятых книг, отсортированных по активности
SELECT r.name, COUNT(l.loan_id) AS loans_count
FROM Reader r
INNER JOIN Loan l ON r.reader_id = l.reader_id
GROUP BY r.name
ORDER BY loans_count DESC;

-- 4. Показать все книги и информацию о их выдаче (если были выданы)
SELECT b.title, a.name AS author, l.loan_date, l.return_date
FROM Book b
LEFT JOIN Loan l ON b.book_id = l.book_id
LEFT JOIN Author a ON b.author_id = a.author_id
ORDER BY b.title;

-- 5. Найти книги, которые никогда не выдавались читателям
SELECT b.title, a.name AS author
FROM Book b
JOIN Author a ON b.author_id = a.author_id
WHERE NOT EXISTS (
    SELECT 1 FROM Loan l WHERE l.book_id = b.book_id
);

-- 6. Ранжирование авторов по количеству их книг в библиотеке
SELECT 
    a.name AS author,
    COUNT(b.book_id) AS books_count,
    RANK() OVER (ORDER BY COUNT(b.book_id) DESC) AS rank
FROM Author a
LEFT JOIN Book b ON a.author_id = b.author_id
GROUP BY a.name
ORDER BY books_count DESC;

-- 7. Найти все книги одного автора (например, Льва Толстого)
SELECT b1.title AS book1, b2.title AS book2
FROM Book b1
JOIN Book b2 ON b1.author_id = b2.author_id AND b1.book_id < b2.book_id
JOIN Author a ON b1.author_id = a.author_id
WHERE a.name = 'Лев Толстой';

-- 8. Найти книги, изданные в те же годы, что и книги Достоевского
SELECT b.title, a.name AS author, b.year
FROM Book b
JOIN Author a ON b.author_id = a.author_id
WHERE b.year IN (
    SELECT year FROM Book WHERE author_id = (
        SELECT author_id FROM Author WHERE name = 'Фёдор Достоевский'
    )
)
ORDER BY b.year;

-- 9. Анализ задержек возврата книг с расчетом средней задержки по авторам
SELECT 
    b.title,
    a.name AS author,
    r.name AS reader,
    l.loan_date,
    l.return_date,
    JULIANDAY(l.return_date) - JULIANDAY(l.loan_date) AS loan_duration,
    AVG(JULIANDAY(l.return_date) - JULIANDAY(l.loan_date)) 
        OVER (PARTITION BY b.author_id) AS avg_author_loan_duration,
    CASE 
        WHEN JULIANDAY(l.return_date) - JULIANDAY(l.loan_date) > 
             AVG(JULIANDAY(l.return_date) - JULIANDAY(l.loan_date)) 
             OVER (PARTITION BY b.author_id) THEN 'Дольше среднего'
        ELSE 'В пределах нормы'
    END AS duration_status
FROM Loan l
JOIN Book b ON l.book_id = b.book_id
JOIN Author a ON b.author_id = a.author_id
JOIN Reader r ON l.reader_id = r.reader_id
ORDER BY loan_duration DESC;

-- 10. Постраничный вывод книг с рейтингом популярности
SELECT 
    b.title,
    a.name AS author,
    p.name AS publisher,
    COUNT(l.loan_id) AS loan_count,
    RANK() OVER (ORDER BY COUNT(l.loan_id) DESC) AS popularity_rank
FROM Book b
JOIN Author a ON b.author_id = a.author_id
JOIN Publisher p ON b.publisher_id = p.publisher_id
LEFT JOIN Loan l ON b.book_id = l.book_id
GROUP BY b.book_id, b.title, a.name, p.name
ORDER BY loan_count DESC
LIMIT 10 OFFSET 0;  -- Первая страница (первые 10 самых популярных книг)
