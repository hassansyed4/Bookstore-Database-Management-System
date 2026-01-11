--Categories

INSERT INTO categories VALUES (1, 'Fiction');
INSERT INTO categories VALUES (2, 'Non-Fiction');
INSERT INTO categories VALUES (3, 'Science');
INSERT INTO categories VALUES (4, 'History');
INSERT INTO categories VALUES (5, 'Technology');

--Authors

INSERT INTO authors VALUES (1, 'J.K. Rowling');
INSERT INTO authors VALUES (2, 'George Orwell');
INSERT INTO authors VALUES (3, 'Isaac Newton');
INSERT INTO authors VALUES (4, 'Yuval Noah Harari');
INSERT INTO authors VALUES (5, 'Elon Musk');

--Books

INSERT INTO books VALUES (1, 'Harry Potter', 20.99, 100, 1);
INSERT INTO books VALUES (2, '1984', 15.50, 200, 1);
INSERT INTO books VALUES (3, 'Principia Mathematica', 50.00, 50, 3);
INSERT INTO books VALUES (4, 'Sapiens', 30.99, 150, 4);
INSERT INTO books VALUES (5, 'Tesla: Innovator', 25.99, 80, 5);

--Book-Authors

INSERT INTO book_authors VALUES (1, 1);
INSERT INTO book_authors VALUES (2, 2);
INSERT INTO book_authors VALUES (3, 3);
INSERT INTO book_authors VALUES (4, 4);
INSERT INTO book_authors VALUES (5, 5);

--Users

INSERT INTO users VALUES (1, 'admin', 'admin123', 'admin@example.com', 'Admin');
INSERT INTO users VALUES (2, 'john_doe', 'john123', 'john@example.com', 'Customer');
INSERT INTO users VALUES (3, 'jane_doe', 'jane123', 'jane@example.com', 'Customer');

--Orders

INSERT INTO orders VALUES (1, 2, 50.99, SYSDATE);
INSERT INTO orders VALUES (2, 3, 100.99, SYSDATE);

--Order-Items

INSERT INTO order_items VALUES (1, 1, 1, 2, 20.99);
INSERT INTO order_items VALUES (2, 1, 2, 1, 15.50);
INSERT INTO order_items VALUES (3, 2, 3, 1, 50.00);

--Promotions

INSERT INTO promotions VALUES (1, 'New Year Sale', 20, 1);
INSERT INTO promotions VALUES (2, 'Summer Discount', 15, 2);

--Audit Log

INSERT INTO audit_log (table_name, operation, record_id, old_values, new_values)
VALUES ('books', 'INSERT', 101, NULL, 'title=Data Science 101, price=500, stock_quantity=10, category_id=1');

INSERT INTO audit_log (table_name, operation, record_id, old_values, new_values)
VALUES ('books', 'UPDATE', 102, 'title=AI Basics, price=400, stock_quantity=5, category_id=2',
                              'title=AI Basics, price=450, stock_quantity=7, category_id=2');

INSERT INTO audit_log (table_name, operation, record_id, old_values, new_values)
VALUES ('books', 'DELETE', 103, 'title=Machine Learning, price=600, stock_quantity=8, category_id=3', NULL);