FROM python:3.10-alpine
WORKDIR /usr/app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
ENV FLASK_APP=server.py
ENV FLASK_ENV=development
CMD ["flask", "run", "--host", "0.0.0.0"]
