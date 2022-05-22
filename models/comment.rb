def all_comment
    run_sql('SELECT * FROM comments ORDER BY id DESC')
end

def add_comment(name, comment)
    run_sql("INSERT INTO comments(name, comment) VALUES($1, $2)", [name, comment])
end

def delete_comment(id)
    run_sql("DELETE FROM comments WHERE id = $1",[id])
end