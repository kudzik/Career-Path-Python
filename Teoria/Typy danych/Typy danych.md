# Typy Danych w Pythonie

## Wstęp

Typy danych w Pythonie określają, jakie wartości mogą być przechowywane i jakimi operacjami można je manipulować. Python oferuje różnorodne typy danych, które możemy podzielić na podstawowe (proste) i złożone.

## Podstawowe Typy Danych

1. **Liczby całkowite (int)**
   - Reprezentują liczby całkowite, zarówno dodatnie, jak i ujemne.
   - Przykład:

     ```python
     x = 5
     y = -3
     ```

2. **Liczby zmiennoprzecinkowe (float)**
   - Reprezentują liczby rzeczywiste z częścią ułamkową.
   - Przykład:

     ```python
     pi = 3.14
     e = 2.718
     ```

3. **Liczby zespolone (complex)**
   - Reprezentują liczby zespolone w postaci `a + bj`, gdzie `a` to część rzeczywista, a `b` to część urojona.
   - Przykład:

     ```python
     z = 2 + 3j
     ```

4. **Napisy (str)**
   - Reprezentują ciągi znaków, mogą zawierać litery, cyfry, symbole i znaki specjalne.
   - Przykład:

     ```python
     imie = "Jan"
     powitanie = 'Cześć'
     ```

5. **Wartości logiczne (bool)**
   - Reprezentują wartości logiczne `True` lub `False`.
   - Przykład:

     ```python
     prawda = True
     falsz = False
     ```

## Złożone Typy Danych

1. **Listy (list)**
   - Kolekcje uporządkowanych i zmiennych elementów, mogą przechowywać różne typy danych.
   - Przykład:

     ```python
     lista = [1, 2, 3, "cztery", True]
     ```

2. **Krotki (tuple)**
   - Kolekcje uporządkowanych, ale niezmiennych elementów, mogą przechowywać różne typy danych.
   - Przykład:

     ```python
     krotka = (1, 2, 3, "cztery", True)
     ```

3. **Słowniki (dict)**
   - Kolekcje nieuporządkowane, zmienne i indeksowane pary klucz-wartość.
   - Przykład:

     ```python
     slownik = {"imie": "Jan", "wiek": 30}
     ```

4. **Zbiory (set)**
   - Kolekcje nieuporządkowane i nieindeksowane unikalnych elementów.
   - Przykład:

     ```python
     zbior = {1, 2, 3, 4, 5}
     ```

5. **Zbiory niezmienne (frozenset)**
   - Jak zbiór, ale niezmienny.
   - Przykład:

     ```python
     niezmienny_zbior = frozenset([1, 2, 3, 4, 5])
     ```

## Specjalne Typy Danych

1. **None**
   - Specjalny typ danych reprezentujący brak wartości.
   - Przykład:

     ```python
     brak_wartosci = None
     ```

## Operacje na Typach Danych

1. **Liczby**
   - Operacje arytmetyczne: `+`, `-`, `*`, `/`, `//` (dzielenie całkowite), `%` (modulo), `**` (potęgowanie).
   - Przykład:

     ```python
     suma = 5 + 3
     roznica = 10 - 2
     iloczyn = 4 * 7
     iloraz = 20 / 4
     ```

2. **Napisy**
   - Łączenie: `+`
   - Powtarzanie: `*`
   - Indeksowanie: `[]`
   - Przykład:

     ```python
     powitanie = "Cześć" + " " + "Świecie"
     echo = "ha" * 3  # "hahaha"
     pierwsza_litera = powitanie[0]  # "C"
     ```

3. **Listy**
   - Dodawanie elementów: `append()`, `extend()`
   - Usuwanie elementów: `remove()`, `pop()`
   - Przykład:

     ```python
     lista = [1, 2, 3]
     lista.append(4)  # [1, 2, 3, 4]
     lista.remove(2)  # [1, 3, 4]
     ```

4. **Słowniki**
   - Dodawanie/parowanie: `slownik[key] = value`
   - Usuwanie: `del slownik[key]`
   - Przykład:

     ```python
     slownik = {"imie": "Jan", "wiek": 30}
     slownik["miasto"] = "Warszawa"
     del slownik["wiek"]
     ```

5. **Zbiory**
   - Dodawanie: `add()`
   - Usuwanie: `remove()`
   - Operacje zbiorowe: `union()`, `intersection()`, `difference()`
   - Przykład:

     ```python
     zbior = {1, 2, 3}
     zbior.add(4)
     zbior.remove(2)
     zbior2 = {3, 4, 5}
     zbior3 = zbior.union(zbior2)  # {1, 3, 4, 5}
     ```

## Mapa myśli

![Typy Danych w Pythonie](../assets/image/Typy%20dnych/Typy%20Danych%20w%20Pythonie.png)

## Podsumowanie

Python oferuje różnorodne typy danych, które umożliwiają przechowywanie i manipulację danymi w różnych formach. Każdy typ ma swoje specyficzne operacje i metody, które ułatwiają pracę z danymi. Znajomość tych typów i umiejętność ich używania jest kluczowa dla efektywnego programowania w Pythonie.
