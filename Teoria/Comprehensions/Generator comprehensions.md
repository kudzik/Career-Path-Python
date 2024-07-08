# Generator Comprehensions (Wyrażenia Generujące)

## Wstęp

Generator comprehensions to zwięzły sposób na tworzenie generatorów w Pythonie. Pozwalają one na leniwe generowanie wartości, co oznacza, że wartości są tworzone na bieżąco, gdy są potrzebne, zamiast przechowywać je wszystkie w pamięci. Są podobne do wyrażeń listowych (list comprehensions), ale używają nawiasów okrągłych `()` zamiast kwadratowych `[]`.

## Składnia

Podstawowa składnia wyrażeń generujących jest następująca:

```python
(wyrażenie for element in iterowalny if warunek)
```

- **wyrażenie**: Operacja lub przekształcenie, które ma być zastosowane do każdego elementu.
- **element**: Bieżący element z iterowalnego obiektu.
- **iterowalny**: Obiekt, który można iterować (np. lista, zbiór, słownik, zakres).
- **warunek**: (opcjonalne) Filtr, który określa, które elementy mają być uwzględnione.

## Przykłady

**Podstawowy przykład:**

Tworzenie generatora kwadratów liczb od 0 do 9:

```python
squares = (x * x for x in range(10))

for square in squares:
    print(square)
```

**Filtrowanie elementów:**

Tworzenie generatora liczb parzystych od 0 do 9:

```python
evens = (x for x in range(10) if x % 2 == 0)

for even in evens:
    print(even)
```

**Przekształcanie elementów:**

Tworzenie generatora długości słów w liście:

```python
words = ["Python", "is", "awesome"]
lengths = (len(word) for word in words)

for length in lengths:
    print(length)
```

**Zastosowanie z funkcjami:**

Użycie generatora do obliczenia sumy kwadratów liczb od 0 do 9:

```python
sum_of_squares = sum(x * x for x in range(10))
print(sum_of_squares)  # Output: 285
```

**Łączenie łańcuchów znaków:**

Tworzenie generatora łańcuchów znaków i łączenie ich w jeden łańcuch:

```python
words = ["Hello", "World", "Python", "is", "awesome"]
sentence = ' '.join(word.upper() for word in words)
print(sentence)  # Output: HELLO WORLD PYTHON IS AWESOME
```

## Zastosowania praktyczne

**Generowanie nieskończonych sekwencji:**

Tworzenie nieskończonej sekwencji liczb:

```python
def infinite_sequence():
    num = 0
    while True:
        yield num
        num += 1

gen = infinite_sequence()

for i in range(10):
    print(next(gen))
```

**Tworzenie dużych zbiorów danych:**

Leniwe generowanie dużych zbiorów danych bez przechowywania ich wszystkich w pamięci:

```python
large_data = (x * x for x in range(1000000))

# Użycie generatora w innej funkcji
def process_data(data):
    for value in data:
        if value % 2 == 0:
            yield value

processed_data = process_data(large_data)
```

## Zalety wyrażeń generujących

- **Efektywność pamięci**: Wyrażenia generujące nie przechowują wszystkich wartości w pamięci, co jest korzystne przy pracy z dużymi zestawami danych.
- **Czytelność**: Są zwięzłe i czytelne, co ułatwia pisanie i utrzymanie kodu.
- **Leniwe generowanie**: Generują wartości na bieżąco, co pozwala na przetwarzanie danych w czasie rzeczywistym.

## Ograniczenia wyrażeń generujących

- **Jednorazowe użycie**: Wyrażenie generujące można przechodzić tylko raz. Jeśli spróbujemy przejść je ponownie, nie zwróci żadnych wartości.
- **Brak możliwości indeksowania**: W przeciwieństwie do list, wyrażenia generujące nie wspierają indeksowania ani wycinania (slicing).

## Mapa myśli

![Generator Comprehensions](../../assets/image/Comprehensions/Generator%20Comprehensions.png)

## Podsumowanie

Generator comprehensions są potężnym i efektywnym narzędziem w Pythonie, które umożliwia tworzenie generatorów w zwięzły sposób. Dzięki leniwemu generowaniu wartości są one idealnym rozwiązaniem do pracy z dużymi zestawami danych lub nieskończonymi sekwencjami.
