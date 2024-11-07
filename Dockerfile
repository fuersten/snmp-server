FROM python:3.12-slim-bullseye

WORKDIR .

RUN pip install --upgrade pip

ADD ./config.py .
ADD ./snmp-server.py .

CMD ["python", "snmp-server.py", "--config", "config.py"]
