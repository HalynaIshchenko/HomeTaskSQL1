-- 1. Працюємо далі з БД "Бібліотека".
-- 2. Створити таблицю "книжка" з полями(
--  Id not null primary key auto_increment
-- назва книги(не null, до 120 символів),
-- опис(потрібно подумати який тип даних),
-- дата публікації(не null, default значення "2018-01-01"),#date
-- категорія(не null, до 30 символів),
-- isbn (не null, до 20 символів, унікальний),
-- кількість сторінок(не null)
-- ім"я автора (не null, до 45 символів),
-- прізвище автора (не null, до 45 символів),
-- email автора (не null, до 50 символів)
-- вік автора(не null),
-- дата народження автора(не null),
-- нагороди автора(до 120 символів, якщо нема - то NULL)
-- 3. Добавити в таблицю 10 записів.
-- 4. Потрібно написати наступні запити:
-- витягнути всі книги
-- витягнути книги з id 5, 10, 13
-- витягнути всі книги де кількість сторінок більше 150
-- витягнути книги, де автори старше 30 років
-- витягнути книги, в яких автори не мають нагород
-- витягнути книгу по email автора
-- витягнути книгу по isbn
-- витягнути всіх книги які належать до певної категорії
-- витягнути книги в яких кількість сторінок більше 200 та вік автора більше 25
-- витягнути книги, в яких категорія "комедія" або "драма"(назви категорії можете змінити)
-- витягнути книги та посортувати за назвою
-- витягнути книги та посортувати за email автора
-- витягнути книги та посортувати за кількістю сторінок(проти алфавіту)
-- витягнути унікальні значення категорій
-- витягнути унікальні імена авторів
-- витягнути книги які було написано після '2000-01-01'
-- витягнути книги які було написано до '2010-01-01'

drop database library;
create DATABASE library;
USE library;
create TABLE book (
id integer NOT NULL primary key auto_increment,
name_book varchar(120) NOT NULL,
description_book mediumtext DEFAULT ("there is no description"),
date_book date NOT NULL default ("2018-01-01"),
category char (30) NOT NULL,
isbn  char (20) NOT NULL UNIQUE,
number_of_pages integer NOT NULL,
name_author char(45) NOT NULL,
last_name char (45) NOT NULL,
e_mail char (50) NOT NULL,
age_author integer NOT NULL,
date_of_birth_author date NOT NULL,
awards_author char(120) DEFAULT ("NULL")
);

insert into book (name_book, category, isbn, number_of_pages, name_author, last_name, e_mail, age_author, date_of_birth_author)
values ("Book1","Category1","34","345","Name_author1", "Last_name_author1","e_mail_author1@gmail.com", "31", "1991-05-07" ),
("Book2","Category2","35","380","Name_author2", "Last_name_author2","e_mail_author2@gmail.com", "41", "1981-08-04" ),
("Book3","Category3","36","250","Name_author2", "Last_name_author2","e_mail_author2@gmail.com", "41", "1981-08-04" ),
("Book4","Category2","37","376","Name_author3", "Last_name_author3","e_mail_author3@gmail.com", "70", "1952-07-04" ),
("Book5","Category1","38","143","Name_author4", "Last_name_author4","e_mail_author4@gmail.com", "72", "1950-05-01" ),
("Book6","Category2","39","415","Name_author2", "Last_name_author2","e_mail_author2@gmail.com", "41", "1981-08-04" ),
("Book7","Category4","40","380","Name_author5", "Last_name_author5","e_mail_author5@gmail.com", "34", "1989-08-04" ),
("Book8","Category1","41","752","Name_author6", "Last_name_author6","e_mail_author6@gmail.com", "41", "1981-10-12" ),
("Book9","Category5","42","671","Name_author7", "Last_name_author7","e_mail_author7@gmail.com", "41", "1981-11-07" ),
("Book10","Category5","43","250","Name_author5", "Last_name_author5","e_mail_author5@gmail.com", "34", "1989-08-04");

select * from library.book;
select * from library.book where id in (5,10,13) ;
select * from library.book where number_of_pages > 150;
select * from library.book where age_author > 30;
select * from library.book where awards_author = "NULL";
select * from library.book where e_mail = "e_mail_author5@gmail.com";
select * from library.book where isbn = 41;
select * from library.book where category = "Category4";
select * from library.book where number_of_pages > 200 and age_author > 25;
select * from library.book where category = "Category2" or category = "Category3";
select * from library.book order by name_book asc;
select * from library.book order by e_mail;
select * from library.book order by number_of_pages desc;
select distinct (category)  from library.book;
select distinct (name_author)  from library.book;
select * from library.book where date_book > "2000-01-01";
select * from library.book where date_book <= "2000-01-01";