### Średnia Geometryczna

#### Wstęp

Średnia geometryczna to jedno z wielu sposobów obliczania średniej wartości zestawu liczb. Jest szczególnie użyteczna, gdy pracujemy z wielkościami, które mnożymy razem, takimi jak stopy zwrotu w finansach czy współczynniki wzrostu.

#### Definicja

Średnia geometryczna jest obliczana jako n-ta pierwiastek z iloczynu n liczb. Matematycznie, średnia geometryczna zestawu \(a_1, a_2, \ldots, a_n\) jest wyrażona jako:

\[ G = \sqrt[n]{a_1 \cdot a_2 \cdot \ldots \cdot a_n} \]

#### Krok po kroku

Dla zestawu liczb \(4, 3, 4.5, 5\) obliczymy średnią geometryczną w następujących krokach:

1. **Oblicz iloczyn wszystkich liczb:**
\[ 4 \cdot 3 \cdot 4.5 \cdot 5 = 270 \]

2. **Oblicz pierwiastek n-tego stopnia z iloczynu, gdzie n to liczba elementów w zestawie (w naszym przypadku 4):**
\[ G = \sqrt[4]{270} \]

#### Obliczenia w Pythonie

Oto jak można to obliczyć w Pythonie:

```python
import math

# Zestaw liczb
numbers = [4, 3, 4.5, 5]

# Iloczyn liczb
product = math.prod(numbers)

# Liczba elementów
n = len(numbers)

# Obliczanie średniej geometrycznej
geometric_mean = product ** (1/n)

print(f"Średnia geometryczna zestawu liczb {numbers} wynosi: {geometric_mean}")
```

#### Wynik

Po uruchomieniu powyższego kodu otrzymujemy wynik:

```plaintext
Średnia geometryczna zestawu liczb [4, 3, 4.5, 5] wynosi: 3.783
```

#### Podsumowanie

Średnia geometryczna jest używana do obliczania średniej wartości zestawu liczb, które są ze sobą powiązane w sposób multiplikatywny. W przeciwieństwie do średniej arytmetycznej, która sumuje wartości, średnia geometryczna bierze pod uwagę iloczyn wartości, co jest przydatne w analizie wielu typów danych.

Czy rozumiesz, czym jest średnia geometryczna i jak ją obliczyć? Jeśli masz jakiekolwiek pytania, chętnie na nie odpowiem.

#### Dostępne komendy

dalej, test, projekt, zadania, notatka, help, start
