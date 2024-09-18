# Klasy Abstrakcyjne w Pythonie

## Wstęp

Klasy abstrakcyjne są szczególnym rodzajem klas, które nie mogą być instancjonowane bezpośrednio. Służą one jako "szablony" dla innych klas i definiują wspólne interfejsy oraz podstawowe metody, które muszą być zaimplementowane w klasach pochodnych. W Pythonie do tworzenia klas abstrakcyjnych używamy modułu `abc` (Abstract Base Classes).

## Szczegółowe omówienie tematu

### Podstawy klas abstrakcyjnych

Klasa abstrakcyjna może zawierać zarówno zaimplementowane metody, jak i metody abstrakcyjne, które muszą być zdefiniowane w klasach pochodnych. Aby zdefiniować klasę abstrakcyjną, należy:

1. Importować moduł `abc`.
2. Dziedziczyć po `ABC` (Abstract Base Class).
3. Deklarować metody abstrakcyjne za pomocą dekoratora `@abstractmethod`.

### Przykład klasy abstrakcyjnej

Rozważmy przykład klasy abstrakcyjnej `Zwierze`, która definiuje metody `dzwiek` oraz `ruch`, które muszą być zaimplementowane w klasach pochodnych:

```python
from abc import ABC, abstractmethod

class Zwierze(ABC):
    @abstractmethod
    def dzwiek(self):
        pass

    @abstractmethod
    def ruch(self):
        pass

class Pies(Zwierze):
    def dzwiek(self):
        return "Hau hau"

    def ruch(self):
        return "Biega"

class Kot(Zwierze):
    def dzwiek(self):
        return "Miau"

    def ruch(self):
        return "Chodzi cicho"

# Tworzenie obiektów
pies = Pies()
kot = Kot()

print(pies.dzwiek())
print(kot.ruch())
```

### Ważne aspekty klas abstrakcyjnych

- **Nie można instancjonować klas abstrakcyjnych**: Próba stworzenia obiektu z klasy abstrakcyjnej bez implementacji wszystkich metod abstrakcyjnych w klasie pochodnej spowoduje błąd.

```python
try:
    zwierze = Zwierze()
except TypeError as e:
    print(e)  # 'Can't instantiate abstract class Zwierze with abstract methods dzwiek, ruch'
```

- **Klasy pochodne muszą implementować wszystkie metody abstrakcyjne**: Klasy pochodne muszą dostarczyć implementacje dla wszystkich metod oznaczonych jako abstrakcyjne w klasie bazowej.

### Rozszerzanie klas abstrakcyjnych

Klasy abstrakcyjne mogą również zawierać metody nieabstrakcyjne, które dostarczają podstawową implementację, która może być rozszerzana przez klasy pochodne.

```python
from abc import ABC, abstractmethod

class Zwierze(ABC):
    @abstractmethod
    def dzwiek(self):
        pass

    def przedstaw_sie(self):
        return "Jestem zwierzęciem"

class Pies(Zwierze):
    def dzwiek(self):
        return "Hau hau"

pies = Pies()
print(pies.przedstaw_sie())  # 'Jestem zwierzęciem'
print(pies.dzwiek())  # 'Hau hau'
```

### Zastosowanie klas abstrakcyjnych

- **Definiowanie interfejsów**: Klasy abstrakcyjne definiują interfejsy, które muszą być zaimplementowane przez klasy pochodne.
- **Unifikacja kodu**: Umożliwiają tworzenie hierarchii klas, które dzielą wspólne metody i atrybuty.
- **Zapewnienie spójności**: Gwarantują, że wszystkie klasy pochodne będą miały zdefiniowane pewne metody, co zwiększa spójność kodu.

## Podsumowanie

Klasy abstrakcyjne w Pythonie są użyteczne do definiowania szablonów dla klas pochodnych i zapewnienia, że pewne metody będą zaimplementowane w każdej klasie pochodnej. Dzięki nim kod staje się bardziej modularny, spójny i łatwiejszy do utrzymania.
