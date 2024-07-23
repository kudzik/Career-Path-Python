# Kontrola Przepływu w Pythonie

## Wstęp

Kontrola przepływu w Pythonie pozwala na decydowanie, które części kodu zostaną wykonane, a które zostaną pominięte, na podstawie określonych warunków. Python oferuje różne struktury kontrolne, takie jak instrukcje warunkowe, pętle oraz instrukcje sterujące przepływem, które pomagają w pisaniu bardziej elastycznego i dynamicznego kodu.

## Instrukcje Warunkowe

1. **if**
   - Instrukcja `if` sprawdza, czy warunek jest prawdziwy i jeśli tak, wykonuje blok kodu.

   ```python
   x = 10
   if x > 5:
       print("x jest większe niż 5")
   ```

2. **elif**
   - Instrukcja `elif` (else if) sprawdza kolejny warunek, jeśli poprzedni warunek `if` był fałszywy.

   ```python
   x = 10
   if x > 10:
       print("x jest większe niż 10")
   elif x == 10:
       print("x jest równe 10")
   ```

3. **else**
   - Instrukcja `else` wykonuje blok kodu, jeśli wszystkie poprzednie warunki `if` i `elif` były fałszywe.

   ```python
   x = 5
   if x > 10:
       print("x jest większe niż 10")
   elif x == 10:
       print("x jest równe 10")
   else:
       print("x jest mniejsze niż 10")
   ```

## Pętle

1. **for**
   - Pętla `for` iteruje przez elementy sekwencji (takie jak lista, krotka, napis) lub innego iterowalnego obiektu.

   ```python
   lista = [1, 2, 3, 4, 5]
   for liczba in lista:
       print(liczba)
   ```

2. **range()**
   - Funkcja `range()` generuje sekwencję liczb, którą można użyć w pętli `for`.

   ```python
   for i in range(5):
       print(i)
   # Output: 0, 1, 2, 3, 4
   ```

3. **while**
   - Pętla `while` wykonuje blok kodu, dopóki warunek jest prawdziwy.

   ```python
   x = 0
   while x < 5:
       print(x)
       x += 1
   ```

## Instrukcje Sterujące Przepływem

1. **break**
   - Instrukcja `break` przerywa wykonywanie pętli i wychodzi z niej.

   ```python
   for i in range(10):
       if i == 5:
           break
       print(i)
   # Output: 0, 1, 2, 3, 4
   ```

2. **continue**
   - Instrukcja `continue` przerywa aktualną iterację pętli i przechodzi do następnej iteracji.

   ```python
   for i in range(10):
       if i % 2 == 0:
           continue
       print(i)
   # Output: 1, 3, 5, 7, 9
   ```

3. **pass**
   - Instrukcja `pass` jest pustą instrukcją, która jest używana jako wypełniacz w miejscach, gdzie składnia wymaga instrukcji, ale nie jest potrzebne żadne działanie.

   ```python
   for i in range(10):
       if i % 2 == 0:
           pass
       else:
           print(i)
   # Output: 1, 3, 5, 7, 9
   ```

4. **else w pętlach**
   - Blok `else` może być używany z pętlami `for` i `while`. Wykonuje się, gdy pętla zakończy się normalnie, bez użycia `break`.

   ```python
   for i in range(5):
       print(i)
   else:
       print("Pętla zakończona")
   # Output: 0, 1, 2, 3, 4, "Pętla zakończona"
   ```

## Przykłady Złożone

1. **Zagnieżdżone instrukcje warunkowe**
   - Można zagnieżdżać instrukcje `if`, `elif`, `else` w sobie nawzajem.

   ```python
   x = 10
   y = 20
   if x > 5:
       if y > 10:
           print("x > 5 i y > 10")
       else:
           print("x > 5 i y <= 10")
   else:
       print("x <= 5")
   ```

2. **Zagnieżdżone pętle**
   - Można zagnieżdżać pętle `for` i `while` w sobie nawzajem.

   ```python
   for i in range(3):
       for j in range(3):
           print(f"i={i}, j={j}")
   ```

## Mapa myśli

![Kontrola przepływu](../../assets/image/Kontrola%20przeplywu/Kontrola%20przeplywu.png)

## Podsumowanie

Kontrola przepływu w Pythonie umożliwia pisanie elastycznego i dynamicznego kodu, który reaguje na różne warunki i iteruje przez dane. Instrukcje warunkowe, pętle oraz instrukcje sterujące przepływem są kluczowymi narzędziami do zarządzania wykonywaniem kodu.
