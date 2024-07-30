# Metody Specjalne w Pythonie

## Wstęp

Metody specjalne w Pythonie, nazywane także "metodami dunder" (od "double underscore"), pozwalają definiować, jak obiekty klasy zachowują się w określonych sytuacjach. Ich nazwy są otoczone podwójnymi podkreśleniami, np. `__init__`. Dzięki nim możemy m.in. tworzyć obiekty, wyświetlać je, porównywać oraz zarządzać ich cyklem życia.

## Omówienie metod specjalnych

### 1. `__new__`

`__new__` to metoda odpowiedzialna za tworzenie nowej instancji klasy. Jest to pierwszy krok w procesie tworzenia obiektu. Rzadko jest nadpisywana, chyba że potrzebujemy pełnej kontroli nad procesem tworzenia obiektów.

```python
class MyClass:
    def __new__(cls, *args, **kwargs):
        print("Tworzenie nowej instancji")
        instance = super().__new__(cls)
        return instance

    def __init__(self, value):
        self.value = value

obj = MyClass(10)
```

### 2. `__init__`

`__init__` jest metodą inicjalizacyjną obiektu, wywoływaną zaraz po stworzeniu nowej instancji klasy. Służy do ustawienia początkowego stanu obiektu.

```python
class MyClass:
    def __init__(self, value):
        self.value = value
        print(f"Obiekt został zainicjalizowany z wartością: {value}")

obj = MyClass(10)
```

### 3. `__del__`

`__del__` jest metodą destruktora, wywoływaną tuż przed usunięciem obiektu przez garbage collector. Może być używana do czyszczenia zasobów, takich jak zamykanie plików czy połączeń sieciowych.

```python
class MyClass:
    def __del__(self):
        print("Obiekt został zniszczony")

obj = MyClass()
del obj
```

### 4. `__str__`

`__str__` zwraca czytelną reprezentację obiektu, używaną przez funkcję `print()` i `str()`. Jest to "przyjazny" dla użytkownika opis obiektu.

```python
class MyClass:
    def __init__(self, value):
        self.value = value

    def __str__(self):
        return f"Obiekt z wartością: {self.value}"

obj = MyClass(10)
print(obj)
```

### 5. `__repr__`

`__repr__` zwraca oficjalną reprezentację obiektu, która powinna być jednoznaczna i jak najdokładniej odzwierciedlać obiekt. Jest używana przez funkcję `repr()` i często w interaktywnych sesjach Pythona.

```python
class MyClass:
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        return f"MyClass({self.value})"

obj = MyClass(10)
print(repr(obj))
```

### 6. `__len__`

`__len__` jest wywoływana przez funkcję `len()` i powinna zwracać długość obiektu, np. liczba elementów w kolekcji.

```python
class MyCollection:
    def __init__(self, items):
        self.items = items

    def __len__(self):
        return len(self.items)

col = MyCollection([1, 2, 3, 4])
print(len(col))
```

### 7. `__bool__`

`__bool__` jest wywoływana przez funkcję `bool()` i powinna zwracać wartość True lub False, określającą, czy obiekt jest "prawdziwy" czy "fałszywy".

```python
class MyClass:
    def __init__(self, value):
        self.value = value

    def __bool__(self):
        return bool(self.value)

obj = MyClass(10)
print(bool(obj))  # True

empty_obj = MyClass(0)
print(bool(empty_obj))  # False
```

## Podsumowanie

Metody specjalne w Pythonie pozwalają na definiowanie zachowań obiektów w specyficznych sytuacjach, co umożliwia bardziej elastyczne i intuicyjne programowanie. Są one kluczowe dla pełnego zrozumienia i wykorzystania potencjału programowania obiektowego w Pythonie.
