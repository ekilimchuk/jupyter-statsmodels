FROM debian:buster

WORKDIR /

RUN apt-get update && apt-get install -y python3-pandas python3-statsmodels python3-numpy python3-matplotlib jupyter python3-pip
RUN pip3 install pandas-datareader
