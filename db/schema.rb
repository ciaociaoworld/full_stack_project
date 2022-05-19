CREATE DATABASE movie_project;
\c movie_project


CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT 
);