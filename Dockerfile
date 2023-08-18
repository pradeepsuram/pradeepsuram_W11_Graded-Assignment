FROM ubuntu:latest
FROM python:3.10

#Install packages
RUN apt-get update && apt-get install -y curl

#Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt ./

#Run 
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 5000

ENV FLASK_APP = app.py

# Run the app
CMD ["python3", "train.py"]
