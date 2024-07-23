# `*args` i `**kwargs` w Pythonie

## Wstęp

W Pythonie `*args` i `**kwargs` są używane w definicji funkcji, aby umożliwić przekazywanie zmiennej liczby argumentów do funkcji. Dzięki nim możemy pisać bardziej elastyczny i wielokrotnego użytku kod.

## `*args`

1. **Opis**
   - `*args` pozwala funkcji przyjmować dowolną liczbę pozycyjnych argumentów. Argumenty te są przekazywane jako krotka.

2. **Definiowanie funkcji z `*args`**
   - Funkcja może być zdefiniowana z `*args` w następujący sposób:

     ```python
     def funkcja(*args):
         for arg in args:
             print(arg)
     ```

3. **Przykład użycia `*args`**
   - Możemy przekazać dowolną liczbę argumentów pozycyjnych do funkcji:

     ```python
     def suma(*args):
         wynik = 0
         for liczba in args:
             wynik += liczba
         return wynik

     print(suma(1, 2, 3))  # Output: 6
     print(suma(4, 5, 6, 7, 8))  # Output: 30
     ```

## `**kwargs`

1. **Opis**
   - `**kwargs` pozwala funkcji przyjmować dowolną liczbę argumentów nazwanych (słownikowych). Argumenty te są przekazywane jako słownik.

2. **Definiowanie funkcji z `**kwargs`**
   - Funkcja może być zdefiniowana z `**kwargs` w następujący sposób:

     ```python
     def funkcja(**kwargs):
         for klucz, wartosc in kwargs.items():
             print(f"{klucz} = {wartosc}")
     ```

3. **Przykład użycia `**kwargs`**
   - Możemy przekazać dowolną liczbę argumentów nazwanych do funkcji:

     ```python
     def przedstaw_sie(**kwargs):
         for klucz, wartosc in kwargs.items():
             print(f"{klucz} = {wartosc}")

     przedstaw_sie(imie="Jan", wiek=25, miasto="Warszawa")
     # Output:
     # imie = Jan
     # wiek = 25
     # miasto = Warszawa
     ```

## Kombinowanie `*args` i `**kwargs`

1. **Opis**
   - Możemy używać `*args` i `**kwargs` razem w jednej funkcji, aby przyjmować zarówno argumenty pozycyjne, jak i nazwane.

2. **Przykład kombinacji `*args` i `**kwargs`**
   - Definiowanie funkcji, która przyjmuje oba typy argumentów:

     ```python
     def przyklad(arg1, *args, **kwargs):
         print(f"arg1: {arg1}")

         for arg in args:
             print(f"arg z *args: {arg}")

         for klucz, wartosc in kwargs.items():
             print(f"{klucz} = {wartosc}")

     przyklad(1, 2, 3, 4, imie="Jan", wiek=25)
     # Output:
     # arg1: 1
     # arg z *args: 2
     # arg z *args: 3
     # arg z *args: 4
     # imie = Jan
     # wiek = 25
     ```

## Zastosowania `*args` i `**kwargs`

1. **Przekazywanie argumentów do innych funkcji**
   - `*args` i `**kwargs` mogą być używane do przekazywania argumentów do innych funkcji.

     ```python
     def funkcja_pomocnicza(a, b, c):
         print(a, b, c)

     def funkcja_glowna(*args, **kwargs):
         funkcja_pomocnicza(*args, **kwargs)

     funkcja_glowna(1, 2, c=3)
     # Output: 1 2 3
     ```

2. **Tworzenie bardziej elastycznych funkcji**
   - `*args` i `**kwargs` pozwalają na tworzenie funkcji, które mogą obsługiwać różne zestawy argumentów, co zwiększa ich elastyczność.

     ```python
     def elastyczna_funkcja(*args, **kwargs):
         if args:
             print(f"Pozycyjne argumenty: {args}")
         if kwargs:
             print(f"Argumenty nazwane: {kwargs}")

     elastyczna_funkcja(1, 2, 3, imie="Jan", wiek=25)
     # Output:
     # Pozycyjne argumenty: (1, 2, 3)
     # Argumenty nazwane: {'imie': 'Jan', 'wiek': 25}
     ```

## Podsumowanie

- **`*args`**: Używane do przekazywania dowolnej liczby argumentów pozycyjnych do funkcji. Argumenty te są dostępne jako krotka.
- **`**kwargs`**: Używane do przekazywania dowolnej liczby argumentów nazwanych do funkcji. Argumenty te są dostępne jako słownik.

Znajomość i umiejętność korzystania z `*args` i `**kwargs` pozwala na tworzenie bardziej elastycznych, wielokrotnego użytku funkcji, które mogą obsługiwać różnorodne zestawy argumentów.

Czy masz dodatkowe pytania dotyczące `*args` i `**kwargs` w Pythonie? Chętnie wyjaśnię szczegóły!

### Dostępne komendy

dalej, test, projekt, zadania, notatka, help, start
