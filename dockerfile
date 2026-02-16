#use python as a parent image
FROM python: 3.8-slim

# set a working dir
WORKDIR /app

# copy all file in app dir
COPY ./app

#run rquiremt file
RUN pip install --no-cache-dir -r requirment.txt


#make port 5000 available to the outside the world
EXPOSE 5000

#define variable to app.py
ENV FLASK_APP=app.py


#run flask app
CMD ["flask","run","--host=0.0.0.0"]