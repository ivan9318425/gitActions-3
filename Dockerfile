#especificamos que nuestra imagen usara python 3.9
FROM python:3.9 

WORKDIR ..

RUN pip install --no-cache-dir --upgrade -r ./requirements.txt

CMD ["fastapi", "run", "app/main.py", "--port", "80"]