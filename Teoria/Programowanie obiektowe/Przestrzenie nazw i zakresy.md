# Zakresy i Przestrzenie Nazw w Pythonie

## Wstęp

Zakresy i przestrzenie nazw to kluczowe pojęcia w Pythonie, które pomagają zrozumieć, jak zmienne są przechowywane i jak do nich można uzyskać dostęp. Pozwalają one na zarządzanie nazwami zmiennych i funkcji w sposób, który unika konfliktów nazw i ułatwia organizację kodu.

## Zakresy

Zakres (ang. scope) to kontekst, w którym zmienna jest zdefiniowana i w którym można się do niej odwoływać. W Pythonie istnieją cztery podstawowe zakresy:

1. **Zakres lokalny (Local)**
   - Dotyczy zmiennych zdefiniowanych wewnątrz funkcji. Są one dostępne tylko w obrębie tej funkcji.

   ```python
   def funkcja():
       lokalna_zmienna = 10
       print(lokalna_zmienna)

   funkcja()  # 10
   # print(lokalna_zmienna)  # Błąd: lokalna_zmienna nie jest zdefiniowana poza funkcją
   ```

2. **Zakres zamknięty (Enclosing)**
   - Dotyczy zmiennych zdefiniowanych w zewnętrznej funkcji (funkcja wewnątrz funkcji). Są one dostępne w funkcji wewnętrznej.

   ```python
   def zewnetrzna():
       zamknieta_zmienna = 20
       def wewnetrzna():
           print(zamknieta_zmienna)
       wewnetrzna()

   zewnetrzna()  # 20
   ```

3. **Zakres globalny (Global)**
   - Dotyczy zmiennych zdefiniowanych na najwyższym poziomie skryptu lub modułu. Są one dostępne wewnątrz funkcji tylko wtedy, gdy użyje się słowa kluczowego `global`.

   ```python
   globalna_zmienna = 30

   def funkcja():
       global globalna_zmienna
       globalna_zmienna = 40

   funkcja()
   print(globalna_zmienna)  # 40
   ```

4. **Zakres wbudowany (Built-in)**
   - Dotyczy wbudowanych nazw Python (np. funkcji `print`, `len`). Są one dostępne w dowolnym miejscu kodu.

   ```python
   print(len("Hello, World!"))  # 13
   ```

## Przestrzenie Nazw

Przestrzeń nazw (ang. namespace) to system, który pozwala na unikalne nazwanie każdej zmiennej. Python ma różne przestrzenie nazw:

1. **Lokalna przestrzeń nazw (Local Namespace)**
   - Przestrzeń nazw utworzona wewnątrz funkcji. Obejmuje wszystkie lokalne zmienne tej funkcji.

2. **Zamknięta przestrzeń nazw (Enclosing Namespace)**
   - Przestrzeń nazw funkcji zewnętrznej w przypadku zagnieżdżonych funkcji.

3. **Globalna przestrzeń nazw (Global Namespace)**
   - Przestrzeń nazw utworzona na najwyższym poziomie skryptu lub modułu. Obejmuje wszystkie zmienne globalne.

4. **Wbudowana przestrzeń nazw (Built-in Namespace)**
   - Przestrzeń nazw obejmująca wbudowane funkcje i wyjątki Pythona.

## Priorytety Zmiennych

Python przeszukuje zmienne w następującej kolejności, co jest określane akronimem LEGB:

- **Local** (Lokalny): Zmienna wewnątrz funkcji.
- **Enclosing** (Zamknięty): Zmienna w funkcji zewnętrznej.
- **Global** (Globalny): Zmienna na najwyższym poziomie skryptu.
- **Built-in** (Wbudowany): Zmienna wbudowana.

## Przykłady Zakresów i Przestrzeni Nazw

1. **Przykład zakresu lokalnego**

   ```python
   def funkcja():
       lokalna_zmienna = 10
       print(lokalna_zmienna)

   funkcja()  # 10
   # print(lokalna_zmienna)  # Błąd: lokalna_zmienna nie jest zdefiniowana poza funkcją
   ```

2. **Przykład zakresu zamkniętego**

   ```python
   def zewnetrzna():
       zamknieta_zmienna = 20
       def wewnetrzna():
           print(zamknieta_zmienna)
       wewnetrzna()

   zewnetrzna()  # 20
   ```

3. **Przykład zakresu globalnego**

   ```python
   globalna_zmienna = 30

   def funkcja():
       global globalna_zmienna
       globalna_zmienna = 40

   funkcja()
   print(globalna_zmienna)  # 40
   ```

4. **Przykład zakresu wbudowanego**

   ```python
   print(len("Hello, World!"))  # 13
   ```

## Podsumowanie

Zakresy i przestrzenie nazw w Pythonie są kluczowe do zrozumienia, jak zmienne są przechowywane i jak do nich można uzyskać dostęp. Znajomość tych pojęć pomaga unikać konfliktów nazw i pisanie bardziej zorganizowanego kodu.
