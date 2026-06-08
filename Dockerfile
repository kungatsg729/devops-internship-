FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip

WORKDIR /app

COPY ./week3/python_file.py /app/python_file.py

RUN pip3 install flask --break-system-packages

EXPOSE 80

CMD ["python3", "python_file.py"]
