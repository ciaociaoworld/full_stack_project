# CREATE DATABASE movie_project;
# \c movie_project


CREATE DATABASE fish_project;
\c fish_project

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    phone TEXT,
    suburb TEXT,
    password_digest TEXT 
);