# Property, Gettery, Settery i Deletery w Pythonie

## Wstęp

W Pythonie `property` to mechanizm umożliwiający zarządzanie dostępem do atrybutów obiektów. Gettery i settery to metody, które umożliwiają odczytywanie i modyfikowanie wartości atrybutów, oferując kontrolę nad tym, jak te operacje są wykonywane. Deletery pozwalają na usuwanie atrybutów.

## Definiowanie Klasy z Property, Getterami, Setterami i Deleterami

### Krok 1: Definicja klasy `Samochod`

Zaczniemy od definicji klasy `Samochod`, która zawiera atrybuty `marka`, `model` i `rok`. Użyjemy property do zarządzania tymi atrybutami.

```python
class Samochod:
    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok
```

### Krok 2: Definiowanie Getterów i Setterów

Dodajemy gettery i settery dla atrybutów `marka`, `model` i `rok` wraz z walidacją.

```python
class Samochod:
    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok

    @property
    def marka(self):
        return self._marka

    @marka.setter
    def marka(self, value):
        if isinstance(value, str):
            self._marka = value
        else:
            raise ValueError("Marka musi być napisem")

    @property
    def model(self):
        return self._model

    @model.setter
    def model(self, value):
        if isinstance(value, str):
            self._model = value
        else:
            raise ValueError("Model musi być napisem")

    @property
    def rok(self):
        return self._rok

    @rok.setter
    def rok(self, value):
        if isinstance(value, int) and value > 1885:
            self._rok = value
        else:
            raise ValueError("Rok musi być liczbą całkowitą większą niż 1885")
```

### Krok 3: Dodanie Deleterów

Dodajemy deletery, które umożliwiają usuwanie atrybutów.

```python
class Samochod:
    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok

    @property
    def marka(self):
        return self._marka

    @marka.setter
    def marka(self, value):
        if isinstance(value, str):
            self._marka = value
        else:
            raise ValueError("Marka musi być napisem")

    @marka.deleter
    def marka(self):
        del self._marka

    @property
    def model(self):
        return self._model

    @model.setter
    def model(self, value):
        if isinstance(value, str):
            self._model = value
        else:
            raise ValueError("Model musi być napisem")

    @model.deleter
    def model(self):
        del self._model

    @property
    def rok(self):
        return self._rok

    @rok.setter
    def rok(self, value):
        if isinstance(value, int) and value > 1885:
            self._rok = value
        else:
            raise ValueError("Rok musi być liczbą całkowitą większą niż 1885")

    @rok.deleter
    def rok(self):
        del self._rok
```

## Pełny Kod z Wyjaśnieniem

```python
class Samochod:
    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok

    @property
    def marka(self):
        return self._marka

    @marka.setter
    def marka(self, value):
        if isinstance(value, str):
            self._marka = value
        else:
            raise ValueError("Marka musi być napisem")

    @marka.deleter
    def marka(self):
        del self._marka

    @property
    def model(self):
        return self._model

    @model.setter
    def model(self, value):
        if isinstance(value, str):
            self._model = value
        else:
            raise ValueError("Model musi być napisem")

    @model.deleter
    def model(self):
        del self._model

    @property
    def rok(self):
        return self._rok

    @rok.setter
    def rok(self, value):
        if isinstance(value, int) and value > 1885:
            self._rok = value
        else:
            raise ValueError("Rok musi być liczbą całkowitą większą niż 1885")

    @rok.deleter
    def rok(self):
        del self._rok

# Tworzenie obiektu klasy Samochod z poprawną walidacją
auto = Samochod("Toyota", "Corolla", 2020)
print(auto.marka)  # Output: Toyota
print(auto.model)  # Output: Corolla
print(auto.rok)    # Output: 2020

# Ustawianie atrybutów za pomocą setterów
auto.marka = "Honda"
auto.model = "Civic"
auto.rok = 2021

print(auto.marka)  # Output: Honda
print(auto.model)  # Output: Civic
print(auto.rok)    # Output: 2021

# Usuwanie atrybutów za pomocą deleterów
del auto.marka
del auto.model
del auto.rok

# Próba dostępu do usuniętych atrybutów spowoduje błąd
try:
    print(auto.marka)
except AttributeError as e:
    print(e)  # Output: 'Samochod' object has no attribute '_marka'

try:
    print(auto.model)
except AttributeError as e:
    print(e)  # Output: 'Samochod' object has no attribute '_model'

try:
    print(auto.rok)
except AttributeError as e:
    print(e)  # Output: 'Samochod' object has no attribute '_rok'
```

## Podsumowanie

- **@property**: Umożliwia zdefiniowanie metody, która będzie działać jak getter.
- **@property.setter**: Umożliwia zdefiniowanie metody, która będzie działać jak setter, z walidacją danych.
- **@property.deleter**: Umożliwia zdefiniowanie metody, która będzie działać jak deleter, umożliwiając usuwanie atrybutów.
