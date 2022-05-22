def all_content
    today_fish = run_sql('SELECT * FROM fishes ORDER BY id DESC')
end

def add_fish(title, image_url, content, trade_location)
    run_sql("INSERT INTO fishes(title, image_url, content, trade_location) VALUES($1, $2, $3, $4)", [title, image_url, content, trade_location])
end

def edit_fish(id)
    run_sql('SELECT * FROM fishes WHERE id = $1', [id])[0]
end

def update_fish(id, title, image_url, content, trade_location)
    run_sql("UPDATE fishes SET title = $1, image_url = $2, content = $3, trade_location = $4 WHERE id = $5", [title, image_url, content, trade_location, id])
end

def delete_fish(id)
    run_sql("DELETE FROM fishes WHERE id = $1", [id])
end
    