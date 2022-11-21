FROM python:3.11.0-alpine3.16

ENV LANG C.UTF-8

# Install GIT/NODEJS
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        git \
        nodejs \
#        build-base \
#        python3-dev \
#        libffi-dev \
#        openssl-dev \
        npm

#https://stackoverflow.com/questions/57534295/npm-err-tracker-idealtree-already-exists-while-creating-the-docker-image-for
WORKDIR /usr/app
COPY ./ /usr/app

# Install Codefresh CLI
RUN npm install codefresh

# Install Python GitHub module
#RUN pip install PyGithub

COPY src/ /

#ENTRYPOINT ["python", "/cf-demo-bot.py"]
CMD [""]
