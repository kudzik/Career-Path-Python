# List Comprehensions (Wyrażenia Listowe)

## Wstęp

List comprehensions to elegancki sposób tworzenia list w Pythonie. Pozwalają one na tworzenie nowych list w zwięzły sposób, umożliwiając wykonywanie pętli, filtrowanie i przekształcanie elementów w jednej linii kodu.

## Składnia

Podstawowa składnia wyrażeń listowych jest następująca:

```python
[wyrażenie for element in iterowalny if warunek]
```

- **wyrażenie**: Operacja lub przekształcenie, które ma być zastosowane do każdego elementu.
- **element**: Bieżący element z iterowalnego obiektu.
- **iterowalny**: Obiekt, który można iterować (np. lista, zbiór, słownik, zakres).
- **warunek**: (opcjonalne) Filtr, który określa, które elementy mają być uwzględnione.

## Przykłady

**Podstawowy przykład:**

Tworzenie listy kwadratów liczb od 0 do 9:

```python
squares = [x * x for x in range(10)]
print(squares)  # Output: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

**Filtrowanie elementów:**

Tworzenie listy liczb parzystych od 0 do 9:

```python
evens = [x for x in range(10) if x % 2 == 0]
print(evens)  # Output: [0, 2, 4, 6, 8]
```

**Przekształcanie elementów:**

Tworzenie listy długości słów w liście:

```python
words = ["Python", "is", "awesome"]
lengths = [len(word) for word in words]
print(lengths)  # Output: [6, 2, 7]
```

**Zagnieżdżone pętle:**

Tworzenie listy par (i, j) dla i w zakresie 3 i j w zakresie 2:

```python
pairs = [(i, j) for i in range(3) for j in range(2)]
print(pairs)  # Output: [(0, 0), (0, 1), (1, 0), (1, 1), (2, 0), (2, 1)]
```

**Filtrowanie i przekształcanie:**

Tworzenie listy kwadratów liczb parzystych od 0 do 9:

```python
even_squares = [x * x for x in range(10) if x % 2 == 0]
print(even_squares)  # Output: [0, 4, 16, 36, 64]
```

## Zastosowania praktyczne

**Zmiana wielkości liter:**

Tworzenie listy słów w wersji wielkimi literami:

```python
words = ["hello", "world", "python"]
uppercase_words = [word.upper() for word in words]
print(uppercase_words)  # Output: ['HELLO', 'WORLD', 'PYTHON']
```

**Wyodrębnianie cyfr z tekstu:**

Tworzenie listy cyfr z łańcucha znaków:

```python
text = "a1b2c3d4"
digits = [char for char in text if char.isdigit()]
print(digits)  # Output: ['1', '2', '3', '4']
```

**Listy list:**

Spłaszczanie listy list do jednej listy:

```python
nested_list = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flat_list = [item for sublist in nested_list for item in sublist]
print(flat_list)  # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

## Mapa myśli

![List Comprehensions](../../assets/image/Comprehensions/List%20Comprehensions.png)

## Podsumowanie

List comprehensions to potężne narzędzie w Pythonie, które pozwala na tworzenie list w zwięzły i czytelny sposób. Dzięki nim możemy w łatwy sposób iterować po elementach, przekształcać je oraz filtrować, co czyni kod bardziej przejrzystym i mniej podatnym na błędy.
