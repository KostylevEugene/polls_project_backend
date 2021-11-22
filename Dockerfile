FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENV FLASK_APP=webapp

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
