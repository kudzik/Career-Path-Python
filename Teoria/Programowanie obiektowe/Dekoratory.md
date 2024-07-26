# Dekoratory w Pythonie

## Wstęp

Dekoratory w Pythonie to specjalne funkcje, które modyfikują zachowanie innych funkcji lub metod. Pozwalają one na dodawanie dodatkowej funkcjonalności do istniejących funkcji lub metod bez zmiany ich kodu. Dekoratory są często używane do logowania, sprawdzania uprawnień, mierzenia czasu wykonania, a także do modyfikowania wejść i wyjść funkcji.

## Składnia

Dekorator jest aplikowany do funkcji za pomocą symbolu `@` umieszczonego nad definicją funkcji.

```python
@dekorator
def funkcja():
    pass
```

## Jak Działają Dekoratory

Dekorator to funkcja, która przyjmuje inną funkcję jako argument i zwraca nową funkcję, która zazwyczaj "owija" oryginalną funkcję. Oto prosty przykład:

```python
def dekorator(funkcja):
    def nowa_funkcja():
        print("Coś przed funkcją")
        funkcja()
        print("Coś po funkcji")
    return nowa_funkcja

@dekorator
def przykladowa_funkcja():
    print("To jest przykładowa funkcja")

przykladowa_funkcja()
```

Wynik:
```
Coś przed funkcją
To jest przykładowa funkcja
Coś po funkcji
```

## Przykłady Użycia Dekoratorów

1. **Dekorator Logujący**

```python
def logowanie(funkcja):
    def wrapper(*args, **kwargs):
        print(f"Wywoływanie funkcji {funkcja.__name__} z argumentami {args} i {kwargs}")
        wynik = funkcja(*args, **kwargs)
        print(f"Funkcja {funkcja.__name__} zakończona. Wynik: {wynik}")
        return wynik
    return wrapper

@logowanie
def dodaj(x, y):
    return x + y

dodaj(3, 5)
```

Wynik:
```
Wywoływanie funkcji dodaj z argumentami (3, 5) i {}
Funkcja dodaj zakończona. Wynik: 8
```

2. **Dekorator Mierzący Czas Wykonania**

```python
import time

def mierz_czas(funkcja):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        wynik = funkcja(*args, **kwargs)
        end_time = time.time()
        print(f"Funkcja {funkcja.__name__} wykonana w czasie {end_time - start_time:.4f} sekund")
        return wynik
    return wrapper

@mierz_czas
def czekaj(seconds):
    time.sleep(seconds)

czekaj(2)
```

Wynik:
```
Funkcja czekaj wykonana w czasie 2.0003 sekund
```

3. **Dekorator Sprawdzający Uprawnienia**

```python
def sprawdz_uprawnienia(funkcja):
    def wrapper(*args, **kwargs):
        if kwargs.get('admin'):
            return funkcja(*args, **kwargs)
        else:
            print("Brak uprawnień do wykonania funkcji")
    return wrapper

@sprawdz_uprawnienia
def usun_dane():
    print("Dane zostały usunięte")

usun_dane(admin=True)  # Output: Dane zostały usunięte
usun_dane(admin=False)  # Output: Brak uprawnień do wykonania funkcji
```

## Dekoratory z Argumentami

Dekoratory mogą również przyjmować własne argumenty. Wymaga to zagnieżdżenia funkcji.

```python
def powiedz(przed, po):
    def dekorator(funkcja):
        def wrapper(*args, **kwargs):
            print(przed)
            wynik = funkcja(*args, **kwargs)
            print(po)
            return wynik
        return wrapper
    return dekorator

@powiedz("Zaczynamy", "Koniec")
def przyklad():
    print("Działa")

przyklad()
```

Wynik:
```
Zaczynamy
Działa
Koniec
```

## Dekoratory Klas

Dekoratory mogą być również stosowane do metod w klasach.

```python
def logowanie_metody(funkcja):
    def wrapper(self, *args, **kwargs):
        print(f"Wywoływanie metody {funkcja.__name__}")
        return funkcja(self, *args, **kwargs)
    return wrapper

class Samochod:
    @logowanie_metody
    def jedz(self):
        print("Samochód jedzie")

auto = Samochod()
auto.jedz()
```

Wynik:
```
Wywoływanie metody jedz
Samochód jedzie
```

## Podsumowanie

Dekoratory w Pythonie są potężnym narzędziem umożliwiającym modyfikowanie funkcji i metod bez zmiany ich kodu. Są one przydatne do logowania, sprawdzania uprawnień, mierzenia czasu wykonania oraz wielu innych zadań. Dzięki dekoratorom można pisać bardziej modularny i wielokrotnego użytku kod.

