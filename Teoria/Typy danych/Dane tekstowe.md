# Dane Tekstowe w Pythonie

## Wstęp

Dane tekstowe w Pythonie są reprezentowane za pomocą typu `str` (napis). Napisy w Pythonie są sekwencjami znaków, co oznacza, że możemy do nich odnosić się za pomocą indeksów oraz używać wielu metod do manipulacji tekstem.

## Tworzenie napisów

Napisy mogą być tworzone za pomocą pojedynczych, podwójnych cudzysłowów lub potrójnych cudzysłowów dla wieloliniowych tekstów.

```python
napis1 = 'To jest napis'
napis2 = "To też jest napis"
napis3 = '''To jest
wieloliniowy
napis'''
```

## Indeksowanie i wycinanie

Podobnie jak listy, napisy mogą być indeksowane. Indeksowanie zaczyna się od zera.

```python
napis = "Python"
pierwsza_litera = napis[0]  # 'P'
ostatnia_litera = napis[-1]  # 'n'
fragment = napis[1:4]  # 'yth'
```

## Podstawowe operacje na napisach

1. **Łączenie napisów (konkatenacja)**
   - Napisy można łączyć za pomocą operatora `+`.

   ```python
   napis1 = "Hello"
   napis2 = "World"
   wynik = napis1 + " " + napis2  # 'Hello World'
   ```

2. **Powtarzanie napisów**
   - Napisy można powtarzać za pomocą operatora `*`.

   ```python
   napis = "ha"
   wynik = napis * 3  # 'hahaha'
   ```

3. **Sprawdzanie długości napisu**
   - Funkcja `len()` zwraca długość napisu.

   ```python
   napis = "Python"
   dlugosc = len(napis)  # 6
   ```

4. **Sprawdzanie zawartości**
   - Operator `in` sprawdza, czy napis zawiera podciąg.

   ```python
   napis = "Python"
   wynik = "Py" in napis  # True
   ```

## Ważne metody dla napisów

1. **Zmiana wielkości liter**
   - `upper()`: zmienia wszystkie litery na wielkie.
   - `lower()`: zmienia wszystkie litery na małe.
   - `capitalize()`: zmienia pierwszą literę na wielką.
   - `title()`: zmienia pierwszą literę każdego słowa na wielką.

   ```python
   napis = "python programming"
   print(napis.upper())  # 'PYTHON PROGRAMMING'
   print(napis.lower())  # 'python programming'
   print(napis.capitalize())  # 'Python programming'
   print(napis.title())  # 'Python Programming'
   ```

2. **Usuwanie białych znaków**
   - `strip()`: usuwa białe znaki z początku i końca napisu.
   - `lstrip()`: usuwa białe znaki z początku napisu.
   - `rstrip()`: usuwa białe znaki z końca napisu.

   ```python
   napis = "  Python  "
   print(napis.strip())  # 'Python'
   print(napis.lstrip())  # 'Python  '
   print(napis.rstrip())  # '  Python'
   ```

3. **Zastępowanie podciągów**
   - `replace(stary, nowy)`: zastępuje wszystkie wystąpienia `stary` przez `nowy`.

   ```python
   napis = "Hello World"
   print(napis.replace("World", "Python"))  # 'Hello Python'
   ```

4. **Podział napisu**
   - `split(separator)`: dzieli napis na listę podciągów, używając `separatora`.
   - `join(lista)`: łączy elementy listy w jeden napis, używając napisu jako separatora.

   ```python
   napis = "Python is great"
   print(napis.split())  # ['Python', 'is', 'great']
   lista = ['Python', 'is', 'great']
   print(" ".join(lista))  # 'Python is great'
   ```

5. **Znajdowanie podciągów**
   - `find(podciąg)`: zwraca indeks pierwszego wystąpienia podciągu lub -1, jeśli podciąg nie został znaleziony.
   - `count(podciąg)`: zwraca liczbę wystąpień podciągu w napisie.

   ```python
   napis = "Python is awesome"
   print(napis.find("is"))  # 7
   print(napis.count("o"))  # 2
   ```

## Formatowanie napisów

1. **Formatowanie za pomocą operatora %**
   - Można używać operatora `%` do formatowania napisów, podobnie jak w języku C.

   ```python
   imie = "Jan"
   wiek = 25
   napis = "Mam na imię %s i mam %d lat" % (imie, wiek)
   print(napis)  # 'Mam na imię Jan i mam 25 lat'
   ```

2. **Metoda `format()`**
   - Bardziej elastyczne formatowanie za pomocą metody `format()`.

   ```python
   imie = "Jan"
   wiek = 25
   napis = "Mam na imię {} i mam {} lat".format(imie, wiek)
   print(napis)  # 'Mam na imię Jan i mam 25 lat'
   ```

3. **F-strings (od Pythona 3.6)**
   - Najbardziej nowoczesny sposób formatowania napisów przy użyciu `f` przed napisem.

   ```python
   imie = "Jan"
   wiek = 25
   napis = f"Mam na imię {imie} i mam {wiek} lat"
   print(napis)  # 'Mam na imię Jan i mam 25 lat'
   ```

## Dodatkowe metody tekstowe

1. **startswith(prefix)**
   - Sprawdza, czy napis zaczyna się od określonego prefiksu.

   ```python
   napis = "Hello World"
   print(napis.startswith("Hello"))  # True
   ```

2. **endswith(suffix)**
   - Sprawdza, czy napis kończy się określonym sufiksem.

   ```python
   napis = "Hello World"
   print(napis.endswith("World"))  # True
   ```

3. **isalpha()**
   - Sprawdza, czy wszystkie znaki w napisie są literami.

   ```python
   napis = "Hello"
   print(napis.isalpha())  # True
   ```

4. **isdigit()**
   - Sprawdza, czy wszystkie znaki w napisie są cyframi.

   ```python
   napis = "12345"
   print(napis.isdigit())  # True
   ```

5. **isalnum()**
   - Sprawdza, czy wszystkie znaki w napisie są literami lub cyframi.

   ```python
   napis = "Hello123"
   print(napis.isalnum())  # True
   ```

6. **isspace()**
   - Sprawdza, czy wszystkie znaki w napisie są białymi znakami.

   ```python
   napis = "   "
   print(napis.isspace())  # True
   ```

7. **istitle()**
   - Sprawdza, czy wszystkie słowa w napisie zaczynają się od wielkiej litery.

   ```python
   napis = "Hello World"
   print(napis.istitle())  # True
   ```

8. **swapcase()**
   - Zmienia wielkość liter na przeciwną.

   ```python
   napis = "Hello World"
   print(napis.swapcase())  # 'hELLO wORLD'
   ```

9. **zfill(width)**
   - Wypełnia napis zerami z lewej strony do określonej szerokości.

   ```python
   napis = "42"
   print(napis.zfill(5))  # '00042'
   ```

10. **center(width, fillchar=' ')**
    - Centruje napis w polu o określonej szerokości, wypełniając pozostałe miejsca podanym znakiem.

    ```python
    napis = "Hello"
    print(napis.center(10, '-'))  # '--Hello---'
    ```

11. **ljust(width, fillchar=' ')**
    - Wyrównuje napis do lewej strony w polu o określonej szerokości, wypełniając pozostałe miejsca podanym znakiem.

    ```python
    napis = "Hello"
    print(napis.ljust(10, '-'))  # 'Hello-----'
    ```

12. **rjust(width, fillchar=' ')**
    - Wyrównuje napis do prawej strony w polu o określonej szerokości, wypełniając pozostałe miejsca podanym znakiem.

    ```python
    napis = "Hello"
    print(napis.rjust(10, '-'))  # '-----Hello'
    ```

13. **partition(sep)**
    - Dzieli napis na trzy części: przed pierwszym wystąpieniem separatora, sam separator i po nim.

    ```python
    napis = "Hello World"
    print(napis.partition(" "))  # ('Hello', ' ', 'World')
    ```

14. **rpartition(sep)**
    - Dzieli napis na trzy części: przed ostatnim wystąpieniem separatora, sam separator i po nim.

    ```python
    napis = "Hello World World"
    print(napis.rpartition(" "))  # ('Hello World', ' ', 'World')
    ```

15. **splitlines(keepends=False)**
    - Dzieli napis na linie.

    ```python
    napis = "Hello\nWorld"
    print(napis.splitlines())  # ['Hello', 'World']
    ```

16. **expandtabs(tabsize=8)**
    - Zmienia tabulatory na spacje, używając podanej szerokości tabulatora.

    ```python
    napis = "Hello\tWorld"
    print(napis.expandtabs(4))  # 'Hello   World'
    ```

## Mapa myśli

![Dane Tekstowe](../../assets/image/Typy%20dnych/Dane%20tekstowe.png)

## Podsumowanie

Dane tekstowe w Pythonie są potężnym narzędziem, oferującym szeroką gamę metod do manipulacji i analizy tekstów. Znajomość tych metod i operacji pozwala na efektywne przetwarzanie i manipulację danymi tekstowymi.
