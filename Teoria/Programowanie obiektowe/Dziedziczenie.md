# Dziedziczenie w Pythonie

## Wstęp

Dziedziczenie jest jednym z fundamentalnych konceptów programowania obiektowego. Pozwala tworzyć nowe klasy na bazie już istniejących, co umożliwia ponowne wykorzystanie kodu i tworzenie hierarchii klas. Dzięki dziedziczeniu możemy definiować klasy ogólne (bazowe) i bardziej szczegółowe (pochodne).

## Szczegółowe omówienie tematu

### Podstawy dziedziczenia

Dziedziczenie pozwala nowej klasie (klasa pochodna) odziedziczyć atrybuty i metody klasy istniejącej (klasa bazowa). Klasa pochodna może także nadpisywać metody klasy bazowej oraz dodawać nowe atrybuty i metody.

#### Składnia

```python
class KlasaBazowa:
    # Atrybuty i metody klasy bazowej

class KlasaPochodna(KlasaBazowa):
    # Atrybuty i metody klasy pochodnej
```

### Przykład

Rozważmy przykład, w którym mamy klasę `Zwierze` (klasa bazowa) i klasy `Pies` oraz `Kot` (klasy pochodne):

```python
class Zwierze:
    def __init__(self, imie):
        self.imie = imie

    def dzwiek(self):
        return "Nieznany dźwięk"

class Pies(Zwierze):
    def dzwiek(self):
        return "Hau hau"

class Kot(Zwierze):
    def dzwiek(self):
        return "Miau"

# Tworzenie obiektów
pies = Pies("Reksio")
kot = Kot("Mruczek")

print(f"Pies {pies.imie} mówi: {pies.dzwiek()}")
print(f"Kot {kot.imie} mówi: {kot.dzwiek()}")
```

### Nadpisywanie metod

Klasa pochodna może nadpisywać metody klasy bazowej, aby dostosować ich działanie do swoich potrzeb. W powyższym przykładzie metoda `dzwiek` została nadpisana w klasach `Pies` i `Kot`.

### Wywoływanie metod klasy bazowej

Jeśli chcemy wywołać metodę klasy bazowej z klasy pochodnej, możemy użyć funkcji `super()`:

```python
class Zwierze:
    def __init__(self, imie):
        self.imie = imie

    def przedstaw_sie(self):
        return f"Jestem zwierzęciem o imieniu {self.imie}"

class Pies(Zwierze):
    def __init__(self, imie, rasa):
        super().__init__(imie)
        self.rasa = rasa

    def przedstaw_sie(self):
        return f"Jestem psem rasy {self.rasa} o imieniu {self.imie}"

# Tworzenie obiektu
pies = Pies("Reksio", "Labrador")
print(pies.przedstaw_sie())
```

### Dziedziczenie wielokrotne

Python wspiera dziedziczenie wielokrotne, co oznacza, że klasa może dziedziczyć od więcej niż jednej klasy bazowej. Oto przykład:

```python
class A:
    def metoda_a(self):
        return "Metoda A"

class B:
    def metoda_b(self):
        return "Metoda B"

class C(A, B):
    pass

# Tworzenie obiektu
c = C()
print(c.metoda_a())
print(c.metoda_b())
```

### Hierarchia klas

Dziedziczenie pozwala tworzyć złożone hierarchie klas, gdzie klasy pochodne mogą dziedziczyć od innych klas pochodnych, tworząc drzewo dziedziczenia.

## Podsumowanie

Dziedziczenie jest potężnym mechanizmem programowania obiektowego, który umożliwia tworzenie bardziej modularnego i elastycznego kodu. Dzięki dziedziczeniu możemy ponownie wykorzystywać istniejący kod, nadpisywać i rozszerzać funkcjonalności oraz tworzyć złożone hierarchie klas.
