FROM python:3.12-slim AS runtime

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

RUN addgroup --system arna && adduser --system --ingroup arna arna

COPY requirements-lock.txt ./
RUN pip install --no-cache-dir --requirement requirements-lock.txt

COPY . .
RUN chown -R arna:arna /app

USER arna
EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
