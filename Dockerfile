FROM python:3.12

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

WORKDIR /app

COPY . .

ENTRYPOINT ["sh", "./entrypoint.sh"]
