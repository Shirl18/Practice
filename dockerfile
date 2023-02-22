FROM python

WORKDIR /app

COPY . .

RUN pip install -R requirements.txt

CMD ["python", "-m", "flask", "run", "__host=0.0.0.0"]