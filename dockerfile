# Usa uma imagem do Python como base
FROM python:3.10-alpine

# Atualiza o pip
RUN pip install --upgrade pip

# Define o diretório de trabalho do contêiner
WORKDIR /src

# Copia o arquivo requirements.txt para o diretório /app do contêiner
COPY requirements.txt .

# Instala as dependências do Python especificadas no requirements.txt
RUN pip install -r requirements.txt

RUN flake8 . --count --statistics

# Copia todo o conteúdo do diretório src/app para o diretório /app do contêiner
COPY src/ .

# Executa o comando padrão do contêiner (neste caso, executa o arquivo __init__.py)
CMD ["python", "main.py"]