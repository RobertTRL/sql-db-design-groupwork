import sqlite3

def run_sql_file(db_path, sql_file_path):

    with open(sql_file_path, 'r') as f:
        sql_script = f.read()

    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    try:
        cursor.executescript(sql_script)
        conn.commit()
        print(f"Successfully ran {sql_file_path}")

    except sqlite3.Error as e:
        print(f"Error running {sql_file_path}: {e}")
        conn.rollback()

    finally:
        conn.close()

run_sql_file("deleting.db", "sql_scripts/deleting.sql")
