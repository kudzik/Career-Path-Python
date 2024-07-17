# Zbiory w Pythonie

## Wstęp

Zbiory w Pythonie są kolekcjami nieuporządkowanymi i nieindeksowanymi unikalnych elementów. Są bardzo przydatne, gdy chcemy przechowywać zestaw elementów bez duplikatów i wykonywać operacje matematyczne, takie jak suma, przecięcie czy różnica zbiorów.

## Tworzenie zbiorów

Zbiory mogą być tworzone za pomocą nawiasów klamrowych `{}` lub funkcji `set()`.

```python
# Tworzenie zbiorów
zbior1 = {1, 2, 3, 4, 5}
zbior2 = set([3, 4, 5, 6, 7])
```

## Główne cechy zbiorów

- **Nieuporządkowane**: Elementy w zbiorze nie mają określonej kolejności.
- **Unikalne**: Zbiór nie może zawierać duplikatów.

## Operacje na zbiorach

1. **Dodawanie elementów**
   - `add()`: Dodaje element do zbioru.

   ```python
   zbior = {1, 2, 3}
   zbior.add(4)
   # {1, 2, 3, 4}
   ```

2. **Usuwanie elementów**
   - `remove()`: Usuwa element ze zbioru. Generuje błąd, jeśli element nie istnieje.
   - `discard()`: Usuwa element ze zbioru. Nie generuje błędu, jeśli element nie istnieje.
   - `pop()`: Usuwa losowy element ze zbioru.
   - `clear()`: Usuwa wszystkie elementy ze zbioru.

   ```python
   zbior = {1, 2, 3, 4}
   zbior.remove(2)
   zbior.discard(3)
   zbior.pop()
   zbior.clear()
   # set()
   ```

3. **Operacje matematyczne**
   - **Suma (union)**: Łączy elementy z dwóch zbiorów.

     ```python
     zbior1 = {1, 2, 3}
     zbior2 = {3, 4, 5}
     suma = zbior1.union(zbior2)
     # {1, 2, 3, 4, 5}
     ```

   - **Przecięcie (intersection)**: Zwraca elementy wspólne dla dwóch zbiorów.

     ```python
     zbior1 = {1, 2, 3}
     zbior2 = {3, 4, 5}
     przeciecie = zbior1.intersection(zbior2)
     # {3}
     ```

   - **Różnica (difference)**: Zwraca elementy, które są w jednym zbiorze, ale nie ma ich w drugim.

     ```python
     zbior1 = {1, 2, 3}
     zbior2 = {3, 4, 5}
     roznica = zbior1.difference(zbior2)
     # {1, 2}
     ```

   - **Różnica symetryczna (symmetric_difference)**: Zwraca elementy, które są w jednym zbiorze lub w drugim, ale nie w obu.

     ```python
     zbior1 = {1, 2, 3}
     zbior2 = {3, 4, 5}
     roznica_sym = zbior1.symmetric_difference(zbior2)
     # {1, 2, 4, 5}
     ```

4. **Podzbiory i nadzbiory**
   - **issubset()**: Sprawdza, czy jeden zbiór jest podzbiorem drugiego.

     ```python
     zbior1 = {1, 2}
     zbior2 = {1, 2, 3}
     print(zbior1.issubset(zbior2))  # True
     ```

   - **issuperset()**: Sprawdza, czy jeden zbiór jest nadzbiorem drugiego.

     ```python
     zbior1 = {1, 2, 3}
     zbior2 = {1, 2}
     print(zbior1.issuperset(zbior2))  # True
     ```

5. **Kopiowanie zbiorów**
   - **copy()**: Tworzy płytką kopię zbioru.

     ```python
     zbior1 = {1, 2, 3}
     kopia_zbioru = zbior1.copy()
     ```

## Zbiory niemutowalne (frozenset)

Zbiory niemutowalne, znane jako `frozenset`, są jak zwykłe zbiory, ale nie można ich zmieniać po utworzeniu. Wszystkie operacje, które nie modyfikują zbioru, są dostępne dla `frozenset`.

```python
zbior_nie_mozna_zmienic = frozenset([1, 2, 3, 4, 5])
```

## Mapa myśli

![Zbiory](../../assets/image/Typy%20dnych/Zbiory.png)

## Podsumowanie

Zbiory w Pythonie są potężnym narzędziem do pracy z kolekcjami unikalnych elementów. Umożliwiają łatwe wykonywanie operacji matematycznych, takich jak suma, przecięcie czy różnica, a także oferują wsparcie dla operacji zbiorowych, takich jak sprawdzanie podzbiorów czy nadzbiorów. Dodatkowo, `frozenset` pozwala na tworzenie niemutowalnych zbiorów, które mogą być używane jako elementy innych zbiorów lub klucze w słownikach.
