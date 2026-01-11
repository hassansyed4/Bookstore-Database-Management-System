-- Categories Table
CREATE TABLE categories (
    category_id     INTEGER PRIMARY KEY,
    category_name   VARCHAR2(50) NOT NULL UNIQUE
);

-- Authors Table
CREATE TABLE authors (
    author_id       INTEGER PRIMARY KEY,
    author_name     VARCHAR2(50) NOT NULL UNIQUE
);

-- Books Table
CREATE TABLE books (
    book_id         INTEGER PRIMARY KEY,
    title           VARCHAR2(50) NOT NULL,
    price           NUMBER CHECK (price >= 0),
    stock_quantity  INTEGER CHECK (stock_quantity >= 0),
    category_id     INTEGER,
    CONSTRAINT books_category_fk FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

-- Book-Authors Junction Table
CREATE TABLE book_authors (
    book_id         INTEGER,
    author_id       INTEGER,
    PRIMARY KEY (book_id, author_id),
    CONSTRAINT book_authors_book_fk FOREIGN KEY (book_id) REFERENCES books (book_id),
    CONSTRAINT book_authors_author_fk FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

-- Users Table
CREATE TABLE users (
    user_id         INTEGER PRIMARY KEY,
    username        VARCHAR2(50) NOT NULL UNIQUE,
    password        VARCHAR2(20) NOT NULL,
    email           VARCHAR2(50) NOT NULL UNIQUE,
    user_type       VARCHAR2(20) CHECK (user_type IN ('Admin', 'Customer'))
);

-- Orders Table
CREATE TABLE orders (
    order_id        INTEGER PRIMARY KEY,
    user_id         INTEGER NOT NULL,
    total_price     NUMBER(9, 2) CHECK (total_price >= 0),
    order_date      DATE DEFAULT SYSDATE,
    CONSTRAINT orders_users_fk FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- Order-Items Table
CREATE TABLE order_items (
    ord_item_id     INTEGER PRIMARY KEY,
    order_id        INTEGER NOT NULL,
    book_id         INTEGER NOT NULL,
    quantity        INTEGER CHECK (quantity > 0),
    item_price      NUMBER(9, 2),
    CONSTRAINT order_items_orders_fk FOREIGN KEY (order_id) REFERENCES orders (order_id),
    CONSTRAINT order_items_books_fk FOREIGN KEY (book_id) REFERENCES books (book_id)
);

-- Promotions Table
CREATE TABLE promotions (
    promo_id        INTEGER PRIMARY KEY,
    promo_name      VARCHAR2(50),
    discount_percent NUMBER CHECK (discount_percent BETWEEN 0 AND 100),
    book_id         INTEGER,
    CONSTRAINT promotions_books_fk FOREIGN KEY (book_id) REFERENCES books (book_id)
);

-- Audit Log Table
CREATE TABLE audit_log (
    log_id          INTEGER PRIMARY KEY,
    table_name      VARCHAR2(50),
    operation       VARCHAR2(10) CHECK (operation IN ('INSERT', 'UPDATE', 'DELETE')),
    operation_time  TIMESTAMP DEFAULT SYSTIMESTAMP
);


