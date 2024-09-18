import sqlite3
con = sqlite3.connect("tutorial.db")
cur = con.cursor()
# cur.execute("DROP TABLE IF EXISTS movie")
# cur.execute("CREATE TABLE IF NOT EXISTS movie(title, year, score)")
res = cur.execute("SELECT name FROM sqlite_master")
print(res.fetchone())
