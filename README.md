# EVERY

Everything you need, near you. An ecommerce platform for the Philippines.

| Part | Stack | Folder |
|---|---|---|
| Frontend | Angular 22, TypeScript, SCSS | `frontend/` |
| Backend | Spring Boot 4.1, Java 21, Maven wrapper | `backend/` |
| Database | PostgreSQL, Flyway migrations | `backend/src/main/resources/db/migration` |

## Prerequisites
- Node.js 24+ and npm
- JDK 21
- PostgreSQL 16+ (Maven is not needed; use `./mvnw`)

## Database setup (one time)
```sql
CREATE USER every WITH PASSWORD 'every';
CREATE DATABASE every OWNER every;
```
Override the connection with `DB_URL`, `DB_USERNAME` and `DB_PASSWORD` (see `.env.example`).

## Run
```bash
# backend -> http://localhost:8080  (Flyway creates the tables on startup)
cd backend && ./mvnw spring-boot:run

# frontend -> http://localhost:4200  (/api is proxied to the backend)
cd frontend && npm start
```

Check: http://localhost:8080/api/ping and the "Backend: online" status on the homepage.

## Test
```bash
cd frontend && npx ng test --watch=false
cd backend && ./mvnw test   # needs PostgreSQL running
```
