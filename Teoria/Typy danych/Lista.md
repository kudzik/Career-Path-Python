# Listy w Pythonie

## Wstęp

Listy w Pythonie są jednymi z najbardziej wszechstronnych i często używanych typów danych. Są to uporządkowane, zmienne kolekcje, które mogą zawierać różne typy danych. Dzięki swojej elastyczności, listy są idealne do przechowywania i manipulacji zbiorami danych.

## Tworzenie List

Listy mogą być tworzone przy użyciu nawiasów kwadratowych `[]` lub za pomocą funkcji `list()`.

```python
lista1 = [1, 2, 3, 4, 5]
lista2 = ["jabłko", "banan", "wiśnia"]
lista3 = [1, "jabłko", 3.14, True]
lista4 = list((1, 2, 3, 4, 5))  # użycie funkcji list()
```

## Dostęp do Elementów

Elementy w listach są indeksowane, zaczynając od zera. Można uzyskać dostęp do pojedynczych elementów, fragmentów listy oraz używać ujemnych indeksów do odniesienia się do elementów od końca listy.

```python
lista = [10, 20, 30, 40, 50]
pierwszy_element = lista[0]  # 10
ostatni_element = lista[-1]  # 50
fragment = lista[1:4]  # [20, 30, 40]
```

## Modyfikacja List

Listy w Pythonie są zmienne, co oznacza, że można zmieniać ich zawartość po utworzeniu.

1. **Dodawanie elementów**
   - `append()`: Dodaje element na końcu listy.
   - `insert()`: Wstawia element na określonej pozycji.
   - `extend()`: Rozszerza listę, dodając elementy z innej kolekcji.

   ```python
   lista = [1, 2, 3]
   lista.append(4)  # [1, 2, 3, 4]
   lista.insert(1, 1.5)  # [1, 1.5, 2, 3, 4]
   lista.extend([5, 6])  # [1, 1.5, 2, 3, 4, 5, 6]
   ```

2. **Usuwanie elementów**
   - `remove()`: Usuwa pierwsze wystąpienie danego elementu.
   - `pop()`: Usuwa element na określonej pozycji (domyślnie ostatni) i zwraca go.
   - `clear()`: Usuwa wszystkie elementy z listy.

   ```python
   lista = [1, 2, 3, 4, 5]
   lista.remove(3)  # [1, 2, 4, 5]
   ostatni = lista.pop()  # [1, 2, 4], ostatni = 5
   pierwszy = lista.pop(0)  # [2, 4], pierwszy = 1
   lista.clear()  # []
   ```

3. **Modyfikacja elementów**
   - Można bezpośrednio modyfikować elementy listy, przypisując nowe wartości do istniejących indeksów.

   ```python
   lista = [1, 2, 3]
   lista[1] = 10  # [1, 10, 3]
   ```

## Operacje na Listach

Listy wspierają różnorodne operacje, takie jak:

1. **Łączenie list (konkatenacja)**
   - Można łączyć dwie listy za pomocą operatora `+`.

   ```python
   lista1 = [1, 2, 3]
   lista2 = [4, 5, 6]
   lista3 = lista1 + lista2  # [1, 2, 3, 4, 5, 6]
   ```

2. **Powtarzanie list**
   - Można powtarzać elementy listy za pomocą operatora `*`.

   ```python
   lista = [1, 2, 3]
   powtorzona = lista * 3  # [1, 2, 3, 1, 2, 3, 1, 2, 3]
   ```

3. **Sprawdzanie przynależności**
   - Można sprawdzić, czy element znajduje się w liście za pomocą operatora `in`.

   ```python
   lista = [1, 2, 3, 4, 5]
   print(3 in lista)  # True
   print(6 in lista)  # False
   ```

4. **Długość listy**
   - Funkcja `len()` zwraca liczbę elementów w liście.

   ```python
   lista = [1, 2, 3]
   dlugosc = len(lista)  # 3
   ```

5. **Zliczanie wystąpień**
   - Metoda `count()` zwraca liczbę wystąpień danego elementu w liście.

   ```python
   lista = [1, 2, 2, 3, 4, 2]
   liczba_dwojek = lista.count(2)  # 3
   ```

6. **Znajdowanie indeksu**
   - Metoda `index()` zwraca pierwszy indeks danego elementu w liście.

   ```python
   lista = [1, 2, 3, 4, 5]
   indeks = lista.index(3)  # 2
   ```

## Sortowanie i odwracanie list

1. **Sortowanie listy**
   - Metoda `sort()` sortuje listę na miejscu.
   - Funkcja `sorted()` zwraca nową, posortowaną listę.

   ```python
   lista = [3, 1, 4, 2, 5]
   lista.sort()  # [1, 2, 3, 4, 5]
   lista = [3, 1, 4, 2, 5]
   posortowana = sorted(lista)  # [1, 2, 3, 4, 5]
   ```

2. **Odwracanie listy**
   - Metoda `reverse()` odwraca listę na miejscu.
   - Funkcja `reversed()` zwraca iterator odwróconej listy.

   ```python
   lista = [1, 2, 3, 4, 5]
   lista.reverse()  # [5, 4, 3, 2, 1]
   lista = [1, 2, 3, 4, 5]
   odwrócona = list(reversed(lista))  # [5, 4, 3, 2, 1]
   ```

## Mapa myśli

![Listy](../../assets/image/Typy%20dnych/Listy.png)

## Podsumowanie

Listy w Pythonie są wszechstronnymi i elastycznymi strukturami danych, które umożliwiają przechowywanie, manipulację i operacje na zbiorach danych. Dzięki swojej zmienności i szerokiej gamie dostępnych metod, listy są idealnym narzędziem do codziennych zadań programistycznych.
