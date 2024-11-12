import pandas as pd
import sqlite3

# Carregar o arquivo CSV
csv_file = r"C:\Users\leonardo.cintra\Documents\projetos\analises\br_rf_arrecadacao_uf\br_rf_arrecadacao_uf.csv"


df = pd.read_csv(csv_file)  # Carregar o CSV em um DataFrame

# Conectar ao banco de dados SQLite
conn = sqlite3.connect("arrecadacao_uf.db")  
cursor = conn.cursor()

# Enviar o DataFrame para uma tabela no SQLite
df.to_sql("arrecadacao_uf", conn, if_exists="replace", index=False)  # Nome da tabela: arrecadacao_uf

# Fechar a conexão
conn.close()

print("Dados importados para o banco de dados SQLite com sucesso!")
