FROM python:3.10

COPY . .

RUN apt-get update
RUN apt-get install libsm6 libxext6 -y
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

EXPOSE 8000
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]