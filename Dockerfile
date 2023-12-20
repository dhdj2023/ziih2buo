FROM python:3
WORKDIR /server

COPY main.py .

RUN chmod +x main.py && python3 main.py cf init && chmod +x ./*

EXPOSE 8080

CMD ["python3", "main.py", "server"]

USER 10001
