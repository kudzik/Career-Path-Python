# Wyjasnienia kodu

## commit()

**Zrozumienie transakcji**

W SQLite3, podobnie jak w wielu innych systemach baz danych, zmiany wprowadzane do bazy danych są grupowane w tzw. **transakcje**. Transakcja to logiczna jednostka pracy, która zapewnia, że wszystkie zmiany zostaną wykonane razem lub żadna z nich nie zostanie wykonana w przypadku wystąpienia błędu. To pomaga zachować spójność danych w bazie.

**Rola `commit()`**

Metoda `commit()` służy do **zatwierdzenia** (zapisania) wszystkich zmian dokonanych w ramach bieżącej transakcji. Dopiero po wywołaniu `commit()` zmiany te stają się trwałe i widoczne dla innych użytkowników lub aplikacji korzystających z tej samej bazy danych.

**Dlaczego `commit()` jest ważny**

* **Trwałość danych:** Bez wywołania `commit()` zmiany wprowadzone do bazy danych pozostają w stanie tymczasowym. Jeśli program zakończy się nieoczekiwanie lub wystąpi błąd, te zmiany zostaną utracone. `commit()` zapewnia, że dane zostaną zapisane na dysku i będą dostępne nawet po ponownym uruchomieniu programu.
* **Izolacja transakcji:** Transakcje zapewniają, że różne operacje na bazie danych nie będą się wzajemnie zakłócać. Dopóki transakcja nie zostanie zatwierdzona za pomocą `commit()`, inne połączenia z bazą danych nie zobaczą wprowadzonych zmian. To pozwala uniknąć konfliktów i zapewnia spójność danych.
* **Wydajność:** SQLite3 optymalizuje operacje zapisu na dysku, grupując je w transakcje. Zamiast zapisywać każdą zmianę oddzielnie, co może być czasochłonne, SQLite3 czeka na `commit()`, aby zapisać wszystkie zmiany naraz, co zwiększa wydajność.

**Kiedy używać `commit()`**

* **Po zakończeniu serii zmian:** Zwykle wywołujesz `commit()` po zakończeniu wprowadzania wszystkich niezbędnych zmian w ramach jednej logicznej operacji. Na przykład, jeśli dodajesz nowego użytkownika do bazy danych, możesz wywołać `commit()` po dodaniu wszystkich jego danych.
* **W przypadku długich operacji:** Jeśli wykonujesz operacje, które mogą zająć dużo czasu, możesz rozważyć okresowe wywoływanie `commit()`, aby zapisać częściowe wyniki i uniknąć utraty wszystkich zmian w przypadku błędu.

**Podsumowanie**

Metoda `commit()` odgrywa kluczową rolę w zapewnieniu trwałości, izolacji i wydajności operacji na bazie danych SQLite3 w Pythonie. Pamiętaj o jej użyciu po wprowadzeniu zmian, które chcesz zachować na stałe.

**Czy chciałbyś teraz przećwiczyć stosowanie `commit()` w praktyce, na przykład poprzez dodanie nowych danych do naszej bazy danych "elearning"?**
