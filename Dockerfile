FROM debian:stable-slim

WORKDIR /app

COPY pocketbase.exe .

COPY pb_data ./pb_data

RUN chmod +x pocketbase.exe

EXPOSE 10000

CMD ["./pocketbase.exe", "serve", "--http=0.0.0.0:10000", "--dir=pb_data"]
