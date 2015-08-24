FROM xdevelsistemas/debian-env:latest
#install node
RUN apt-get update && \ 
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs

# Setup
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF

# Add the repository
RUN echo "deb http://repos.mesosphere.io/debian wheezy main" | \
   tee /etc/apt/sources.list.d/mesosphere.list \
   &&  apt-get -y update


#install awscli
RUN apt-get update && \
    apt-get install -y python-pip groff && \
    pip install awscli


#install phantomjs    
RUN node -v \ 
    && npm install -g phantomjs \
       && npm install -g casperjs
       
       
