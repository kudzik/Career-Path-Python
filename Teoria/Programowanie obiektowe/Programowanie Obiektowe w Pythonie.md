# Programowanie Obiektowe w Pythonie

## Wstęp

Programowanie obiektowe (ang. Object-Oriented Programming, OOP) to paradygmat programowania, który używa "obiektów" do reprezentowania danych i funkcjonalności. Python jest językiem, który wspiera programowanie obiektowe, co pozwala na tworzenie kodu, który jest bardziej modularny, czytelny i łatwy w utrzymaniu.

## Podstawowe Koncepcje

1. **Klasa**
   - Klasa to szablon lub wzór, na podstawie którego tworzone są obiekty. Definiuje ona dane (atrybuty) i operacje (metody) na tych danych.
   - Przykład:

     ```python
     class Samochod:
         def __init__(self, marka, model, rok):
             self.marka = marka
             self.model = model
             self.rok = rok

         def opis(self):
             return f'{self.marka} {self.model} z roku {self.rok}'
     ```

2. **Obiekt**
   - Obiekt to instancja klasy. Jest to konkretny egzemplarz klasy z własnymi wartościami atrybutów.
   - Przykład:

     ```python
     moj_samochod = Samochod('Toyota', 'Corolla', 2020)
     print(moj_samochod.opis())
     ```

3. **Atrybuty**
   - Atrybuty to zmienne, które przechowują dane obiektu. Mogą być różnego typu, np. liczby, napisy, listy.
   - Przykład:

     ```python
     class Samochod:
         def __init__(self, marka, model, rok):
             self.marka = marka
             self.model = model
             self.rok = rok
     ```

4. **Metody**
   - Metody to funkcje zdefiniowane w klasie, które operują na jej atrybutach. Pierwszym argumentem każdej metody jest zawsze `self`, który odnosi się do instancji klasy.
   - Przykład:

     ```python
     class Samochod:
         def opis(self):
             return f'{self.marka} {self.model} z roku {self.rok}'
     ```

5. **Dziedziczenie**
   - Dziedziczenie pozwala na tworzenie nowych klas na podstawie istniejących. Nowa klasa (klasa pochodna) dziedziczy atrybuty i metody klasy bazowej (rodzica).
   - Przykład:

     ```python
     class ElektrycznySamochod(Samochod):
         def __init__(self, marka, model, rok, zasieg):
             super().__init__(marka, model, rok)
             self.zasieg = zasieg

         def opis_zasiegu(self):
             return f'Ten samochód ma zasięg {self.zasieg} km'
     ```

6. **Polimorfizm**
   - Polimorfizm pozwala na używanie funkcji lub metod w różnych kontekstach. Obiekty różnych klas mogą być traktowane jako obiekty klasy bazowej.
   - Przykład:

     ```python
     class Zwierze:
         def dzwiek(self):
             pass

     class Pies(Zwierze):
         def dzwiek(self):
             return 'Hau Hau'

     class Kot(Zwierze):
         def dzwiek(self):
             return 'Miau'

     def wydaj_dzwiek(zwierze):
         print(zwierze.dzwiek())

     pies = Pies()
     kot = Kot()
     wydaj_dzwiek(pies)  # Hau Hau
     wydaj_dzwiek(kot)   # Miau
     ```

7. **Hermetyzacja**
   - Hermetyzacja (ang. encapsulation) polega na ukrywaniu wewnętrznych szczegółów implementacji klasy i udostępnianiu tylko tych części, które są niezbędne do interakcji z obiektem.
   - Przykład:

     ```python
     class KontoBankowe:
         def __init__(self, saldo):
             self.__saldo = saldo

         def wplata(self, kwota):
             self.__saldo += kwota

         def wyplata(self, kwota):
             if kwota <= self.__saldo:
                 self.__saldo -= kwota
             else:
                 print('Niewystarczające środki')

         def sprawdz_saldo(self):
             return self.__saldo

     konto = KontoBankowe(1000)
     konto.wplata(500)
     konto.wyplata(200)
     print(konto.sprawdz_saldo())  # 1300
     ```

## Mapa myśli

![Programowanie Obiektowe w Pythonie](../../assets/image/Programowanie%20obiektowe/Programowanie%20Obiektowe%20w%20Pythonie.png)

## Podsumowanie

Programowanie obiektowe w Pythonie pozwala na tworzenie kodu, który jest modularny, łatwy do utrzymania i czytelny. Dzięki używaniu klas i obiektów, programista może modelować rzeczywiste problemy w sposób naturalny i zrozumiały.
