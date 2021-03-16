FROM python:3.9
 
WORKDIR /app
COPY . /app

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8080
RUN chmod +x ./serve.sh
# CMD ["gunicorn", "--bind", "0.0.0.0:8080", "flask_ping:app"]
ENTRYPOINT ["./serve.sh"]