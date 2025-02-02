FROM python:3.10
RUN pip install --upgrade pip

WORKDIR /hotdeal-tokenizer

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "app.py"]
