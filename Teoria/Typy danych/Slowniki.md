# Słowniki w Pythonie

## Wstęp

Słowniki (ang. dictionaries) są nieuporządkowanymi kolekcjami par klucz-wartość. Wartości mogą być dowolnego typu, natomiast klucze muszą być typu niemutowalnego (takiego jak liczby, napisy, krotki). Słowniki są niezwykle wszechstronnymi strukturami danych, które pozwalają na szybkie wyszukiwanie, dodawanie i usuwanie elementów.

## Tworzenie słowników

Słowniki mogą być tworzone za pomocą nawiasów klamrowych `{}` z parami klucz-wartość oddzielonymi dwukropkiem, lub za pomocą funkcji `dict()`.

```python
slownik1 = {"klucz1": "wartość1", "klucz2": "wartość2"}
slownik2 = dict(klucz1="wartość1", klucz2="wartość2")
slownik3 = dict([("klucz1", "wartość1"), ("klucz2", "wartość2")])
```

## Dostęp do wartości

Wartości w słowniku można uzyskać za pomocą kluczy.

```python
slownik = {"imie": "Jan", "wiek": 25, "miasto": "Warszawa"}
imie = slownik["imie"]  # "Jan"
wiek = slownik.get("wiek")  # 25
```

## Dodawanie i modyfikacja elementów

Dodawanie nowych par klucz-wartość lub modyfikacja istniejących par jest prosta.

```python
slownik = {"imie": "Jan", "wiek": 25}
slownik["miasto"] = "Warszawa"  # Dodanie nowej pary
slownik["wiek"] = 26  # Modyfikacja istniejącej wartości
```

## Usuwanie elementów

Słowniki oferują kilka metod do usuwania elementów.

1. **Usuwanie za pomocą `del`**
   - Usuwa parę klucz-wartość z słownika.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   del slownik["wiek"]
   ```

2. **Usuwanie za pomocą `pop()`**
   - Usuwa element i zwraca jego wartość.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   wiek = slownik.pop("wiek")
   ```

3. **Usuwanie ostatniego elementu za pomocą `popitem()`**
   - Usuwa i zwraca ostatnią parę klucz-wartość.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   ostatni_element = slownik.popitem()
   ```

4. **Usuwanie wszystkich elementów za pomocą `clear()`**
   - Usuwa wszystkie elementy ze słownika.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   slownik.clear()
   ```

## Iterowanie przez słownik

Można iterować przez klucze, wartości lub pary klucz-wartość w słowniku.

```python
slownik = {"imie": "Jan", "wiek": 25, "miasto": "Warszawa"}

# Iterowanie przez klucze
for klucz in slownik:
    print(klucz)

# Iterowanie przez wartości
for wartosc in slownik.values():
    print(wartosc)

# Iterowanie przez pary klucz-wartość
for klucz, wartosc in slownik.items():
    print(f"Klucz: {klucz}, Wartość: {wartosc}")
```

## Metody słowników

Słowniki posiadają wiele wbudowanych metod, które umożliwiają efektywne operacje na danych.

1. **keys()**
   - Zwraca wszystkie klucze w słowniku.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   klucze = slownik.keys()
   ```

2. **values()**
   - Zwraca wszystkie wartości w słowniku.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   wartosci = slownik.values()
   ```

3. **items()**
   - Zwraca wszystkie pary klucz-wartość w słowniku.

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   pary = slownik.items()
   ```

4. **update()**
   - Aktualizuje słownik, dodając pary klucz-wartość z innego słownika.

   ```python
   slownik = {"imie": "Jan"}
   slownik.update({"wiek": 25, "miasto": "Warszawa"})
   ```

5. **setdefault()**
   - Zwraca wartość dla klucza, jeśli klucz istnieje. Jeśli klucz nie istnieje, dodaje go z określoną wartością domyślną.

   ```python
   slownik = {"imie": "Jan"}
   wiek = slownik.setdefault("wiek", 25)  # Dodaje "wiek" z wartością 25
   ```

## Mapa myśli

![Słowniki](../../assets/image/Typy%20dnych/Słowniki.png)

## Podsumowanie

Słowniki w Pythonie są potężnym narzędziem do przechowywania i manipulacji danymi w formie par klucz-wartość. Dzięki ich elastyczności i wydajności, są szeroko stosowane w różnych zastosowaniach, takich jak przechowywanie danych konfiguracyjnych, zliczanie wystąpień elementów, czy mapowanie identyfikatorów na wartości.

## Przydatne metody

### Przykład użycia metody `get()`

1. **Użycie metody `get()` z kluczem, który istnieje w słowniku**:

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   wartosc = slownik.get("imie")  # Zwraca "Jan"
   print(wartosc)  # Output: Jan
   ```

2. **Użycie metody `get()` z kluczem, który nie istnieje w słowniku, bez wartości domyślnej**:

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   wartosc = slownik.get("miasto")  # Zwraca None, ponieważ "miasto" nie istnieje w słowniku
   print(wartosc)  # Output: None
   ```

3. **Użycie metody `get()` z kluczem, który nie istnieje w słowniku, z wartością domyślną**:

   ```python
   slownik = {"imie": "Jan", "wiek": 25}
   wartosc = slownik.get("miasto", "Nieznane")  # Zwraca "Nieznane", ponieważ "miasto" nie istnieje w słowniku
   print(wartosc)  # Output: Nieznane
   ```

Metoda `get()` pozwala na bezpieczne odczytywanie wartości ze słownika bez ryzyka wystąpienia błędu `KeyError`. Jeśli klucz nie istnieje, metoda ta zwraca `None` lub wartość domyślną, którą możemy określić jako drugi argument.
