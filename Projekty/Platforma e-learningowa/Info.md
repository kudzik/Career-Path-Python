### Wymagania projektowe: Baza danych dla platformy e-learningowej

#### Nazwa bazy danych: `elearning`

#### Opis

Baza danych będzie obsługiwać platformę e-learningową, zarządzając informacjami na temat kursów, instruktorów oraz ścieżek uczenia. Baza będzie składała się z czterech tabel, każda z nich będzie pełnić określoną funkcję i będzie połączona z innymi tabelami za pomocą odpowiednich relacji.

#### Struktura bazy danych

1. **Tabela: `elearning_instructor`**
   - **Opis**: Przechowuje informacje o instruktorach.
   - **Relacja**: Relacja one-to-many z tabelą `elearning_course` – jeden instruktor może prowadzić wiele kursów.

2. **Tabela: `elearning_course`**
   - **Opis**: Przechowuje informacje o kursach dostępnych na platformie.
   - **Relacja**: Każdy kurs ma przypisanego instruktora z tabeli `elearning_instructor`. Relacja one-to-many: jeden instruktor – wiele kursów.

3. **Tabela: `elearning_learningpath`**
   - **Opis**: Przechowuje informacje o ścieżkach uczenia, czyli zestawach tematycznie powiązanych kursów.
   - **Relacja**: Relacja many-to-many z tabelą `elearning_course` – jedna ścieżka może zawierać wiele kursów, a jeden kurs może należeć do wielu ścieżek.

4. **Tabela: `elearning_learningpath_courses` (tabela mostowa)**
   - **Opis**: Obsługuje relację many-to-many między tabelami `elearning_learningpath` i `elearning_course`. Zawiera informacje o tym, które kursy należą do których ścieżek uczenia.

#### Relacje między tabelami

- **One-to-many**: Jeden instruktor (`elearning_instructor`) może prowadzić wiele kursów (`elearning_course`).
- **Many-to-many**: Kursy (`elearning_course`) mogą być częścią wielu ścieżek uczenia (`elearning_learningpath`), a ścieżka może zawierać wiele kursów. Relacja jest obsługiwana przez tabelę mostową `elearning_learningpath_courses`.

#### Przykładowe dane

- Instruktorzy: imię, nazwisko, doświadczenie.
- Kursy: tytuł, opis, instruktor.
- Ścieżki uczenia: nazwa, opis.

#### Technologie

- **Python** z biblioteką **sqlite3** do obsługi bazy danych.

#### Kluczowe funkcjonalności

- Dodawanie nowych kursów i instruktorów.
- Tworzenie i zarządzanie ścieżkami uczenia.
- Powiązanie kursów z instruktorami oraz ścieżkami uczenia.
