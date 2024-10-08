BEGIN TRANSACTION;

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        1,
        'Wprowadzenie do data science w języku Python - Pandas',
        'Zrób krok w stronę Pythona i analizuj dane jak profesjonalny data scientist!',
        'Czym jest biblioteka Pandas? Pandas to biblioteka typu open source, co oznacza, że jej używanie jest w pełni darmowe! Co więcej możemy nawet zaglądać do kodu źródłowego i udoskonalać stosowane rozwiązania! Zapewnia wydajne i łatwe w użyciu narzędzia do analizy danych dla języka programowania Python.',
        'development',
        'programming languages',
        'pl',
        '12h 18min',
        4.78,
        'https://www.udemy.com/course/wprowadzenie-data-science/?referralCode=D85D646D30D785FD5277',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        2,
        'Deep Learning w języku Python - Konwolucyjne Sieci Neuronowe',
        'Zrób krok w stronę sieci neuronowych dzięki bibliotece Keras!',
        'Do czego służy biblioteka Keras? Keras to biblioteka open source do tworzenia sieci neuronowych, która jako backend wykorzystuje Tensorflow, CNTK, czy Theano. Jest doskonałym narzędziem do prototypowania i eksperymentowania oszczędzając nam wiele czasu przy pisaniu kodu. Stanowi także niską barierę wejścia dla osób, które dopiero zaczynają swoją karierę w uczeniu maszynowym.',
        'development',
        'data science',
        'pl',
        '8h 27min',
        4.5,
        'https://www.udemy.com/course/deep-learning-w-jezyku-python/?referralCode=24567C4A18A3F17E0B47',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        3,
        'Uczenie Maszynowe - Drzewa Decyzyjne i Lasy Losowe - Python',
        'Poznaj od podstaw algorytmy uczenia maszynowego w języku Python! Twórz własne modele w bibliotece scikit-learn!',
        'Do czego służy biblioteka scikit-learn? Biblioteka scikit-learn jest bogatą biblioteką typu open source dostępną w języku Python przeznaczoną do uczenia maszynowego. Moduł scikit-learn zawiera wiele algorytmów z dziedziny uczenia nadzorowanego i nienadzorowanego. Biblioteka udostępniana jest na licencji BSD, co pozwala na użytkowanie zarówno komercyjne jak i akademickie.',
        'development',
        'data science',
        'pl',
        '5h 43min',
        4.86,
        'https://www.udemy.com/course/uczenie-maszynowe-python/?referralCode=706180C6DDA1BE725C57',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        4,
        'Programowanie w języku Python - od A do Z',
        'Naucz się jednego z najpopularniejszych języków programowania i otwórz sobie drzwi do kariery w IT! - Python',
        'Wzrost popularności języka Python Python jest językiem programowania o bardzo szerokim zastosowaniu. Zdominował takie dziedziny jak data science czy machine learning. Pozwala także na tworzenie aplikacji internetowych (np. framework Django).',
        'development',
        'programming languages',
        'pl',
        '16h 5min',
        4.72,
        'https://www.udemy.com/course/programowanie-w-jezyku-python/?referralCode=C7E5AD6D60ADCBDEF759',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        5,
        'Twórz nowoczesne aplikacje webowe w Pythonie - Dash, Plotly',
        'Twórz interaktywne aplikacje webowe w prosty i szybki sposób posługując się językiem Python!',
        'Kurs zawiera podstawy tworzenia aplikacji webowych z wykorzystaniem frameworku Dash. Jednym z popularnych zastosowań tego typu aplikacji są analityczne aplikacje webowe (dashboardy, analizy, raporty, itd.). Ponieważ framework Dash jest świetnie zintegrowany z biblioteką Plotly (tworzenie interaktywnych wykresów) idealnie nadaje się do szeroko pojętych zastosowań w data science. Mając gotowy model uczenia maszynowego w prosty sposób możemy stworzyć aplikację, która będzie obsługiwać nasz model.',
        'development',
        'web development',
        'pl',
        '11h 38min',
        4.81,
        'https://www.udemy.com/course/aplikacje-webowe-dash/?referralCode=40C44F12D311213BEC48',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        6,
        'Interaktywne wizualizacje danych w języku Python - Plotly',
        'Wizualizuj dane w języku Python przy pomocy bibliotek Seaborn oraz Plotly!',
        'Kurs podzielony jest na dwie części. Pierwsza skupia się na statystycznej wizualizacji danych wykorzystując do tego bibliotekę Seaborn. Jest to część obowiązkowa dla osób chcących pracować z analizą danych, uczeniem maszynowym czy data science. Druga część przedstawia wykorzystanie biblioteki Plotly do generowania fantastycznych interaktywnych wykresów, które mogą służyć zarówno w data science jak i w tworzeniu aplikacji webowych.',
        'development',
        'programming languages',
        'pl',
        '8h 37min',
        4.67,
        'https://www.udemy.com/course/wizualizacje-danych-python/?referralCode=A548AF40A5D2D658DAE6',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        7,
        'Big Data, Hadoop oraz MapReduce w języku Python',
        'Opanuj budowanie MapReduce Jobs używając biblioteki MRJob oraz usługi Amazon Elastic MapReduce!',
        'Umiejętność analizowania dużych zbiorów danych (Big Data) jest niezwykle gorącym tematem i zarazem jedną z najbardziej poszukiwanych umiejętności na rynku.  Ponieważ cały ekosystem rozwiązań Big Data jest ogromny w tym kursie skupimy się głównie na paradygmacie programowania MapReduce, który jest podwaliną analiz Big Data.',
        'development',
        'programming languages',
        'pl',
        '7h 44min',
        4.64,
        'https://www.udemy.com/course/big-data-bigquery/?referralCode=10C0A466D6710285AEC6',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        8,
        'Wprowadzenie do sieci neuronowych - Tensorflow 2.0 + Keras',
        'Naucz się budować sieci neuronowe w języku Python wykorzystując najnowocześniejsze rozwiązania!',
        'Zainteresowanie sieciami neuronowymi nigdy w historii nie było tak wysokie jak w ostatnich latach. To pokazuje jak ważnym elementem stają się sieci neuronowe w nowoczesnym budowaniu aplikacji. Rozwiązania sztucznej inteligencji spotykamy praktycznie na każdym kroku, a część z nas już tak do tego przywykła, że nie jest w stanie się bez nich obejść.',
        'development',
        'data science',
        'pl',
        '8h 38min',
        4.64,
        'https://www.udemy.com/course/wprowadzenie-tensorflow-keras/?referralCode=74356FE803194F2C3C42',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        9,
        'Big Data: Analiza danych przy użyciu SQL oraz BigQuery',
        'Analizuj dane rzędu GB czy TB w mgnieniu oka. Wykorzystaj przewagę rozwiązań chmurowych już dziś!',
        'Umiejętność analizowania dużych zbiorów danych (Big Data) jest niezwykle gorącym tematem i zarazem jedną z najbardziej poszukiwanych umiejętności na rynku.  Ponieważ cały ekosystem rozwiązań Big Data jest dość kłopotliwy w administrowaniu i zarządzaniu wiele firm decyduje się na wykorzystanie rozwiązań chmurowych. Jest to obecnie naturalny trend dla większości przedsiębiorstw, które wykorzystują analitykę Big Data. W tym kursie wykorzystamy świetne narzędzie do analizowania danych jakim jest usługa BigQuery.  Jest to rozwiązanie typu serverless co oznacza, że nie musimy martwić się o zarządzanie i administrowanie. Od pierwszej minuty możemy od razu przejść do pracy.',
        'development',
        'database design & development',
        'pl',
        '9h 26min',
        4.45,
        'https://www.udemy.com/course/big-data-bigquery/?referralCode=10C0A466D6710285AEC6',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        10,
        'Artificial Intelligence – Computer Vision w języku Python',
        'Sztuczna inteligencja - Odkryj Computer Vision z bibliotekami OpenCV, Tensorflow, Keras oraz PyTesseract',
        'Computer Vision - przed nami jeden z najszybciej rosnących obszarów sztucznej inteligencji. Umiejętność sprawnego przetwarzania danych niestrukturalnych (takich jak obraz, czy video) staję się coraz bardziej pożądana, a sama dziedzina poprzez swoją specyfikę jest niezwykle interesująca.',
        'development',
        'data science',
        'pl',
        '6h 51min',
        4.87,
        'https://www.udemy.com/course/artificial-intelligence-computer-vision/?referralCode=09C26CA07A8F6DF74148',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        11,
        'Data Science Bootcamp w języku Python - od A do Z',
        'Wejdź w świat data science i otwórz sobie drogę do zawodu przyszłości - data scientist!',
        'Dynamiczny rozwój technologii, a także nieustannie zwiększająca się ilość danych, które są generowane powoduje, że w skali globalnej drastycznie wzrasta zapotrzebowanie na osoby zajmujące się data science. Jest to już trend globalny od którego żaden wysoko rozwinięty kraj nie może przejść obojętnie. Przez ostatni rok sporo firm działających na terenie Polski zaczęło budować zespoły data science. Pojawiło się także bardzo dużo ofert pracy związanych z przeróżnymi branżami, np. finanse, ubezpieczenia, telco, sprzedaż, marketing internetowy czy nawet gaming, To tylko początkowy sygnał trendu, który jak przewiduje wiele źródeł nie pojawił się tylko na chwilę.',
        'development',
        'data science',
        'pl',
        '12h 40min',
        4.48,
        'https://www.udemy.com/course/data-science-bootcamp-python/?referralCode=7ACF0CA84807A88740FB',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        12,
        'Machine Learning Bootcamp w języku Python cz.I - od A do Z',
        'Uczenie Maszynowe - Wejdź w świat uczenia nadzorowanego i wykorzystaj przewagę uczenia maszynowego na rynku!',
        'Pierwsza część kursu z serii Machine Learning Bootcamp obejmująca tematykę uczenia nadzorowanego. Poruszone są główne problemy klasycznego uczenia maszynowego, czyli klasyfikacja oraz regresja. Kurs zbudowany jest w oparciu o najpopularniejszą bibliotekę do uczenia maszynowego w języku Python, czyli bibliotekę scikit-learn (sklearn).',
        'development',
        'data science',
        'pl',
        '11h 1min',
        4.73,
        'https://www.udemy.com/course/machine-learning-bootcamp-w-jezyku-python/?referralCode=92994CE6227390CFA9D7',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        13,
        'Machine Learning Bootcamp w języku Python cz.II - od A do Z',
        'Uczenie Maszynowe - Wejdź w świat uczenia nienadzorowanego i wykorzystaj przewagę uczenia maszynowego na rynku!',
        'Druga część kursu z serii Machine Learning Bootcamp obejmująca tematykę uczenia nienadzorowanego. Poruszone są główne problemy uczenia nienadzorowanego takie jak klasteryzacja, redukcja wymiarowości, reguły asocjacyjne czy detekcja anomalii. Kurs zbudowany jest w oparciu o kilka bibliotek do uczenia maszynowego w języku Python: scikit-learn, Prophet, OpenCV.',
        'development',
        'data science',
        'pl',
        '5h 9min',
        4.89,
        'https://www.udemy.com/course/machine-learning-bootcamp-w-jezyku-python-ii/?referralCode=AE397842FEFADB697DC8',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        14,
        '200+ Ćwiczeń - Programowanie w języku Python - od A do Z',
        'Podnieś poziom swoich umiejętności programowania w języku Python i rozwiąż ponad 200 zadań o różnym poziomie trudności!',
        'Kurs składa się z ponad 200 ćwiczeń (zadania + rozwiązania) w języku Python. Zadania są ułożone uwzględniając rosnący poziom trudności. Jest to świetny sprawdzian dla osób, które uczą się języka Python i szukają nowych wyzwań. Kurs jest skierowany do osób, które mają już podstawową wiedzę w języku Python (rekomendowany kurs Programowanie w języku Python - od A do Z - 2020).',
        'development',
        'programming languages',
        'pl',
        '0h 37 min',
        4.66,
        'https://www.udemy.com/course/programowanie-w-jezyku-python-od-a-do-z-cwiczenia/?referralCode=F7E8037914EA401783CF',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        15,
        '250+ Ćwiczeń - Data Science Bootcamp w języku Python',
        'Podnieś poziom swoich umiejętności programowania w języku Python i rozwiąż ponad 250 zadań z data science!',
        'Kurs jest skierowany do osób, które mają już podstawową wiedzę w języku Python (rekomendowany kurs Programowanie w języku Python - od A do Z - 2020) oraz wiedzę na temat bibliotek do data science (rekomendowany kurs Data Science Bootcamp w języku Python - od A do Z - 2020).',
        'development',
        'programming languages',
        'pl',
        '7h 8min',
        4.89,
        'https://www.udemy.com/course/250-data-science-bootcamp-w-jezyku-python/?referralCode=BFFC4AF3CF8B8A6C85AB',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        16,
        '200+ Exercises - Programming in Python - from A to Z',
        'Improve your Python programming skills and solve over 200 exercises!',
        '200+ Exercises - Programming in Python - from A to Z Welcome to the course 200+ Exercises - Programming in Python - from A to Z where you can test your Python programming skills.',
        'development',
        'programming languages',
        'eng',
        '0h 30min',
        4.29,
        'https://www.udemy.com/course/200-exercises-programming-in-python-from-a-to-z/?referralCode=B8F5DEBD2FB418EA4147',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        17,
        '250+ Exercises - Data Science Bootcamp in Python',
        'Improve your Python programming skills and solve over 250 data science exercises!',
        'Packages that you will use in the exercises: numpy, pandas, seaborn, plotly, scikit-learn, opencv, tensorflow',
        'development',
        'data science',
        'eng',
        '0h 29min',
        4.29,
        'https://www.udemy.com/course/250-exercises-data-science-bootcamp-in-python/?referralCode=673FE6893CE253526C4D',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        18,
        '100+ Exercises - Python Programming - Data Science - NumPy',
        'Improve your Python programming and data science skills and solve over 100 exercises in NumPy!',
        '100+ Exercises - Python Programming - Data Science - NumPy Welcome to the course 100+ Exercises - Python Programming - Data Science - NumPy, where you can test your Python programming skills in data science, specifically in NumPy.',
        'development',
        'data science',
        'eng',
        '0h 30min',
        4.13,
        'https://www.udemy.com/course/100-exercises-python-programming-data-science-numpy/?referralCode=5EBB9741CD12E8CEB744',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        19,
        '130+ Exercises - Python Programming - Data Science - Pandas',
        'Improve your Python programming and data science skills and solve over 130 exercises in Pandas!',
        '130+ Exercises - Python Programming - Data Science - Pandas Welcome to the course 130+ Exercises - Python Programming - Data Science - Pandas where you can test your Python programming skills in data science, specifically in Pandas.',
        'development',
        'data science',
        'eng',
        '0h 28min',
        4.08,
        'https://www.udemy.com/course/100-exercises-python-programming-data-science-pandas/?referralCode=9ACF7D5172F2AC8C8A40',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        20,
        '100+ Exercises - Python - Data Science - scikit-learn',
        'Improve your machine learning skills and solve over 100 exercises in python, numpy, pandas and scikit-learn!',
        '100+ Exercises - Python - Data Science - scikit-learn Welcome to the course 100+ Exercises - Python - Data Science - scikit-learn where you can test your Python programming skills in machine learning, specifically in scikit-learn package.',
        'development',
        'data science',
        'eng',
        '0h 28min',
        3.6,
        'https://www.udemy.com/course/100-exercises-python-data-science-scikit-learn/?referralCode=4BEED75986FF57D56D59',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        21,
        'Machine Learning Bootcamp w języku Python cz.III - Ćwiczenia',
        'Podnieś poziom swoich umiejętności programowania w języku Python i rozwiąż ponad 100 zadań z uczenia maszynowego!',
        'Kurs jest skierowany do osób, które mają już podstawową wiedzę w języku Python (rekomendowany kurs Programowanie w języku Python - od A do Z - 2020) oraz wiedzę na temat uczenia maszynowego (rekomendowane kursy Machine Learning Bootcamp w języku Python cz.I - od A do Z oraz Machine Learning Bootcamp w języku Python cz.II - od A do Z).',
        'development',
        'data science',
        'pl',
        '0h 33min',
        4.87,
        'https://www.udemy.com/course/machine-learning-bootcamp-w-jezyku-python-cwiczenia/?referralCode=69411EC2497CD9119831',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        22,
        '210+ Ćwiczeń - Python - Moduły wbudowane - od A do Z',
        'Podnieś poziom swoich umiejętności programowania w języku Python i rozwiąż ponad 210 zadań z modułów wbudowanych!',
        'Kurs składa się z ponad 210 ćwiczeń (zadania + rozwiązania) w języku Python z modułów wbudowanych. Jest to świetny sprawdzian dla osób, które uczą się języka Python i szukają nowych wyzwań. Kurs jest skierowany do osób, które mają już podstawową wiedzę w języku Python (rekomendowany kurs Programowanie w języku Python - od A do Z - 2020).',
        'development',
        'programming languages',
        'pl',
        '0h 33min',
        4.61,
        'https://www.udemy.com/course/cwiczenia-python-moduly-wbudowane/?referralCode=2FC3D3B57972694B5D40',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        23,
        '210+ Exercises - Python Standard Libraries - from A to Z',
        'Improve your Python programming skills and solve over 210 exercises with Python standard libraries!',
        '210+ Exercises - Python Standard Libraries - from A to Z Welcome to the course 210+ Exercises - Python Standard Libraries - from A to Z where you can test your Python programming skills.',
        'development',
        'programming languages',
        'eng',
        '0h 28min',
        4.41,
        'https://www.udemy.com/course/exercises-python-standard-libraries/?referralCode=C4B0D9955BD0C79696EE',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        24,
        'Programowanie obiektowe w języku Python - OOP - od A do Z',
        'Naucz się programowania obiektowego (OOP) w języku Python i otwórz sobie drzwi do kariery w IT! - Python',
        'Programowanie obiektowe Python jest jednym z najszybciej rozwijających się języków programowania i zarazem znajomość języka Python jest jedną z najbardziej poszukiwanych umiejętności na rynku pracy w branży IT. Ucząc się programowania obiektowego (OOP) znacząco podnosimy swoje umiejętności i szansę na odniesienie sukcesu w branży.',
        'development',
        'programming languages',
        'pl',
        '10h 5min',
        4.6,
        'https://www.udemy.com/course/programowanie-obiektowe-jezyk-python-oop-kurs/?referralCode=A277D1725978D0DA0A9B',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        25,
        '150+ Ćwiczeń - Programowanie obiektowe w języku Python - OOP',
        'Sprawdź się z programowania obiektowego (OOP) w języku Python i rozwiąż ponad 150 ćwiczeń z OOP! - Python',
        'Kurs 150+ Ćwiczeń - Programowanie obiektowe w języku Python - OOP jest następnikiem kursu Programowanie obiektowe w języku Python - OOP - od A do Z. Na kursie będziesz mógł sprawdzić swoje umiejętności programowania w języku Python w szczególności z programowania obiektowego. Kurs składa się z ponad 150 ćwiczeń (zadania + rozwiązania) i przeznaczony jest dla osób posiadających podstawową wiedzę w języku Python oraz programowaniu obiektowym. Jest to świetny sprawdzian dla osób, które chcą zostać Python Developerem i szukają nowych wyzwań. Ćwiczenia są również dobrym elementem sprawdzającym przed rozmową kwalifikacyjną. Wiele popularnych zagadnień zostało poruszonych na kursie. Przed przystąpieniem do kursu upewnij się, że spełniasz wymagania, tzn. ukończyłeś podane kursy lub posiadasz równoważną wiedzę.',
        'development',
        'programming languages',
        'pl',
        '0h 43min',
        4.81,
        'https://www.udemy.com/course/cwiczenia-programowanie-obiektowe-w-jezyku-python-oop-kurs/?referralCode=0658F3C7E0CF039D280E',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        26,
        '150+ Exercises - Object Oriented Programming in Python - OOP',
        'Test your Python programming skills in object-oriented programming (OOP) and solve over 150 exercises! - Python',
        '150+ Exercises - Object Oriented Programming in Python - OOP Welcome to the course 150+ Exercises - Object Oriented Programming in Python - OOP, where you can test your Python programming skills in object-oriented programming (OOP) and complete over 150 exercises!',
        'development',
        'programming languages',
        'eng',
        '0h 28min',
        4.92,
        'https://www.udemy.com/course/exercises-object-oriented-programming-in-python-oop-course/?referralCode=B53C3A8BD1A72E62EFE1',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        27,
        '120+ Ćwiczeń w języku Python - Data Science - NumPy',
        'Podnieś poziom swoich umiejętności programowania w języku Python oraz data science i rozwiąż ponad 120 ćwiczeń w NumPy!',
        'Kurs składa się z ponad 120 ćwiczeń (zadania + rozwiązania) z języka Python i biblioteki NumPy. Kurs przeznaczony jest dla osób posiadających podstawową wiedzę z zakresu języka Python oraz biblioteki NumPy. Jest to świetny sprawdzian dla osób, które chcą wejść w świat data science i szukają nowych wyzwań. Ćwiczenia są również dobrym sprawdzianem przed rozmową kwalifikacyjną. Wiele popularnych pytań zostało omówionych na kursie.',
        'development',
        'data science',
        'pl',
        '0h 33min',
        4.81,
        'https://www.udemy.com/course/python-data-science-numpy-cwiczenia/?referralCode=CE6EF51049A940B99286',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        28,
        '130+ Ćwiczeń w języku Python - Data Science - Pandas',
        'Podnieś poziom swoich umiejętności programowania w języku Python oraz data science i rozwiąż ponad 130 ćwiczeń w Pandas!',
        'Kurs składa się z ponad 130 ćwiczeń (zadania + rozwiązania) z języka Python i biblioteki Pandas. Kurs przeznaczony jest dla osób posiadających podstawową wiedzę z zakresu języka Python oraz bibliotek: NumPy oraz Pandas. Jest to świetny sprawdzian dla osób, które chcą wejść w świat data science i szukają nowych wyzwań. Ćwiczenia są również dobrym sprawdzianem przed rozmową kwalifikacyjną. Wiele popularnych pytań zostało omówionych na kursie.',
        'development',
        'data science',
        'pl',
        '0h 33min',
        4.78,
        'https://www.udemy.com/course/cwiczenia-jezyk-python-data-science-pandas/?referralCode=67448BE61AC404315CD5',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        29,
        'Testy jednostkowe w języku Python - framework unittest',
        'Naucz się pisać testy jednostkowe w języku Python i otwórz sobie drzwi do kariery w IT! - Python, unittest',
        'Testy jednostkowe Testowanie jednostkowe to jedna z najpopularniejszych obecnie metod testowania oprogramowania. Utrzymanie całkiem pokaźnych projektów jest praktycznie niemożliwe bez odpowiednich zestawów testowych sprawdzających poprawność tworzonego oprogramowania. Pisanie testów jednostkowych to oczywiście umiejętność obowiązkowa na stanowisku każdego dewelopera oprogramowania. Nie zwlekaj i już dziś naucz się testować pisane oprogramowanie!',
        'development',
        'programming languages',
        'pl',
        '4h 58min',
        4.64,
        'https://www.udemy.com/course/kurs-testy-jednostkowe-jezyk-python-framework-unittest/?referralCode=F2A5869309BF127E806F',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        30,
        '100+ Ćwiczeń - Testy jednostkowe w języku Python - unittest',
        'Podnieś poziom swoich umiejętności programowania w języku Python i rozwiąż ponad 100 ćwiczeń z testów jednostkowych!',
        'Kurs składa się z ponad 100 ćwiczeń (zadania + rozwiązania) z testów jednostkowych w języku Python. Kurs przeznaczony jest dla osób posiadających podstawową wiedzę z zakresu języka Python oraz frameworka unittest. Jest to świetny sprawdzian dla osób, które chcą zostać Python Developerem i szukają nowych wyzwań. Ćwiczenia są również dobrym sprawdzianem przed rozmową kwalifikacyjną.',
        'development',
        'programming languages',
        'pl',
        '0h 33min',
        4.4,
        'https://www.udemy.com/course/testy-jednostkowe-w-jezyku-python-unittest-kurs/?referralCode=A923D8BD40476EDDA13B',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        31,
        '100+ Exercises - Unit tests in Python - unittest framework',
        'Improve your Python programming and unit testing skills and solve over 100 exercises with Python and unittest framework!',
        '100+ Exercises - Unit tests in Python - unittest framework Welcome to the course 100+ Exercises - Unit tests in Python - unittest framework, where you can check your programming skills in Python and unit testing. The course is designed for people who have basic knowledge in Python and unittest framework. It consists of over 100 exercises with solutions.',
        'development',
        'programming languages',
        'eng',
        '0h 28min',
        4.76,
        'https://www.udemy.com/course/unit-testing-python-unittest-framework/?referralCode=876B2AFF6B1E38D534CE',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        32,
        'SQL Bootcamp - Bazy danych SQLite - Part I',
        'Rozpocznij swoją przygodę z bazami danych i językiem SQL. Otwórz sobie drzwi do kariery w IT!',
        'SQL Bootcamp - Bazy danych SQLite - Part I Znajomość języka SQL to jedna z najbardziej poszukiwanych umiejętności technicznych na rynku pracy. Od deweloperów aplikacji webowych i mobilnych po analityków i data scientistów.',
        'development',
        'database design & development',
        'pl',
        '5h 17min',
        4.47,
        'https://www.udemy.com/course/sql-bootcamp-bazy-danych-sqlite/?referralCode=CBFDC1BBD8C0B3942207',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        33,
        'SQL Bootcamp - Bazy danych SQLite - Part II',
        'Rozpocznij swoją przygodę z bazami danych i językiem SQL. Otwórz sobie drzwi do kariery w IT!',
        'SQL Bootcamp - Bazy danych SQLite - Part II Kurs zakłada ukończenie kursu SQL Bootcamp - Bazy danych SQLite - Part I lub posiadanie równoważnej wiedzy. Znajomość języka SQL to jedna z najbardziej poszukiwanych umiejętności technicznych na rynku pracy. Od deweloperów aplikacji webowych i mobilnych po analityków i data scientistów.',
        'development',
        'database design & development',
        'pl',
        '4h 56min',
        4.57,
        'https://www.udemy.com/course/sql-bootcamp-bazy-danych-sqlite-2/?referralCode=D9C065553AEF8DD7CE45',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        34,
        'SQL Bootcamp - Bazy danych SQLite - Part III - Ćwiczenia',
        'Rozpocznij przygodę z bazami danych i językiem SQL. Rozwiąż ponad 140 ćwiczeń i otwórz sobie drzwi do kariery w IT!',
        'SQL Bootcamp - Bazy danych SQLite - Part III - Ćwiczenia Kurs składa się z ponad 140 ćwiczeń wraz z rozwiązaniami z baz danych i języka SQL. Ćwiczenia w tej części nastawione są głównie na tworzenie zapytań DQL do baz danych.',
        'development',
        'database design & development',
        'pl',
        '0h 36min',
        4.72,
        'https://www.udemy.com/course/sql-bootcamp-bazy-danych-sqlite-cwiczenia/?referralCode=D3B2EA9829FC6D4AE308',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        35,
        'SQL Bootcamp - Bazy danych SQLite - Part IV - Ćwiczenia',
        'Sprawdź się z baz danych i języka SQL. Rozwiąż ponad 130 ćwiczeń i otwórz sobie drzwi do kariery w IT!',
        'SQL Bootcamp - Bazy danych SQLite - Part IV - Ćwiczenia Kurs składa się z ponad 130 ćwiczeń wraz z rozwiązaniami z baz danych i języka SQL. Ćwiczenia w tej części nastawione są głównie na tworzenie zapytań DDL (Data Definition Language) oraz DML (Data Manipulation Language).',
        'development',
        'database design & development',
        'pl',
        '0h 36min',
        5.0,
        'https://www.udemy.com/course/sql-bootcamp-bazy-danych-sqlite-cwiczenia-ii/?referralCode=C59DBA99D2FE9EDB3B8E',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        36,
        'SQL Bootcamp - Hands-On Exercises - SQLite - Part I',
        'Start your journey with SQL and databases. Solve over 150 exercises and open the door to a career in IT! (DQL)',
        'SQL Bootcamp - Hands-On Exercises - SQLite - Part I Welcome to the course SQL Bootcamp - Hands-On Exercises - SQLite - Part I where you can test your SQL programming skills. This is the first part of the SQL Bootcamp - Hands-On Exercises series. The exercises in this part are mainly focused on creating DQL queries to the database.',
        'development',
        'database design & development',
        'eng',
        '0h 28min',
        4.61,
        'https://www.udemy.com/course/sql-bootcamp-hands-on-exercises-sqlite-part-i/?referralCode=FF68FEF0106BDE6D4950',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        37,
        'SQL Bootcamp - Hands-On Exercises - SQLite - Part II',
        'Start your journey with SQL and databases. Solve over 150 exercises and open the door to a career in IT! (DDL + DML)',
        'SQL Bootcamp - Hands-On Exercises - SQLite - Part II Welcome to the course SQL Bootcamp - Hands-On Exercises - SQLite - Part II, where you can test your SQL programming skills. This is the second part of the SQL Bootcamp - Hands-On Exercises series. The exercises in this part are mainly focused on creating DDL and DML queries to the database.',
        'development',
        'database design & development',
        'eng',
        '0h 28min',
        4.61,
        'https://www.udemy.com/course/sql-bootcamp-hands-on-exercises-sqlite-part-ii/?referralCode=A12E7493134B4913E53B',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        38,
        '100+ Ćwiczeń - Zaawansowane programowanie w języku Python',
        'Podnieś poziom swoich umiejętności programowania w języku Python i rozwiąż ponad 100 zaawansowanych zadań w Pythonie!',
        'Kurs składa się z ponad 100 zaawansowanych ćwiczeń (zadania + rozwiązania) w języku Python. Kurs jest skierowany do osób, które mają już podstawową wiedzę w języku Python (patrz wymagania do kursu).',
        'development',
        'programming languages',
        'pl',
        '0h 33min',
        4.56,
        'https://www.udemy.com/course/zaawansowane-programowanie-w-jezyku-python/?referralCode=9F06CF056805CD81EE54',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        39,
        '100+ Exercises - Advanced Python Programming',
        'Improve your Python programming skills and solve over 100 advanced Python problems!',
        '100+ Exercises - Advanced Python Programming Welcome to the course 100+ Exercises - Advanced Python Programming, where you can check your programming skills in Python. The course is designed for people who have basic knowledge in Python. The course consists of over 100 advanced exercises (exercises + solutions) in Python.',
        'development',
        'programming languages',
        'eng',
        '0h 28min',
        5.0,
        'https://www.udemy.com/course/advanced-exercises-python-programming/?referralCode=24CF0346E66901646D5D',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        40,
        '150+ Exercises - Data Structures in Python - Hands-On',
        'Improve your Python programming skills and solve over 150 exercises with data structures!',
        '150+ Exercises - Data Structures in Python - Hands-On Welcome to the course 150+ Exercises - Data Structures in Python - Hands-On, where you can check your programming skills in Python. This course is designed for people who have basic knowledge in Python and consists of over 150 exercises (exercises + solutions) with Python data structures.',
        'development',
        'programming languages',
        'eng',
        '0h 28min',
        5.0,
        'https://www.udemy.com/course/150-exercises-data-structures-in-python/?referralCode=3725F199011E95ED4221',
        1
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        41,
        'Programowanie w języku C - od A do Z',
        'Naucz się jednego z najpopularniejszych języków programowania i otwórz sobie drzwi do kariery w IT! - Język C',
        'Zacznij przygodę z programowaniem w języku C już dziś. Dzięki wiedzy zdobytej na tym kursie nauczysz się pisać i kompilować swoje programy komputerowe. Umiejętności związane z językiem C są bardzo dobrze postrzegane na rynku, dlatego warto dołączyć taką umiejętność do swojego CV',
        'development',
        'programming languages',
        'pl',
        '6h 28min',
        4.24,
        'https://www.udemy.com/course/programowanie-w-jezyku-c/?referralCode=EC17C4A00434490F602F',
        2
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        42,
        '150+ Ćwiczeń - Programowanie w języku C - od A do Z',
        'Podnieś poziom swoich umiejętności programowania w języku C i rozwiąż ponad 150 zadań o różnym poziomie trudności!',
        'Kurs składa się z ponad 150 ćwiczeń (zadania + rozwiązania) w języku C, jednego z najpopularniejszy języków programowania na świecie. Zadania są ułożone uwzględniając rosnący poziom trudności, nie napotkasz tutaj przeskoku w tematach, zdobędziesz wiedzę krok po kroku.',
        'development',
        'programming languages',
        'pl',
        '0h 31min',
        4.25,
        'https://www.udemy.com/course/150-cwiczen-programowanie-w-jezyku-c-od-a-do-z-2020/?referralCode=F5B2E205248F39CE7516',
        2
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        43,
        'Programowanie w języku C++ - od A do Z',
        'Naucz się jednego z najpopularniejszych języków programowania i zacznij pisać praktyczne programy w języku C++',
        'Zacznij przygodę z programowaniem w języku C++ już dziś. Dzięki wiedzy zdobytej na tym kursie nauczysz się pisać i kompilować swoje programy komputerowe. Podczas tego kursu, dogłębnie zrozumiesz działanie programu od podstaw, od pierwszej kompilacji po tworzenie programu, który wykonuje serię instrukcji. Nie musisz się niczego obawiać - wytłumaczę Ci wszystko krok po kroku.',
        'development',
        'programming languages',
        'pl',
        '9h 4min',
        4.61,
        'https://www.udemy.com/course/programowanie-w-jezyku-cpp-od-a-do-z/?referralCode=DE2D6835B13468381D8A',
        2
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        44,
        '150+ Ćwiczeń - Programowanie w języku C++ - od A do Z',
        'Podnieś poziom swoich umiejętności programowania w języku C++ i rozwiąż ponad 150 zadań o różnym poziomie trudności!',
        'Kurs składa się z ponad 150 ćwiczeń (zadania + rozwiązania) w języku C++. Zadania stworzone zostały w oparciu o rosnący poziom trudności. Kurs jest w całości praktyczny, polega on głównie na rozwiązywaniu zadań z codziennego życia. Jest to świetny sposób na poszerzenie oraz utrwalenie poznanych zagadnień dotyczących języka C++.',
        'development',
        'programming languages',
        'pl',
        '0h 38min',
        4.56,
        'https://www.udemy.com/course/150-cwiczen-programowanie-w-jezyku-cpp/?referralCode=8DD53055EC487C303A46',
        2
    );

INSERT INTO
    "course" (
        "id",
        "title",
        "subtitle",
        "description",
        "category",
        "subcategory",
        "language",
        "length",
        "rating",
        "referral_link",
        "instructor_id"
    )
VALUES
    (
        45,
        '150+ Ćwiczeń - Programowanie obiektowe w języku C++ - OOP',
        'Podnieś poziom swoich umiejętności o programowanie obiektowe w języku C++ i rozwiąż ponad 150 ćwiczeń na różnym poziomie',
        'Kurs składa się z ponad 150 ćwiczeń (zadania + rozwiązania) w języku C++ z programowania obiektowego. Zadania stworzone zostały w oparciu o rosnący poziom trudności oraz w kursie nie ma przeskoku materiału.',
        'development',
        'programming languages',
        'pl',
        '0h 30min',
        5.0,
        'https://www.udemy.com/course/150-cwiczen-programowanie-obiektowe-w-jezyku-cpp-oop/?referralCode=B516ED45D6F0EA7A9E94',
        2
    );

COMMIT;