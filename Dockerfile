FROM python:3.7.0b4-alpine3.7
COPY app/ /app
COPY db/ /db
COPY trader.py /app
COPY balance.py /app
RUN pip install requests
CMD [ "python", "/app/trader.py" ]
