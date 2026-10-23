FROM python:3.11-slim

WORKDIR /app
COPY index.html /app/index.html
COPY estate_interactive_lookbook_standalone.html /app/estate_interactive_lookbook_standalone.html
COPY static /app/static
COPY docs /app/docs

ENV PORT=8080
EXPOSE 8080

CMD ["sh", "-c", "python3 -m http.server ${PORT:-8080} --bind 0.0.0.0"]
