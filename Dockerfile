FROM python:3.12.1-slim

WORKDIR /src

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install flask
COPY src/ .

CMD [ "python","./app.py" ]
