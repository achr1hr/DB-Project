INSERT INTO Publisher (publisher_id, name, address) VALUES
(1, 'Эксмо', 'Москва, ул. Зорге, д.1'),
(2, 'АСТ', 'Москва, ул. Правды, д.24'),
(3, 'Питер', 'Санкт-Петербург, Б. Сампсониевский пр., д.29а'),
(4, 'Манн, Иванов и Фербер', 'Москва, Шаболовка ул., д.34, стр.3'),
(5, 'Альпина Паблишер', 'Москва, ул. Долгоруковская, д.6, стр.2'),
(6, 'Росмэн', 'Москва, ул. Октябрьская, д.4, стр.2'),
(7, 'Дрофа', 'Москва, ул. Неглинная, д.29/14'),
(8, 'Просвещение', 'Москва, 3-й проезд Марьиной рощи, д.41'),
(9, 'Феникс', 'Ростов-на-Дону, пер. Халтуринский, д.80'),
(10, 'Вече', 'Москва, ул. Краснопролетарская, д.16, стр.3'),
(11, 'Азбука', 'Санкт-Петербург, наб. реки Фонтанки, д.78'),
(12, 'Речь', 'Санкт-Петербург, ул. Марата, д.70'),
(13, 'Corpus', 'Москва, Пресненская наб., д.6, стр.2'),
(14, 'Ad Marginem', 'Москва, ул. 1905 года, д.7'),
(15, 'Бомбора', 'Москва, ул. Верхняя Красносельская, д.16');

INSERT INTO Genre (genre_id, name, description) VALUES
(1, 'Фантастика', 'Научная фантастика и фэнтези'),
(2, 'Детектив', 'Криминальные романы и триллеры'),
(3, 'Роман', 'Художественная проза о чувствах и отношениях'),
(4, 'Приключения', 'Книги о путешествиях и приключениях'),
(5, 'Научно-популярная', 'Популярные книги о науке и технологиях'),
(6, 'Бизнес', 'Книги по менеджменту и предпринимательству'),
(7, 'Психология', 'Книги по психологии и саморазвитию'),
(8, 'История', 'Исторические исследования и романы'),
(9, 'Поэзия', 'Стихотворные произведения'),
(10, 'Детская литература', 'Книги для детей'),
(11, 'Юмор', 'Юмористические произведения'),
(12, 'Ужасы', 'Мистика и хоррор'),
(13, 'Биография', 'Биографии известных людей'),
(14, 'Кулинария', 'Кулинарные книги и рецепты'),
(15, 'Искусство', 'Книги об искусстве и культуре');

INSERT INTO Author (author_id, name, country) VALUES
(1, 'Лев Толстой', 'Россия'),
(2, 'Фёдор Достоевский', 'Россия'),
(3, 'Антон Чехов', 'Россия'),
(4, 'Александр Пушкин', 'Россия'),
(5, 'Михаил Булгаков', 'Россия'),
(6, 'Джоан Роулинг', 'Великобритания'),
(7, 'Джордж Оруэлл', 'Великобритания'),
(8, 'Агата Кристи', 'Великобритания'),
(9, 'Стивен Кинг', 'США'),
(10, 'Эрнест Хемингуэй', 'США'),
(11, 'Рэй Брэдбери', 'США'),
(12, 'Дэн Браун', 'США'),
(13, 'Харуки Мураками', 'Япония'),
(14, 'Пауло Коэльо', 'Бразилия'),
(15, 'Франц Кафка', 'Чехия');

INSERT INTO Reader (reader_id, name, phone, email) VALUES
(1, 'Иванов Иван', '+79161234561', 'ivanov@example.com'),
(2, 'Петров Петр', '+79162345672', 'petrov@example.com'),
(3, 'Сидорова Анна', '+79163456783', 'sidorova@example.com'),
(4, 'Кузнецова Елена', '+79164567894', 'kuznetsova@example.com'),
(5, 'Смирнов Алексей', '+79165678905', 'smirnov@example.com'),
(6, 'Васильев Дмитрий', '+79166789016', 'vasiliev@example.com'),
(7, 'Николаева Мария', '+79167890127', 'nikolaeva@example.com'),
(8, 'Алексеев Сергей', '+79168901238', 'alekseev@example.com'),
(9, 'Павлова Ольга', '+79169012349', 'pavlova@example.com'),
(10, 'Федоров Андрей', '+79160123450', 'fedorov@example.com'),
(11, 'Морозова Татьяна', '+79171234561', 'morozova@example.com'),
(12, 'Волков Игорь', '+79172345672', 'volkov@example.com'),
(13, 'Белова Юлия', '+79173456783', 'belova@example.com'),
(14, 'Комаров Артем', '+79174567894', 'komarov@example.com'),
(15, 'Орлова Наталья', '+79175678905', 'orlova@example.com');

INSERT INTO Book (book_id, title, year, publisher_id, author_id, genre_id) VALUES
(1, 'Война и мир', 1869, 1, 1, 3),
(2, 'Анна Каренина', 1877, 1, 1, 3),
(3, 'Преступление и наказание', 1866, 2, 2, 3),
(4, 'Идиот', 1869, 2, 2, 3),
(5, 'Вишневый сад', 1904, 3, 3, 3),
(6, 'Дама с собачкой', 1899, 3, 3, 3),
(7, 'Евгений Онегин', 1833, 4, 4, 9),
(8, 'Капитанская дочка', 1836, 4, 4, 4),
(9, 'Мастер и Маргарита', 1967, 5, 5, 1),
(10, 'Собачье сердце', 1925, 5, 5, 1),
(11, 'Гарри Поттер и философский камень', 1997, 6, 6, 1),
(12, 'Гарри Поттер и Тайная комната', 1998, 6, 6, 1),
(13, '1984', 1949, 7, 7, 1),
(14, 'Скотный двор', 1945, 7, 7, 1),
(15, 'Убийство в Восточном экспрессе', 1934, 8, 8, 2),
(16, 'Десять негритят', 1939, 8, 8, 2),
(17, 'Оно', 1986, 9, 9, 12),
(18, 'Зеленая миля', 1996, 9, 9, 3),
(19, 'Старик и море', 1952, 10, 10, 3),
(20, 'Прощай, оружие!', 1929, 10, 10, 3),
(21, '451 градус по Фаренгейту', 1953, 11, 11, 1),
(22, 'Вино из одуванчиков', 1957, 11, 11, 1),
(23, 'Код да Винчи', 2003, 12, 12, 2),
(24, 'Ангелы и демоны', 2000, 12, 12, 2),
(25, 'Норвежский лес', 1987, 13, 13, 3),
(26, 'Кафка на пляже', 2002, 13, 13, 1),
(27, 'Алхимик', 1988, 14, 14, 3),
(28, 'Одиннадцать минут', 2003, 14, 14, 3),
(29, 'Процесс', 1925, 15, 15, 3),
(30, 'Замок', 1926, 15, 15, 3);

INSERT INTO Loan (loan_id, loan_date, return_date, book_id, reader_id) VALUES
(1, '10.01.2023', '10.02.2023', 1, 1),
(2, '12.01.2023', '12.02.2023', 2, 2),
(3, '15.01.2023', '15.02.2023', 3, 3),
(4, '18.01.2023', '18.02.2023', 4, 4),
(5, '20.01.2023', '20.02.2023', 5, 5),
(6, '01.02.2023', '01.03.2023', 6, 6),
(7, '05.02.2023', '05.03.2023', 7, 7),
(8, '10.02.2023', '10.03.2023', 8, 8),
(9, '15.02.2023', '15.03.2023', 9, 9),
(10, '20.02.2023', '20.03.2023', 10, 10),
(11, '01.03.2023', '01.04.2023', 11, 11),
(12, '05.03.2023', '05.04.2023', 12, 12),
(13, '10.03.2023', '10.04.2023', 13, 13),
(14, '15.03.2023', '15.04.2023', 14, 14),
(15, '20.03.2023', '20.04.2023', 15, 15),
(16, '01.04.2023', '01.05.2023', 16, 1),
(17, '05.04.2023', '05.05.2023', 17, 2),
(18, '10.04.2023', '10.05.2023', 18, 1),
(19, '15.04.2023', '15.05.2023', 19, 2),
(20, '20.04.2023', '20.05.2023', 20, 3),
(21, '01.05.2023', '01.06.2023', 20, 3),
(22, '05.05.2023', '05.06.2023', 22, 4),
(23, '10.05.2023', '10.06.2023', 23, 2),
(24, '15.05.2023', '15.06.2023', 24, 3),
(25, '20.05.2023', '20.06.2023', 25, 10),
(26, '01.06.2023', '01.07.2023', 26, 11),
(27, '05.06.2023', '05.07.2023', 27, 12),
(28, '10.06.2023', '10.07.2023', 28, 13),
(29, '15.06.2023', '15.07.2023', 29, 14),
(30, '20.06.2023', '20.07.2023', 30, 15);