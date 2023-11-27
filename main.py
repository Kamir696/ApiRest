import requests 
import json
from pprint import pprint
import psycopg2

ts = 1
private_key = "e47a58afe5dcb759921ada60cc650d3a2a9d5f70"
public_key = "de46d7d3e68f2a552b1cd048d7f8a312"
hashed = "f997e6698b576b7479609e1e9edd6685"
url = f"https://gateway.marvel.com:443/v1/public/characters?ts={ts}&apikey={public_key}&hash={hashed}"

conexion = psycopg2.connect(host="localhost", dbname="marvel_api", user="api", password="test123")
response = requests.get(url)

if response.status_code == 200:
    response_json = json.loads(response.text)
    cur = conexion.cursor()

    for personaje in response_json["data"]["results"]:
        nombre = personaje["name"]
        descripcion = personaje["description"]
        comics_disponibles = personaje["comics"]["available"]
        series_disponibles = personaje["series"]["available"]

        sql = "INSERT INTO personajes (nombre, descripcion, comics_disponibles, series_disponibles) VALUES (%s, %s, %s, %s)"
        cur.execute(sql, (nombre, descripcion, comics_disponibles, series_disponibles))
        conexion.commit()

    cur.close()
conexion.close()
