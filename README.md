# Arna Logistics

Адаптивный сайт складской логистики с публичными страницами, кабинетами клиента, сотрудников и администратора, FAQ, ИИ-помощником и ссылкой на Telegram-бота.

## Стек

- Python 3.12, FastAPI, Jinja2;
- PostgreSQL 16, SQLAlchemy 2, Alembic;
- HTML5, CSS3 и нативный JavaScript;
- OpenRouter с fallback на FAQ;
- Docker Compose локально;
- Render + Neon в production.

React, Vue, Angular, TypeScript, Vite и обязательный Node.js не используются.

## Текущий статус

В репозитории уже есть FastAPI-каркас, health endpoints, безопасная конфигурация, контракты авторизации, публичная Telegram-конфигурация и помощник OpenRouter/FAQ. Модели, миграции, доменные маршруты и HTML-интерфейс добавляются параллельными исполнителями по заданиям из `prompts/`.

Пока реализация моделей №1 не подключена, auth backend честно возвращает `503 AUTH_BACKEND_UNAVAILABLE`, а `/health/ready` возвращает 503 без PostgreSQL. Это не скрытые mocks.

## Быстрый локальный запуск

Требуются Docker Engine и Compose v2.

1. Скопируйте `.env.example` в `.env`.
2. Замените локальные пароли и `SECRET_KEY`.
3. Запустите БД и приложение:

```powershell
docker compose up --build
```

После появления миграций №1 примените их отдельно:

```powershell
docker compose run --rm app alembic upgrade head
```

Seed не запускается автоматически:

```powershell
docker compose run --rm app python scripts/seed.py
```

Адреса:

- приложение: `http://localhost:8000`;
- OpenAPI: `http://localhost:8000/docs`;
- liveness: `http://localhost:8000/health/live`;
- readiness: `http://localhost:8000/health/ready`.

## Запуск без Docker

Нужны Python 3.12 и отдельный PostgreSQL 16.

```powershell
py -3.12 -m venv .venv
.venv\Scripts\python -m pip install -r requirements-lock.txt
.venv\Scripts\python -m uvicorn app.main:app --reload
```

При запуске без Compose измените `DATABASE_URL`: hostname `db` доступен только внутри Docker-сети.

## Telegram

Сайт открывает готового внешнего бота по `TELEGRAM_BOT_URL`. Допустимы только HTTPS-ссылки `t.me` и `telegram.me`. При пустой или некорректной ссылке API возвращает disabled-состояние.

Код бота расположен отдельно в `C:\Users\Jimik\Desktop\tg shablons\tg shablons` и в этот репозиторий не копируется. Никогда не коммитьте `.env`, `BOT_TOKEN` и `bot.db`.

## ИИ-помощник

Укажите `OPENROUTER_API_KEY` и доступную аккаунту модель в `OPENROUTER_MODEL`. Бесплатность конкретной модели не гарантируется провайдером. Без ключа, при timeout или ошибке OpenRouter пользователь получает честно помеченный ответ из локальной базы FAQ.

Ключ находится только на сервере. Помощник не выполняет SQL, не меняет остатки и не управляет заявками.

## Тесты

```powershell
.venv\Scripts\python -m pytest
```

Транзакционные тесты №1 должны использовать отдельный PostgreSQL. Никогда не направляйте тесты на рабочую Neon-базу.

## Размещение

Подробная инструкция: `docs/deployment.md`. GitHub хранит код; FastAPI запускается на Render, PostgreSQL — на Neon. Бесплатные тарифы и лимиты Render, Neon и OpenRouter могут меняться.

## Работа четырёх ИИ

Общий контракт и персональные задания находятся в `prompts/`. Каждый исполнитель работает в своей зоне и оставляет `docs/handoff-0N.md`. OpenCode №2 является владельцем итоговой backend-интеграции.
