FROM python:3-alpine3.15

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN pip install pipenv

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 3000

VOLUME /hello-cloud-world/static/uploads

CMD ["pipenv", "run", "python", "app.py"]