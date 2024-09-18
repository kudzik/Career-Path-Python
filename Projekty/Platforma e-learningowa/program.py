import sqlite3
import csv
con = sqlite3.connect("Projekty/Platforma e-learningowa/elearning.sqlite3")
cur = con.cursor()


cur.executescript('''DROP TABLE IF EXISTS "instructor";
CREATE TABLE IF NOT EXISTS "instructor" (
  "id" integer NOT NULL,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  "description" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);''')

cur.executescript('''DROP TABLE IF EXISTS "course";
CREATE TABLE IF NOT EXISTS "course" (
  "id" integer NOT NULL,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  "description" text NOT NULL,
  "category" text NOT NULL,
  "subcategory" text NOT NULL,
  "language" text NOT NULL,
  "length" text NOT NULL,
  "rating" real NOT NULL,
  "referral_link" text NOT NULL,
  "instructor_id" integer NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("instructor_id") REFERENCES "instructor"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);''')


cur.executescript(
    '''INSERT INTO "instructor" (id, first_name, last_name, description) VALUES("1", "John", "Moore", "Data Scientist/Python Developer/Securities Broker");''')

cur.executescript(
    '''INSERT INTO "instructor" (id, first_name, last_name, description) VALUES("2", "Anna", "nowak", "Tester");''')

con.commit()

cur.execute("SELECT * FROM instructor")
res = cur.fetchall()

# for row in res:
#     print(row[1], row[2])


# KURSY
# Odczyt pliku load_data.sql
with open('Projekty/Platforma e-learningowa/load_data.sql', 'r') as f:
    sql = f.read()


# Wykonanie skryptu SQL
cur.executescript(sql)

# # Commit zmian
con.commit()

con.close()
