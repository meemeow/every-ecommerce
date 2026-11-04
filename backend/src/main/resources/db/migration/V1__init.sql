-- EVERY initial schema
CREATE TABLE category (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL UNIQUE,
    created_at  TIMESTAMPTZ  NOT NULL DEFAULT now()
);

CREATE TABLE product (
    id           BIGSERIAL PRIMARY KEY,
    name         VARCHAR(200)   NOT NULL,
    description  TEXT,
    price        NUMERIC(12, 2) NOT NULL CHECK (price >= 0),
    stock        INTEGER        NOT NULL DEFAULT 0 CHECK (stock >= 0),
    image_url    VARCHAR(500),
    category_id  BIGINT REFERENCES category (id),
    created_at   TIMESTAMPTZ    NOT NULL DEFAULT now()
);
