-- 1. Створити БД на тему - "Бібліотека".
-- 2. Створити таблицю "книжка" з полями(
-- - назва книги(не null, до 120 символів),
-- - опис(встановити default значення "Опис відсутній"),
-- - дата публікації(не null, default значення "2018-01-01"),
-- - автор(не null, до 60 символів),
-- - категорія(не null, до 30 символів)
-- 3. Добавити в цю таблицю 10 записів.

create DATABASE library;
use library;
create TABLE book (
name_book varchar(120) NOT NULL,
description_book text DEFAULT ("there is no description"),
date_book date NOT NULL default ("2018-01-01"),
author char(60) NOT NULL,
category char (30) NOT NULL);

use library;
insert into book (name_book, author, category)
values ("Book1", "Author author1", "Category1"),
("Book2", "Author author2", "Category2"),
("Book3", "Author author3", "Category3"),
("Book4", "Author author4", "Category1"),
("Book5", "Author author5", "Category2"),
("Book6", "Author author2", "Category3"),
("Book7", "Author author3", "Category4"),
("Book8", "Author author5", "Category1"),
("Book9", "Author author6", "Category1"),
("Book10", "Author author7", "Category2");

select * from library.book;


