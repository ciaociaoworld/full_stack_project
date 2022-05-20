CREATE DATABASE fish_project;
\c fish_project

CREATE TABLE fishes (
    id SERIAL PRIMARY KEY,
    image_url TEXT, 
    content TEXT,
    trade_location TEXT
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    phone TEXT,
    suburb TEXT,
    image_url TEXT,
    password_digest TEXT 
);