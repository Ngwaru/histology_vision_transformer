FROM python:3.11.0

ADD main.py .

ADD requirements.txt .

RUN pip install -r requirements.txt

CMD ["python", "main.py"]