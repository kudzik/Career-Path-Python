# Definiowanie Klasy z Dodatkowym Atrybutem

Dodanie atrybutu, który nie jest przekazywany w konstruktorze, można zrealizować poprzez bezpośrednie przypisanie go w ciele klasy lub w metodzie.

## Kroki do Definiowania Klasy z Dodatkowym Atrybutem

1. **Definicja klasy**
2. **Dodanie atrybutów do klasy w konstruktorze**
3. **Dodanie dodatkowego atrybutu w ciele klasy**
4. **Dodanie metod do klasy**
5. **Tworzenie obiektu klasy**

## Krok 1: Definicja Klasy

Aby zdefiniować klasę, używamy słowa kluczowego `class`, po którym następuje nazwa klasy.

```python
class Samochod:
    pass  # Miejsce na kod klasy
```

## Krok 2: Dodanie Atrybutów do Klasy w Konstruktorze

Atrybuty klasy są zmiennymi, które przechowują dane związane z obiektami klasy. Możemy zdefiniować atrybuty w metodzie `__init__`, która jest specjalną metodą inicjalizacyjną (konstruktorem). Ta metoda jest wywoływana, gdy tworzymy nowy obiekt klasy.

```python
class Samochod:
    def __init__(self, marka, model, rok):
        self.marka = marka  # Atrybut instancji
        self.model = model  # Atrybut instancji
        self.rok = rok  # Atrybut instancji
```

## Krok 3: Dodanie Dodatkowego Atrybutu w Ciele Klasy

Możemy dodać atrybut bezpośrednio w ciele klasy lub w metodzie, takiej jak `__init__` lub innej metodzie klasy.

```python
class Samochod:
    liczba_kol = 4  # Atrybut klasy, wspólny dla wszystkich instancji

    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok
        self.przebieg = 0  # Dodatkowy atrybut instancji
```

## Krok 4: Dodanie Metod do Klasy

Metody klasy są funkcjami zdefiniowanymi wewnątrz klasy, które operują na atrybutach instancji. Metody mogą wykonywać różne działania związane z obiektami klasy.

```python
class Samochod:
    liczba_kol = 4

    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok
        self.przebieg = 0

    def jedz(self, km):
        self.przebieg += km
        print(f"{self.marka} {self.model} przejechał {km} km. Przebieg: {self.przebieg} km.")

    def zatankuj(self):
        print(f"{self.marka} {self.model} jest tankowany.")
```

## Krok 5: Tworzenie Obiektu Klasy

Aby utworzyć obiekt klasy, wywołujemy klasę tak, jakby była funkcją, przekazując odpowiednie argumenty do metody `__init__`.

```python
auto = Samochod("Toyota", "Corolla", 2020)
```

## Kompletny Przykład

1. **Definiowanie klasy `Samochod`**
2. **Dodanie atrybutów i metod**
3. **Tworzenie obiektu klasy `Samochod` i korzystanie z jego metod oraz atrybutów**

```python
# Krok 1: Definiowanie klasy
class Samochod:
    liczba_kol = 4  # Atrybut klasy

    # Krok 2: Dodanie atrybutów do klasy w konstruktorze
    def __init__(self, marka, model, rok):
        self.marka = marka
        self.model = model
        self.rok = rok
        self.przebieg = 0  # Dodatkowy atrybut instancji

    # Krok 3: Dodanie metod do klasy
    def jedz(self, km):
        self.przebieg += km
        print(f"{self.marka} {self.model} przejechał {km} km. Przebieg: {self.przebieg} km.")

    def zatankuj(self):
        print(f"{self.marka} {self.model} jest tankowany.")

# Krok 4: Tworzenie obiektu klasy
auto = Samochod("Toyota", "Corolla", 2020)

# Korzystanie z metod obiektu
auto.jedz(150)  # Output: Toyota Corolla przejechał 150 km. Przebieg: 150 km.
auto.zatankuj()  # Output: Toyota Corolla jest tankowany.

# Dostęp do atrybutów
print(auto.marka)  # Output: Toyota
print(auto.model)  # Output: Corolla
print(auto.rok)  # Output: 2020
print(auto.przebieg)  # Output: 150
print(Samochod.liczba_kol)  # Output: 4
```

## Szczegółowe Wyjaśnienie

1. **Definicja klasy**:
   - `class Samochod`: Definiujemy nową klasę o nazwie `Samochod`.

2. **Konstruktor `__init__`**:
   - `def __init__(self, marka, model, rok)`: Definiujemy metodę inicjalizacyjną, która przyjmuje argumenty `marka`, `model` i `rok`.
   - `self.marka = marka`: Przypisujemy wartość `marka` do atrybutu instancji `self.marka`.
   - `self.model = model`: Przypisujemy wartość `model` do atrybutu instancji `self.model`.
   - `self.rok = rok`: Przypisujemy wartość `rok` do atrybutu instancji `self.rok`.
   - `self.przebieg = 0`: Dodajemy dodatkowy atrybut `przebieg` i ustawiamy go na 0.

3. **Definicja atrybutu klasy**:
   - `liczba_kol = 4`: Definiujemy atrybut klasy, który jest wspólny dla wszystkich instancji klasy `Samochod`.

4. **Definicja metod**:
   - `def jedz(self, km)`: Definiujemy metodę `jedz`, która przyjmuje argument `km` (kilometry) i zwiększa atrybut `przebieg`.
   - `def zatankuj(self)`: Definiujemy metodę `zatankuj`, która drukuje komunikat, że samochód jest tankowany.

5. **Tworzenie obiektu**:
   - `auto = Samochod("Toyota", "Corolla", 2020)`: Tworzymy nowy obiekt klasy `Samochod`, przekazując wartości "Toyota", "Corolla" i 2020 do konstruktora.

6. **Korzystanie z metod obiektu**:
   - `auto.jedz(150)`: Wywołujemy metodę `jedz` na obiekcie `auto`, przekazując wartość 150.
   - `auto.zatankuj()`: Wywołujemy metodę `zatankuj` na obiekcie `auto`.

7. **Dostęp do atrybutów**:
   - `print(auto.marka)`: Drukujemy wartość atrybutu `marka` obiektu `auto`.
   - `print(auto.model)`: Drukujemy wartość atrybutu `model` obiektu `auto`.
   - `print(auto.rok)`: Drukujemy wartość atrybutu `rok` obiektu `auto`.
   - `print(auto.przebieg)`: Drukujemy wartość atrybutu `przebieg` obiektu `auto`.
   - `print(Samochod.liczba_kol)`: Drukujemy wartość atrybutu klasy `liczba_kol`.

## Tworzenie obiektu klasy

```python
class Car:
    def __init__(self, color):
        self.color = color

blueCar = Car("blue")

# Tworzenie obiektu klasy "ręcznie"
redCar = Car.__new__(Car)
redCar.__init__("red")

print(blueCar.color)
print(redCar.color)
```

## Podsumowanie

Definiowanie klasy i tworzenie obiektów w Pythonie to kluczowe elementy programowania obiektowego. Klasa definiuje strukturę i zachowanie obiektów, a obiekty są instancjami tych klas. Dzięki klasom możemy modelować rzeczywiste obiekty i ich zachowanie w naszym kodzie.
