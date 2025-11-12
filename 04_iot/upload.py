import json
import psycopg2
from dotenv import load_dotenv
import os

load_dotenv()

DB_HOST = os.getenv("DB_HOST")
DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_PORT = os.getenv("DB_PORT")

# połączenie z bazą
conn = psycopg2.connect(
    host=DB_HOST,
    dbname=DB_NAME,
    user=DB_USER,
    password=DB_PASSWORD,
    port=DB_PORT
)
cur = conn.cursor()

with open("example_pred.json", "r", encoding="utf-8") as f:
    data = json.load(f)

# wstawianie danych
for d in data:
    ts = d["timestamp"]
    lat = d["position"]["lat"]
    lon = d["position"]["lon"]

    sql = """
        INSERT INTO positions (ts, geom)
        VALUES (%s, ST_GeomFromText('POINT(%s %s)', 4326));
    """
    cur.execute(sql, (ts, lon, lat))

conn.commit()
cur.close()
conn.close()

print("Done")
