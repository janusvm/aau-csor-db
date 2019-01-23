# Lecture 01: Introduction to databases

Lecturer
: Janus Valberg-Madsen <<janus@math.aau.dk>>

Time
: Mar 18, 08:15-12:00

Place
: Skjernvej 4A, room 2.120

---

## Preparation

1. Install the following on your laptop:
    + [PostgreSQL Server](http://www.postgresql.org/download)
    + [pgAdmin 4](https://www.pgadmin.org/download)
    + [R](https://cran.r-project.org/) with packages: `tidyverse`, `RPostgreSQL`, and `nycflights13`
    + [RStudio](https://www.rstudio.com) (optional, but highly recommended)
1. Make sure your postgres server is running and that you can connect to it in pgAdmin
1. Bring your laptop to the lectures

For a quick guide to installing and setting up PostgreSQL Server and pgAdmin 4, see the _Installation guide_ under Resources.

If you have problems, please contact me at <janus@math.aau.dk>.

---

## Contents of lecture

The DB part of the course will consist of slide based lectures interspersed with interactive examples and exercises (and a break in the middle).

Today's topics:

- Introduction to databases and PostgreSQL
- Using the `psql` command line tool
- Using the `pgAdmin` visual tool
- Basic usage of the SELECT command

---

## Exercises

Exercise sessions during the lectures will largely be based on [SQLZOO](https://sqlzoo.net/wiki/SQL_Tutorial) tutorials and quizzes.
Solutions for each tutorial will be made available after the lecture.

Today's exercise sessions will consist of the following:

- [SELECT basics](https://sqlzoo.net/wiki/SELECT_basics) ([+quiz](https://sqlzoo.net/wiki/SELECT_Quiz))
- [SELECT names](https://sqlzoo.net/wiki/SELECT_names)
- [SELECT FROM world](https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial) ([+quiz](https://sqlzoo.net/wiki/BBC_QUIZ))
- [SELECT FROM nobel](https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial) ([+quiz](https://sqlzoo.net/wiki/Nobel_Quiz))

---

## Literature

The following resources will be used and referenced throughout the DB lectures:

[D&W]
: Joshua D. Drake and John C. Worsley. *Practical PostgreSQL*.  O'Reilly Media, Inc. ISBN 978-1-56592-846-6.
Available at <http://proquest.safaribooksonline.com/9781449309770>

[Docs]
: Official PostgreSQL documentation. <https://www.postgresql.org/docs/current/index.html>

For today, the suggested reading is:

- [D&W] Chapter 3, _Understanding SQL_
- [D&W] Chapter 4, section _Retrieving Rows with SELECT_

---

## Resources

Slides are under construction, check back later...
