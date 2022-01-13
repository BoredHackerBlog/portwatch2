FROM alpine

RUN mkdir /app
WORKDIR /app

RUN apk --no-cache add nmap nmap-scripts python3 py3-pip

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY main.py .
COPY config.toml .
COPY exclusions.txt .
COPY targets.txt .

CMD ["/usr/bin/python3", "main.py"]