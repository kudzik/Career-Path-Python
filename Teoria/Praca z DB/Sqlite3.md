# `sqlite3` w Pythonie

`sqlite3` w Pythonie odnosi się do wbudowanej biblioteki SQLite, która umożliwia programom w Pythonie interakcję z bazami danych SQLite. **SQLite** to lekki, samodzielny, oparty na plikach system zarządzania relacyjnymi bazami danych, który nie wymaga serwera. Jest powszechnie używany w małych i średnich aplikacjach lub wtedy, gdy potrzebna jest lokalna baza danych bez konieczności uruchamiania osobnego serwera.

### Kluczowe informacje o `sqlite3` w Pythonie

#### 1. **Moduł wbudowany**

- `sqlite3` jest dostępny jako wbudowany moduł Pythona, więc nie trzeba instalować żadnych dodatkowych pakietów.
- Można go zaimportować tak jak poniżej:

    ```python
    import sqlite3
    ```

#### 2. **Tworzenie bazy danych**

- Można utworzyć nową bazę danych SQLite lub połączyć się z istniejącą za pomocą funkcji `sqlite3.connect()`.
- Jeżeli plik bazy danych o podanej nazwie nie istnieje, zostanie on automatycznie utworzony.

    ```python
    # Utworzenie nowej bazy danych 'mydatabase.db' lub połączenie z istniejącą
    conn = sqlite3.connect('mydatabase.db')
    ```

#### 3. **Wykonywanie poleceń SQL**

- Aby wykonać polecenia SQL, używa się **obiektu kursora**.
- Przykład tworzenia tabeli oraz wstawiania danych:

    ```python
    cursor = conn.cursor()
    
    # Tworzenie tabeli
    cursor.execute('''CREATE TABLE IF NOT EXISTS employees (
                        id INTEGER PRIMARY KEY,
                        name TEXT,
                        department TEXT
                      )''')

    # Wstawianie danych
    cursor.execute(
        'INSERT INTO employees (name, department) VALUES (?, ?)',
        ('John Doe', 'HR')
    )

    # Zatwierdzenie zmian
    conn.commit()
    ```

  - Używanie **parametrów zastępczych** (`?`) chroni przed SQL injection.

#### 4. **Pobieranie danych**

- Aby pobrać dane z bazy, można użyć funkcji SQL jak np. `SELECT`. Wyniki są dostępne za pomocą metody `fetchall()`.

    ```python
    cursor.execute("SELECT * FROM employees")
    rows = cursor.fetchall()
    
    for row in rows:
        print(row)
    ```

#### 5. **Zamykanie połączenia**

- Po zakończeniu pracy z bazą danych, ważne jest, aby zamknąć połączenie.

    ```python
    conn.close()
    ```

### Zastosowania SQLite

- **SQLite** jest idealny dla projektów o małej lub średniej skali, prototypowania, oraz aplikacji lokalnych.
- Jest świetnym rozwiązaniem, gdy potrzebujesz bazy danych, ale nie chcesz uruchamiać oddzielnego serwera.
- **SQLite** nie jest jednak przeznaczony do aplikacji o wysokiej liczbie równoczesnych użytkowników (brak zaawansowanego zarządzania blokadami i wielodostępem), dlatego nie sprawdzi się w dużych aplikacjach wielodostępnych.

### Dodatkowe funkcje i zalety `sqlite3`

1. **Transakcje**
   - `sqlite3` automatycznie zarządza transakcjami. Oznacza to, że jeżeli wykonasz jakieś operacje w bazie danych (jak wstawianie czy aktualizowanie), zmiany zostaną zatwierdzone dopiero po wywołaniu metody `commit()`.

2. **Obsługa błędów**
   - Można obsługiwać błędy za pomocą mechanizmu wyjątków w Pythonie. Na przykład:

    ```python
    try:
        conn = sqlite3.connect('mydatabase.db')
        cursor = conn.cursor()
        # Twój kod SQL
    except sqlite3.Error as e:
        print(f"Błąd SQLite: {e}")
    finally:
        if conn:
            conn.close()
    ```

3. **Plikowe podejście**
   - SQLite przechowuje całą bazę danych w jednym pliku. Jest to wygodne w przypadku aplikacji mobilnych, desktopowych czy wbudowanych, gdzie można przenosić bazę danych jako jeden plik.

4. **Tworzenie tabel tymczasowych**
   - SQLite umożliwia tworzenie tabel tymczasowych, które są automatycznie usuwane po zamknięciu połączenia z bazą danych:

    ```sql
    CREATE TEMPORARY TABLE temp_table (id INTEGER, name TEXT);
    ```

5. **Dostępność na wielu platformach**
   - `sqlite3` działa praktycznie na każdej platformie, na której działa Python, co sprawia, że jest bardzo wszechstronny.

### Podsumowanie

`sqlite3` w Pythonie to łatwy w użyciu i wydajny system zarządzania relacyjnymi bazami danych, idealny do małych projektów. Jest świetnym wyborem, gdy nie chcesz korzystać z zewnętrznego serwera bazy danych, a jednocześnie potrzebujesz możliwości przechowywania danych w sposób zorganizowany.

**Zastosowania**:

- Prototypy
- Aplikacje mobilne i desktopowe
- Aplikacje, które potrzebują lokalnej bazy danych

SQLite to idealne rozwiązanie do lokalnego przechowywania danych, ale nie sprawdzi się w bardziej zaawansowanych aplikacjach, które wymagają wielu równoczesnych użytkowników lub dużych przepływów danych.
