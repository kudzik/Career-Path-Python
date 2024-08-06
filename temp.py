import requests
from bs4 import BeautifulSoup

# Zdefiniuj URL strony, którą chcesz scrapować
url = "https://aibit.pl/"

# Wykonaj żądanie HTTP i pobierz zawartość strony
response = requests.get(url)
soup = BeautifulSoup(response.content, 'html.parser')

# Znajdź wszystkie nagłówki h2 na stronie
h2_tags = soup.find_all('h2')

# Wypisz tekst każdego nagłówka
for h2 in h2_tags:
    print(h2.text.strip())

links = soup.find_all('a')

# Stwórz słownik, aby przechowywać linki i ich tekst
link_data = {}
for link in links:
    link_data[link.text] = link.get('href')


print(link_data)
