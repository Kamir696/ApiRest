import requests 
import json
from pprint import pprint
ts=1

private_key = "e47a58afe5dcb759921ada60cc650d3a2a9d5f70"
public_key ="de46d7d3e68f2a552b1cd048d7f8a312"
#1e47a58afe5dcb759921ada60cc650d3a2a9d5f70de46d7d3e68f2a552b1cd048d7f8a312
hashed = "f997e6698b576b7479609e1e9edd6685"
url = f"https://gateway.marvel.com:443/v1/public/characters?ts={ts}&apikey={public_key}&hash={hashed}"
print(url)
lista = []
response = requests.get(url)
if response.status_code==200:
  responses = json.loads(response.text)
for i in responses["data"]["results"]:
  nombre = i["name"]
  descripcion = i["description"]
  comics_disponibles = i["comics"]["available"]
  series_disponibles = i["series"]["available"]
  dic = {"nombre":"","descripcion":"","comics disponibes": 0,"series disponibles":0}
  lista. append (dic)
print(lista)  