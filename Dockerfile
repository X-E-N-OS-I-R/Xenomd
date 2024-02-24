FROM node:lts-buster

RUN git clone https://github.com/A-d-i-t-h-y-a-n7/Xeno-MD/ /root/Xeno-MD

WORKDIR /root/Xeno-MD

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["npm", "start"]
