FROM python:3.9-slim-buster

#clonning repo
RUN git clone https://github.com/Ashqalsmt/Source1.git /root/yamenthon
#working directory
WORKDIR /root/yamenthon

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/yamenthon/bin:$PATH"

CMD ["python3","-m","yamenthon"]
