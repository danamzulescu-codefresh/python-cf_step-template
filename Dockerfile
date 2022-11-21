FROM python:3.11.0-alpine3.16

ENV LANG C.UTF-8

# Install GIT/NODEJS
#RUN apk update && \
#    apk upgrade && \
#    apk add --no-cache \
#        git \
#        nodejs \
#        build-base \
#        python3-dev \
#        libffi-dev \
#        openssl-dev

# Install Codefresh CLI
RUN apk add --update nodejs npm
RUN npm install codefresh

# Install Python GitHub module
#RUN pip install PyGithub

COPY src/ /

#ENTRYPOINT ["python", "/cf-demo-bot.py"]
CMD [""]
