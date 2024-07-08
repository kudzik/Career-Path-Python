# Dictionary Comprehensions (Wyrażenia Słownikowe)

## Wstęp

Dictionary comprehensions to elegancki sposób tworzenia słowników w Pythonie. Pozwalają na tworzenie nowych słowników w zwięzły i czytelny sposób, z możliwością filtrowania i przekształcania elementów.

## Składnia

Podstawowa składnia wyrażeń słownikowych jest następująca:

```python
{klucz: wartość for element in iterowalny if warunek}
```

- **klucz**: Klucz nowego elementu słownika.
- **wartość**: Wartość przypisana do klucza.
- **element**: Bieżący element z iterowalnego obiektu.
- **iterowalny**: Obiekt, który można iterować (np. lista, zbiór, słownik, zakres).
- **warunek**: (opcjonalne) Filtr, który określa, które elementy mają być uwzględnione.

## Przykłady

**Podstawowy przykład:**

Tworzenie słownika kwadratów liczb od 0 do 9:

```python
squares = {x: x * x for x in range(10)}
print(squares)  # Output: {0: 0, 1: 1, 2: 4, 3: 9, 4: 16, 5: 25, 6: 36, 7: 49, 8: 64, 9: 81}
```

**Filtrowanie elementów:**

Tworzenie słownika kwadratów tylko dla liczb parzystych od 0 do 9:

```python
even_squares = {x: x * x for x in range(10) if x % 2 == 0}
print(even_squares)  # Output: {0: 0, 2: 4, 4: 16, 6: 36, 8: 64}
```

**Przekształcanie elementów:**

Tworzenie słownika długości słów w liście:

```python
words = ["Python", "is", "awesome"]
lengths = {word: len(word) for word in words}
print(lengths)  # Output: {'Python': 6, 'is': 2, 'awesome': 7}
```

**Zamiana kluczy i wartości:**

Odwracanie kluczy i wartości w słowniku:

```python
original = {'a': 1, 'b': 2, 'c': 3}
reversed_dict = {value: key for key, value in original.items()}
print(reversed_dict)  # Output: {1: 'a', 2: 'b', 3: 'c'}
```

**Tworzenie słownika z listy krotek:**

Tworzenie słownika z listy krotek:

```python
pairs = [('one', 1), ('two', 2), ('three', 3)]
num_dict = {key: value for key, value in pairs}
print(num_dict)  # Output: {'one': 1, 'two': 2, 'three': 3}
```

## Zastosowania praktyczne

**Filtrowanie słownika:**

Tworzenie słownika z oryginalnego słownika z tylko parzystymi wartościami:

```python
original = {'a': 1, 'b': 2, 'c': 3, 'd': 4}
filtered_dict = {key: value for key, value in original.items() if value % 2 == 0}
print(filtered_dict)  # Output: {'b': 2, 'd': 4}
```

**Zmiana formatowania danych:**

Tworzenie słownika z listy nazwisk i imion:

```python
names = ["John Smith", "Jane Doe", "Alice Johnson"]
name_dict = {name.split()[1]: name.split()[0] for name in names}
print(name_dict)  # Output: {'Smith': 'John', 'Doe': 'Jane', 'Johnson': 'Alice'}
```

## Zalety wyrażeń słownikowych

- **Efektywność pamięci**: Wyrażenia słownikowe pozwalają na tworzenie słowników bez konieczności przechowywania wszystkich wartości w pamięci.
- **Czytelność**: Są zwięzłe i czytelne, co ułatwia pisanie i utrzymanie kodu.
- **Elastyczność**: Umożliwiają łatwe filtrowanie i przekształcanie elementów podczas tworzenia słownika.

## Mapa myśli

![Dictionary Comprehensions](../../assets/image/Comprehensions/Dictionary%20Comprehensions.png)

## Podsumowanie

Dictionary comprehensions to potężne narzędzie w Pythonie, które pozwala na tworzenie słowników w zwięzły i czytelny sposób. Dzięki nim możemy w łatwy sposób iterować po elementach, przekształcać je oraz filtrować, co czyni kod bardziej przejrzystym i mniej podatnym na błędy.
