 Porównanie: Zbiory, Słowniki, Krotki i Listy w Pythonie

# Wstęp

W Pythonie istnieje wiele struktur danych, z których każda ma swoje unikalne cechy i zastosowania. W tym porównaniu omówimy główne różnice i zastosowania zbiorów, słowników, krotek i list.

# Struktura danych: Cechy i Zastosowania

| Cecha/Zastosowanie   | Listy               | Krotki               | Słowniki            | Zbiory               |
|----------------------|---------------------|----------------------|---------------------|----------------------|
| **Tworzenie**        | `[]` lub `list()`   | `()` lub `tuple()`   | `{}` lub `dict()`   | `{}` lub `set()`     |
| **Uporządkowanie**   | Tak                 | Tak                  | Nie                 | Nie                  |
| **Indeksowanie**     | Tak                 | Tak                  | Nie                 | Nie                  |
| **Mutowalność**      | Tak                 | Nie                  | Tak                 | Tak                  |
| **Typ elementów**    | Dowolny             | Dowolny              | Klucze: niemutowalne<br>Wartości: dowolne | Niemutowalne         |
| **Duplikaty**        | Tak                 | Tak                  | Klucze: nie<br>Wartości: tak | Nie                  |
| **Operacje specjalne**| Slicing, sortowanie| Rozpakowywanie, slicing | Wyszukiwanie wartości po kluczu, iteracja po kluczach/wartościach | Operacje zbiorowe (suma, przecięcie, różnica) |
| **Najlepsze zastosowania** | Przechowywanie uporządkowanych kolekcji elementów, które mogą się zmieniać | Przechowywanie stałych danych, zwracanie wielu wartości z funkcji | Przechowywanie danych par klucz-wartość, szybki dostęp do wartości po kluczu | Przechowywanie unikalnych elementów, operacje na zbiorach |

# Przykłady Kodów

1. **Listy**

   ```python
   lista = [1, 2, 3, 4, 5]
   lista.append(6)  # [1, 2, 3, 4, 5, 6]
   lista[0] = 10  # [10, 2, 3, 4, 5, 6]
   ```

2. **Krotki**

   ```python
   krotka = (1, 2, 3, 4, 5)
   # krotka[0] = 10  # TypeError: 'tuple' object does not support item assignment
   ```

3. **Słowniki**

   ```python
   slownik = {"klucz1": "wartość1", "klucz2": "wartość2"}
   slownik["klucz3"] = "wartość3"
   wartość = slownik["klucz1"]  # "wartość1"
   ```

4. **Zbiory**

   ```python
   zbior = {1, 2, 3, 4, 5}
   zbior.add(6)  # {1, 2, 3, 4, 5, 6}
   zbior.remove(1)  # {2, 3, 4, 5, 6}
   ```

## Podsumowanie

Każda z tych struktur danych ma swoje unikalne cechy i zastosowania:

- **Listy** są elastyczne i mogą przechowywać uporządkowane kolekcje zmiennych danych.
- **Krotki** są podobne do list, ale są niemutowalne, co czyni je idealnymi do przechowywania stałych danych.
- **Słowniki** przechowują dane w formie par klucz-wartość, umożliwiając szybki dostęp do wartości na podstawie kluczy.
- **Zbiory** przechowują unikalne elementy i wspierają operacje zbiorowe, takie jak suma, przecięcie i różnica.
