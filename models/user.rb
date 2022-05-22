def create_user(name, email, phone, suburb, image_url, password)
    password_digest = BCrypt::Password.create(password)

    run_sql("INSERT INTO users(name, email, phone, suburb, image_url, password_digest) VALUES($1, $2, $3, $4, $5, $6)", [name, email, phone, suburb, image_url, password_digest])
end

def edit_users(id)
    run_sql('SELECT * FROM users WHERE id = $1', [id])[0]
end

def update_users(id, phone, suburb, image_url, password)
    password_digest = BCrypt::Password.create(password)
    run_sql("UPDATE users(phone, suburb, image_url, password_digest) VALUES($1, $2, $3, $4)", [phone, suburb, image_url, password_digest])
end

def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1", [email])

    if users.to_a.count > 0
        users[0]
    else
        nil
    end
end

def find_user_by_id(id)
    run_sql("SELECT * FROM users WHERE id = $1", [id])[0]
end