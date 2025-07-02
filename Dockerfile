FROM ngwaru/histo_vit:0.0.1

ADD main.py .

#ADD requirements.txt .
ADD vit.ipynb .
ADD Colorectal_Histology.zip . 

RUN pip install -r requirements.txt

CMD ["python", "main.py"]