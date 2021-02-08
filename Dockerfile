FROM python:3.8-slim
EXPOSE 8000
ENV PYTHONUNBUFFERED 1

# Copy our app to docker volume
COPY ./ /app

# Volume added by docker-compose
WORKDIR /app
RUN python -m pip install Django


CMD ["python", "./manage.py", "runserver"]
