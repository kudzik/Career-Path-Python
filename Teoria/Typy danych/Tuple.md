# Krotki (tuples) w Pythonie

## Wstęp

Krotki w Pythonie są uporządkowanymi, niemutowalnymi kolekcjami, które mogą przechowywać różnorodne typy danych. Niemutowalność oznacza, że po utworzeniu krotki jej zawartość nie może być zmieniona. Dzięki temu krotki są szybsze w działaniu i bardziej wydajne w pamięci w porównaniu do list.

## Tworzenie krotek

Krotki mogą być tworzone za pomocą nawiasów okrągłych `()` lub bez użycia nawiasów.

```python
krotka1 = (1, 2, 3)
krotka2 = "jabłko", "banan", "wiśnia"
krotka3 = (1, "jabłko", 3.14, True)
krotka4 = tuple([4, 5, 6])  # użycie funkcji tuple()
```

## Dostęp do elementów

Podobnie jak w listach, do elementów krotek można uzyskiwać dostęp za pomocą indeksów. Indeksowanie zaczyna się od zera.

```python
krotka = (10, 20, 30, 40, 50)
pierwszy_element = krotka[0]  # 10
ostatni_element = krotka[-1]  # 50
fragment = krotka[1:4]  # (20, 30, 40)
```

## Niemutowalność

Po utworzeniu krotki nie można zmienić jej zawartości.

```python
krotka = (1, 2, 3)
# krotka[0] = 10  # Błąd: TypeError: 'tuple' object does not support item assignment
```

## Operacje na krotkach

1. **Łączenie krotek (konkatenacja)**
   - Można łączyć krotki za pomocą operatora `+`.

   ```python
   krotka1 = (1, 2, 3)
   krotka2 = (4, 5, 6)
   krotka3 = krotka1 + krotka2  # (1, 2, 3, 4, 5, 6)
   ```

2. **Powtarzanie krotek**
   - Można powtarzać krotki za pomocą operatora `*`.

   ```python
   krotka = (1, 2, 3)
   powtorzona = krotka * 3  # (1, 2, 3, 1, 2, 3, 1, 2, 3)
   ```

3. **Sprawdzanie przynależności**
   - Można sprawdzić, czy element znajduje się w krotce za pomocą operatora `in`.

   ```python
   krotka = (1, 2, 3, 4, 5)
   print(3 in krotka)  # True
   print(6 in krotka)  # False
   ```

4. **Długość krotki**
   - Funkcja `len()` zwraca liczbę elementów w krotce.

   ```python
   krotka = (1, 2, 3)
   dlugosc = len(krotka)  # 3
   ```

5. **Zliczanie wystąpień**
   - Metoda `count()` zwraca liczbę wystąpień danego elementu w krotce.

   ```python
   krotka = (1, 2, 2, 3, 4, 2)
   liczba_dwojek = krotka.count(2)  # 3
   ```

6. **Znajdowanie indeksu**
   - Metoda `index()` zwraca pierwszy indeks danego elementu w krotce.

   ```python
   krotka = (1, 2, 3, 4, 5)
   indeks = krotka.index(3)  # 2
   ```

## Wewnętrzne funkcje operujące na krotkach

1. **min() i max()**
   - Funkcje `min()` i `max()` zwracają najmniejszy i największy element w krotce.

   ```python
   krotka = (1, 2, 3, 4, 5)
   najmniejszy = min(krotka)  # 1
   najwiekszy = max(krotka)  # 5
   ```

2. **sum()**
   - Funkcja `sum()` zwraca sumę elementów w krotce.

   ```python
   krotka = (1, 2, 3, 4, 5)
   suma = sum(krotka)  # 15
   ```

3. **sorted()**
   - Funkcja `sorted()` zwraca posortowaną listę elementów z krotki.

   ```python
   krotka = (3, 1, 4, 2, 5)
   posortowane = sorted(krotka)  # [1, 2, 3, 4, 5]
   ```

## Zagnieżdżone krotki

Krotki mogą zawierać inne krotki jako elementy.

```python
krotka = (1, 2, (3, 4), 5)
```

## Rozpakowywanie krotek

Krotki mogą być rozpakowywane do oddzielnych zmiennych.

```python
krotka = (1, 2, 3)
a, b, c = krotka
# a = 1, b = 2, c = 3
```

## Mapa myśli

![Tuple](../../assets/image/Typy%20dnych/Krotki.png)

## Podsumowanie

Krotki w Pythonie są niezmiennymi, uporządkowanymi kolekcjami, które mogą przechowywać różnorodne typy danych. Są efektywne w użyciu, szczególnie gdy chcemy przechowywać dane, które nie powinny być zmieniane. Dzięki wielu wbudowanym funkcjom i metodom, krotki umożliwiają wykonywanie różnych operacji, takich jak łączenie, powtarzanie, sprawdzanie przynależności czy rozpakowywanie.
