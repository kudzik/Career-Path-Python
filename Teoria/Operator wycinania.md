# Operator wycinania w Pythonie

## Wstęp

Operator wycinania (ang. slicing) w Pythonie jest potężnym narzędziem, które umożliwia wybieranie części sekwencji, takich jak listy, krotki, napisy czy nawet tablice. Umożliwia szybkie i efektywne manipulowanie fragmentami danych.

## Podstawowa składnia

Operator wycinania używa notacji `start:stop:step` w nawiasach kwadratowych `[]`. Oto pełna składnia:

```python
sekwencja[start:stop:step]
```

- **start**: indeks początkowy (włącznie), od którego zaczyna się wycinanie.
- **stop**: indeks końcowy (wyłącznie), na którym kończy się wycinanie.
- **step**: krok, co ile elementów ma być wybrane.

## Przykłady

Rozważmy następującą listę:

```python
lista = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

### Wycinanie z domyślnymi wartościami

Jeśli pominiemy wartości `start`, `stop` lub `step`, Python użyje domyślnych wartości.

1. **Cała lista**:

   ```python
   lista[:]  # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
   ```

   Domyślnie `start = 0`, `stop = len(lista)`, `step = 1`.

2. **Od początku do konkretnego indeksu**:

   ```python
   lista[:5]  # [0, 1, 2, 3, 4]
   ```

   Domyślnie `start = 0`, `stop = 5`.

3. **Od konkretnego indeksu do końca**:

   ```python
   lista[5:]  # [5, 6, 7, 8, 9]
   ```

   Domyślnie `stop = len(lista)`.

4. **Co drugi element**:

   ```python
   lista[::2]  # [0, 2, 4, 6, 8]
   ```

   Domyślnie `start = 0`, `stop = len(lista)`, `step = 2`.

### Wycinanie z określonymi wartościami

1. **Fragment listy**:

   ```python
   lista[2:5]  # [2, 3, 4]
   ```

   Zaczyna od indeksu 2 (włącznie) i kończy na indeksie 5 (wyłącznie).

2. **Fragment listy z krokiem**:

   ```python
   lista[1:7:2]  # [1, 3, 5]
   ```

   Zaczyna od indeksu 1, kończy na 7, wybierając co drugi element.

### Wycinanie z ujemnymi indeksami

1. **Od końca listy**:

   ```python
   lista[-3:]  # [7, 8, 9]
   ```

   Zaczyna od trzeciego elementu od końca do końca listy.

2. **Fragment z ujemnymi indeksami**:

   ```python
   lista[-5:-2]  # [5, 6, 7]
   ```

   Zaczyna od piątego elementu od końca i kończy na drugim od końca.

### Odwracanie listy

Operator wycinania może być używany do odwracania sekwencji.

1. **Odwrócenie całej listy**:

   ```python
   lista[::-1]  # [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
   ```

   Użycie kroku `-1` powoduje odwrócenie listy.

2. **Odwrócenie fragmentu listy**:

   ```python
   lista[5:2:-1]  # [5, 4, 3]
   ```

   Odwraca fragment od indeksu 5 do indeksu 2.

### Wycinanie napisów

Operator wycinania działa również na napisach (łańcuchach znaków).

1. **Fragment napisu**:

   ```python
   napis = "Hello, World!"
   fragment = napis[7:12]  # "World"
   ```

2. **Co drugi znak**:

   ```python
   napis = "Hello, World!"
   fragment = napis[::2]  # "Hlo ol!"
   ```

3. **Odwrócenie napisu**:

   ```python
   napis = "Hello, World!"
   odwrócony = napis[::-1]  # "!dlroW ,olleH"
   ```

### Zastosowanie w praktyce

Wycinanie może być używane w różnych kontekstach, na przykład:

1. **Usuwanie elementu z listy**:

   ```python
   lista = [1, 2, 3, 4, 5]
   lista = lista[:2] + lista[3:]  # [1, 2, 4, 5]
   ```

2. **Tworzenie kopii listy**:

   ```python
   kopia = lista[:]  # kopia zawiera wszystkie elementy z lista
   ```

3. **Podzielenie listy na mniejsze fragmenty**:

   ```python
   fragment1 = lista[:len(lista)//2]  # pierwsza połowa listy
   fragment2 = lista[len(lista)//2:]  # druga połowa listy
   ```

### Podsumowanie

Operator wycinania w Pythonie jest bardzo wszechstronny i pozwala na łatwe i efektywne manipulowanie sekwencjami danych. Można go używać do wybierania fragmentów list, odwracania sekwencji, usuwania elementów i wielu innych operacji. Dzięki prostemu i czytelnemu notacji `start:stop:step`, wycinanie staje się jednym z najpotężniejszych narzędzi w arsenale programisty Pythona.

## Mapa myśli

![Mapa myśli](../assets/image/Operator%20wycinania%20w%20Pythonie.png)

## Zadania

[Operator wycinania w Pythonie - Zadania](//Zadania/Operator%20wycinania/Operator%20wycinania.ipynb)
