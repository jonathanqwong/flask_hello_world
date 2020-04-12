FROM python:3.7.6

RUN /bin/bash -c 'echo this would import python'
ENV envVar="This is a sample." \
    otherEnvVar="Another sample."

# Create app directory
#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app

# Install app dependencies
#COPY requirements.txt /usr/src/app/
#RUN pip install -r requirements.txt

# Bundle app source
#COPY . /usr/src/app

#EXPOSE 5000
#ENTRYPOINT ["python"]
#CMD ["app.py"]
