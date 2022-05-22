CREATE DATABASE fish_project;
\c fish_project

CREATE TABLE fishes (
    id SERIAL PRIMARY KEY,
    title TEXT,
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

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    name TEXT,
    comment TEXT
);

CREATE TABLE messages(
    id SERIAL PRIMARY KEY,
    sender_id INTEGER,
    recipient_id INTEGER,
    message_content TEXT
);