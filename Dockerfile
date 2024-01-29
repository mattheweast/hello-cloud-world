FROM python:3-alpine3.15

WORKDIR /app

COPY . /app/

RUN pip install -r requirements.txt

RUN pip install pipenv

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 3000

CMD ["pipenv", "run", "python", "app.py"]