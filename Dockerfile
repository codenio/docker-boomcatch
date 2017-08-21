FROM node:alpine
MAINTAINER Aananth k "aananthraj1995@gamil.com"
RUN npm install -g boomcatch
ENTRYPOINT ["boomcatch"]
CMD ["-h"]