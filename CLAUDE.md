# EVERY

Philippine ecommerce platform. Brand name is EVERY (all caps).

- `frontend/`: Angular 22 (standalone components, signals, SCSS). Dev server proxies `/api` to `localhost:8080` via `proxy.conf.json`.
- `backend/`: Spring Boot 4.1, Java 21, package `com.every`. Build with `./mvnw` (no global Maven).
- Database: PostgreSQL. Schema changes go in new Flyway migrations (`backend/src/main/resources/db/migration/V{n}__*.sql`); JPA uses `ddl-auto: validate`.
- Theme: peach gradient (`#FFC8A2` to `#FF9E8F`), berry `#9E2F50` buttons with white text, dark text on peach. CSS variables are in `frontend/src/styles.scss`.
- No payments yet: do not add Stripe or other payment integrations until asked.
- Security currently permits `/api/**` (no auth yet).
