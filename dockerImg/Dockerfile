FROM alpine:latest 
WORKDIR /app
RUN apk add --no-cache curl

CMD sh -c "echo -n 'Enter your name: ' && read msg && echo \"Hello! \$msg\""  
