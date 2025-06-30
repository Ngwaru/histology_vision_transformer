FROM python:3.11.0

ADD main.py .

ADD requirements.txt .
ADD vit.ipynb .
ADD hmnist_28_28_RGB.csv . 

RUN pip install -r requirements.txt

CMD ["python", "main.py"]