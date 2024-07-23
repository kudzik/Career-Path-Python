# Najczęściej używane metody do pracy z klasami i instancjami w Pythonie

## Metody do pracy z klasami

1. **Metoda `__new__`**
   - Tworzy nową instancję klasy. Jest to metoda statyczna, która przyjmuje klasę jako pierwszy argument.

   ```python
   class Samochod:
       def __new__(cls, *args, **kwargs):
           instance = super().__new__(cls)
           return instance
   ```

2. **Metoda `__init__`**
   - Inicjalizuje instancję klasy. Jest to metoda instancyjna, która przyjmuje instancję (self) jako pierwszy argument.

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok
   ```

3. **Metoda `__str__`**
   - Zwraca czytelną dla człowieka reprezentację obiektu. Jest wywoływana przez funkcję `str()` oraz przez `print()`.

   ```python
   class Samochod:
       def __str__(self):
           return f"{self.marka} {self.model} z {self.rok}"
   ```

4. **Metoda `__repr__`**
   - Zwraca oficjalną reprezentację obiektu, która powinna być możliwa do wykorzystania przez funkcję `eval()` do odtworzenia obiektu.

   ```python
   class Samochod:
       def __repr__(self):
           return f"Samochod('{self.marka}', '{self.model}', {self.rok})"
   ```

5. **Metoda `__eq__`**
   - Sprawdza, czy dwa obiekty są równe. Jest wywoływana przez operator `==`.

   ```python
   class Samochod:
       def __eq__(self, other):
           return self.marka == other.marka and self.model == other.model and self.rok == other.rok
   ```

6. **Metoda `__hash__`**
   - Zwraca wartość skrótu (hash) obiektu, umożliwiając użycie obiektu jako klucz w słowniku.

   ```python
   class Samochod:
       def __hash__(self):
           return hash((self.marka, self.model, self.rok))
   ```

7. **Metoda `__call__`**
   - Pozwala na wywołanie instancji klasy jak funkcji.

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok

       def __call__(self, *args, **kwargs):
           print(f"{self.marka} {self.model} jest wywoływany jako funkcja.")
   ```

8. **Metoda `__getitem__`**
   - Umożliwia dostęp do elementów obiektu za pomocą indeksów (jak w przypadku list lub słowników).

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok
           self.dane = [marka, model, rok]

       def __getitem__(self, index):
           return self.dane[index]
   ```

9. **Metoda `__setitem__`**
   - Umożliwia ustawianie wartości elementów obiektu za pomocą indeksów.

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok
           self.dane = [marka, model, rok]

       def __setitem__(self, index, value):
           self.dane[index] = value
   ```

10. **Metoda `__delitem__`**
    - Umożliwia usuwanie elementów obiektu za pomocą indeksów.

    ```python
    class Samochod:
        def __init__(self, marka, model, rok):
            self.marka = marka
            self.model = model
            self.rok = rok
            self.dane = [marka, model, rok]

        def __delitem__(self, index):
            del self.dane[index]
    ```

11. **Metoda `__len__`**
    - Zwraca długość obiektu. Jest wywoływana przez funkcję `len()`.

    ```python
    class Samochod:
        def __init__(self, marka, model, rok):
            self.marka = marka
            self.model = model
            self.rok = rok
            self.dane = [marka, model, rok]

        def __len__(self):
            return len(self.dane)
    ```

12. **Metoda `__iter__` i `__next__`**
    - Umożliwiają iterację po elementach obiektu.

    ```python
    class Samochod:
        def __init__(self, marka, model, rok):
            self.marka = marka
            self.model = model
            self.rok = rok
            self.dane = [marka, model, rok]
            self.index = 0

        def __iter__(self):
            return self

        def __next__(self):
            if self.index < len(self.dane):
                wynik = self.dane[self.index]
                self.index += 1
                return wynik
            else:
                raise StopIteration
    ```

### Najczęściej używane metody do pracy z instancjami

1. **Metoda `__init__`**
   - Inicjalizuje instancję klasy. Jest to metoda instancyjna, która przyjmuje instancję (self) jako pierwszy argument.

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok
   ```

2. **Metody instancji**
   - Są to metody, które operują na atrybutach instancji i mogą manipulować danymi obiektu.

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok

       def jedz(self):
           print(f"{self.marka} {self.model} jedzie.")
   ```

3. **Metody klasy (classmethod)**
   - Są to metody, które operują na atrybutach klasy. Używają dekoratora `@classmethod` i przyjmują klasę jako pierwszy argument.

   ```python
   class Samochod:
       liczba_kol = 4

       @classmethod
       def zmien_liczbe_kol(cls, liczba):
           cls.liczba_kol = liczba
   ```

4. **Metody statyczne (staticmethod)**
   - Są to metody, które nie operują na atrybutach instancji ani klasy. Używają dekoratora `@staticmethod`.

   ```python
   class Samochod:
       @staticmethod
       def przywitaj():
           print("Witaj w świecie samochodów!")
   ```

### Przykład Kompletny

Poniżej znajduje się przykład klasy `Samochod`, który wykorzystuje wszystkie powyższe metody:

```python
class Samochod:
    liczba_kol = 4  # Atrybut klasy

    def __new__(cls, *args, **kwargs):
        instance = super().__new__(cls)
        return instance

    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok
        self.przebieg = 0  # Dodatkowy atrybut instancji

    def __str__(self):
        return f"{self.marka} {self.model} z {self.rok}"

    def __repr__(self):
        return f"Samochod('{self.marka}', '{self.model}', {self.rok})"

    def __eq__(self, other):
        return self.marka == other.marka and self.model == other.model and self.rok == other.rok

    def __hash__(self):
        return hash((self.marka, self.model, self.rok))

    def __call__(self, *args, **kwargs):
        print(f"{self.marka} {self.model} jest wywoływany jako funkcja.")

    def __getitem__(self, index):
        return [self.marka, self.model, self.rok, self.przebieg][index]

    def __setitem__(self, index, value):
        dane = [self.marka, self.model, self.rok, self.przebieg]
        dane[index] = value
        self.marka, self.model, self.rok, self.przebieg = dane

    def __delitem__(self, index):
        dane = [self.marka, self.model, self.rok, self.przebieg]
        del dane[index]
        self.marka, self.model, self.rok, self.przebieg = dane

    def

 __len__(self):
        return 4  # Marka, model, rok, przebieg

    def __iter__(self):
        self.index = 0
        self.dane = [self.marka, self.model, self.rok, self.przebieg]
        return self

    def __next__(self):
        if self.index < len(self.dane):
            wynik = self.dane[self.index]
            self.index += 1
            return wynik
        else:
            raise StopIteration

    def jedz(self, km):
        self.przebieg += km
        print(f"{self.marka} {self.model} przejechał {km} km. Przebieg: {self.przebieg} km.")

    @classmethod
    def zmien_liczbe_kol(cls, liczba):
        cls.liczba_kol = liczba

    @staticmethod
    def przywitaj():
        print("Witaj w świecie samochodów!")


# Tworzenie obiektu klasy
auto = Samochod("Toyota", "Corolla", 2020)

# Korzystanie z metod obiektu
auto.jedz(150)  # Output: Toyota Corolla przejechał 150 km. Przebieg: 150 km.
print(auto)  # Output: Toyota Corolla z 2020
print(repr(auto))  # Output: Samochod('Toyota', 'Corolla', 2020)
print(auto == Samochod("Toyota", "Corolla", 2020))  # Output: True
auto()  # Output: Toyota Corolla jest wywoływany jako funkcja.
print(auto[0])  # Output: Toyota
auto[3] = 200
print(auto.przebieg)  # Output: 200
del auto[3]
print(len(auto))  # Output: 4

# Iterowanie przez obiekt
for dane in auto:
    print(dane)

# Metody klasy i statyczne
Samochod.zmien_liczbe_kol(6)
print(Samochod.liczba_kol)  # Output: 6
Samochod.przywitaj()  # Output: Witaj w świecie samochodów!
```

### Podsumowanie

Metody wbudowane, takie jak `__new__`, `__init__`, `__str__`, `__repr__`, `__eq__`, `__hash__`, `__call__`, `__getitem__`, `__setitem__`, `__delitem__`, `__len__`, `__iter__` i `__next__`, oraz metody instancji, klasy i statyczne, umożliwiają kontrolowanie różnych aspektów tworzenia i zachowania obiektów w Pythonie. Dzięki tym metodom można dostosować sposób, w jaki obiekty są tworzone, reprezentowane, porównywane, wywoływane, indeksowane, iterowane i wiele więcej.

## `isinstance()`

1. **Opis**
   - Funkcja `isinstance()` sprawdza, czy obiekt jest instancją określonej klasy lub jej podklasy.
   - Składnia: `isinstance(obj, class_or_tuple)`

2. **Przykład**

   ```python
   class Samochod:
       def __init__(self, marka, model, rok):
           self.marka = marka
           self.model = model
           self.rok = rok

   auto = Samochod("Toyota", "Corolla", 2020)
   print(isinstance(auto, Samochod))  # Output: True
   ```

## `type()`

1. **Opis**
   - Funkcja `type()` zwraca typ obiektu. Może być również używana do dynamicznego tworzenia nowych klas.
   - Składnia: `type(obj)` lub `type(name, bases, dict)`

2. **Przykład**

   ```python
   auto = Samochod("Toyota", "Corolla", 2020)
   print(type(auto))  # Output: <class '__main__.Samochod'>
   ```

## `issubclass()`

1. **Opis**
   - Funkcja `issubclass()` sprawdza, czy klasa jest podklasą innej klasy.
   - Składnia: `issubclass(subclass, superclass)`

2. **Przykład**

   ```python
   class ElektrycznySamochod(Samochod):
       pass

   print(issubclass(ElektrycznySamochod, Samochod))  # Output: True
   ```

## `hasattr()`

1. **Opis**
   - Funkcja `hasattr()` sprawdza, czy obiekt posiada określony atrybut.
   - Składnia: `hasattr(obj, attr)`

2. **Przykład**

   ```python
   auto = Samochod("Toyota", "Corolla", 2020)
   print(hasattr(auto, 'marka'))  # Output: True
   ```

## `getattr()`

1. **Opis**
   - Funkcja `getattr()` zwraca wartość atrybutu obiektu. Można również ustawić wartość domyślną, jeśli atrybut nie istnieje.
   - Składnia: `getattr(obj, attr, default=None)`

2. **Przykład**

   ```python
   auto = Samochod("Toyota", "Corolla", 2020)
   print(getattr(auto, 'model'))  # Output: Corolla
   print(getattr(auto, 'kolor', 'Nieznany'))  # Output: Nieznany
   ```

## `setattr()`

1. **Opis**
   - Funkcja `setattr()` ustawia wartość atrybutu obiektu.
   - Składnia: `setattr(obj, attr, value)`

2. **Przykład**

   ```python
   auto = Samochod("Toyota", "Corolla", 2020)
   setattr(auto, 'kolor', 'Czerwony')
   print(auto.kolor)  # Output: Czerwony
   ```

## `delattr()`

1. **Opis**
   - Funkcja `delattr()` usuwa atrybut obiektu.
   - Składnia: `delattr(obj, attr)`

2. **Przykład**

   ```python
   auto = Samochod("Toyota", "Corolla", 2020)
   setattr(auto, 'kolor', 'Czerwony')
   delattr(auto, 'kolor')
   print(hasattr(auto, 'kolor'))  # Output: False
   ```

## `dir()`

1. **Opis**
   - Funkcja `dir()` zwraca listę atrybutów i metod obiektu.
   - Składnia: `dir(obj)`

2. **Przykład**

   ```python
   auto = Samochod("Toyota", "Corolla", 2020)
   print(dir(auto))
   # Output: ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', 'jedz', 'marka', 'model', 'rok']
   ```

## Przykład Kompletny

Poniżej znajduje się przykład klasy `Samochod`, który wykorzystuje powyższe funkcje:

```python
class Samochod:
    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok

auto = Samochod("Toyota", "Corolla", 2020)

# isinstance()
print(isinstance(auto, Samochod))  # Output: True

# type()
print(type(auto))  # Output: <class '__main__.Samochod'>

# issubclass()
class ElektrycznySamochod(Samochod):
    pass

print(issubclass(ElektrycznySamochod, Samochod))  # Output: True

# hasattr()
print(hasattr(auto, 'marka'))  # Output: True

# getattr()
print(getattr(auto, 'model'))  # Output: Corolla
print(getattr(auto, 'kolor', 'Nieznany'))  # Output: Nieznany

# setattr()
setattr(auto, 'kolor', 'Czerwony')
print(auto.kolor)  # Output: Czerwony

# delattr()
delattr(auto, 'kolor')
print(hasattr(auto, 'kolor'))  # Output: False

# dir()
print(dir(auto))
# Output: ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', 'jedz', 'marka', 'model', 'rok']
```

## Podsumowanie

- **isinstance()**: Sprawdza, czy obiekt jest instancją określonej klasy lub jej podklasy.
- **type()**: Zwraca typ obiektu.
- **issubclass()**: Sprawdza, czy klasa jest podklasą innej klasy.
- **hasattr()**: Sprawdza, czy obiekt posiada określony atrybut.
- **getattr()**: Zwraca wartość atrybutu obiektu.
- **setattr()**: Ustawia wartość atrybutu obiektu.
- **delattr()**: Usuwa atrybut obiektu.
- **dir()**: Zwraca listę atrybutów i metod obiektu.
