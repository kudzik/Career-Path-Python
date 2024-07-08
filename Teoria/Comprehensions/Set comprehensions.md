# Set Comprehensions (Wyrażenia Zbiorów)

## Wstęp

Set comprehensions to sposób tworzenia zbiorów w Pythonie, który jest podobny do list comprehensions, ale używa nawiasów klamrowych `{}` zamiast kwadratowych `[]`. Wyrażenia zbiorów pozwalają na tworzenie nowych zbiorów w zwięzły i czytelny sposób, z możliwością filtrowania i przekształcania elementów.

## Składnia

Podstawowa składnia wyrażeń zbiorów jest następująca:

```python
{wyrażenie for element in iterowalny if warunek}
```

- **wyrażenie**: Operacja lub przekształcenie, które ma być zastosowane do każdego elementu.
- **element**: Bieżący element z iterowalnego obiektu.
- **iterowalny**: Obiekt, który można iterować (np. lista, zbiór, słownik, zakres).
- **warunek**: (opcjonalne) Filtr, który określa, które elementy mają być uwzględnione.

## Przykłady

**Podstawowy przykład:**

Tworzenie zbioru kwadratów liczb od 0 do 9:

```python
squares = {x * x for x in range(10)}
print(squares)  # Output: {0, 1, 4, 9, 16, 25, 36, 49, 64, 81}
```

**Filtrowanie elementów:**

Tworzenie zbioru liczb parzystych od 0 do 9:

```python
evens = {x for x in range(10) if x % 2 == 0}
print(evens)  # Output: {0, 2, 4, 6, 8}
```

**Przekształcanie elementów:**

Tworzenie zbioru długości słów w liście:

```python
words = ["Python", "is", "awesome"]
lengths = {len(word) for word in words}
print(lengths)  # Output: {2, 6, 7}
```

**Usuwanie duplikatów z listy:**

Tworzenie zbioru unikalnych liczb z listy z duplikatami:

```python
numbers = [1, 2, 2, 3, 4, 4, 5]
unique_numbers = {num for num in numbers}
print(unique_numbers)  # Output: {1, 2, 3, 4, 5}
```

**Zmiana wielkości liter:**

Tworzenie zbioru słów w wersji wielkimi literami:

```python
words = ["hello", "world", "hello", "python"]
uppercase_words = {word.upper() for word in words}
print(uppercase_words)  # Output: {'HELLO', 'WORLD', 'PYTHON'}
```

## Zastosowania praktyczne

**Wyodrębnianie liter z tekstu:**

Tworzenie zbioru liter z łańcucha znaków:

```python
text = "hello world"
letters = {char for char in text if char.isalpha()}
print(letters)  # Output: {'d', 'e', 'h', 'l', 'o', 'r', 'w'}
```

**Filtrowanie i przekształcanie:**

Tworzenie zbioru kwadratów liczb parzystych od 0 do 9:

```python
even_squares = {x * x for x in range(10) if x % 2 == 0}
print(even_squares)  # Output: {0, 4, 16, 36, 64}
```

## Zalety wyrażeń zbiorów

- **Efektywność pamięci**: Wyrażenia zbiorów nie przechowują wszystkich wartości w pamięci, co jest korzystne przy pracy z dużymi zestawami danych.
- **Czytelność**: Są zwięzłe i czytelne, co ułatwia pisanie i utrzymanie kodu.
- **Eliminacja duplikatów**: Zbiory automatycznie eliminują duplikaty, co jest użyteczne przy tworzeniu kolekcji unikalnych wartości.

## Mapa myśli

![Set Comprehensions](../../assets/image/Comprehensions/Set%20Comprehensions.png)

### Podsumowani

Set comprehensions to potężne narzędzie w Pythonie, które pozwala na tworzenie zbiorów w zwięzły i czytelny sposób. Dzięki nim możemy w łatwy sposób iterować po elementach, przekształcać je oraz filtrować, co czyni kod bardziej przejrzystym i mniej podatnym na błędy.
