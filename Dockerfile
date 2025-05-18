FROM python:3.13-slim

# Create a non-root user and switch to it 
RUN useradd --create-home appuser
WORKDIR /home/appuser/app

COPY --chown=appuser:appuser . .

RUN pip install flask

EXPOSE 8080

USER appuser

CMD ["python", "app.py"]
