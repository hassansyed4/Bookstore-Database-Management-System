--Categories

INSERT INTO categories VALUES (1, 'Fiction');
INSERT INTO categories VALUES (2, 'Non-Fiction');
INSERT INTO categories VALUES (3, 'Science');
INSERT INTO categories VALUES (4, 'History');
INSERT INTO categories VALUES (5, 'Technology');
INSERT INTO categories VALUES (6, 'Romance');
INSERT INTO categories VALUES (7, 'Mystery');
INSERT INTO categories VALUES (8, 'Thriller');
INSERT INTO categories VALUES (9, 'Biography');
INSERT INTO categories VALUES (10, 'Historical Fiction');
INSERT INTO categories VALUES (11, 'Self-Help');

--Authors

INSERT INTO authors VALUES (1, 'J.K. Rowling');
INSERT INTO authors VALUES (2, 'George Orwell');
INSERT INTO authors VALUES (3, 'Isaac Newton');
INSERT INTO authors VALUES (4, 'Yuval Noah Harari');
INSERT INTO authors VALUES (5, 'Elon Musk');
INSERT INTO authors (author_id, author_name) VALUES (11, 'Agatha Christie');
INSERT INTO authors (author_id, author_name) VALUES (12, 'Stephen King');
INSERT INTO authors (author_id, author_name) VALUES (13, 'Jane Austen');
INSERT INTO authors (author_id, author_name) VALUES (6, 'Isaac Asimov');
INSERT INTO authors (author_id, author_name) VALUES (7, 'Mark Twain');
INSERT INTO authors (author_id, author_name) VALUES (8, 'Dan Brown');
INSERT INTO authors (author_id, author_name) VALUES (9, 'Albert Einstein');
INSERT INTO authors (author_id, author_name) VALUES (10, 'Barack Obama');

--Books

INSERT INTO books VALUES (1, 'Harry Potter', 20.99, 100, 1);
INSERT INTO books VALUES (2, '1984', 15.50, 200, 1);
INSERT INTO books VALUES (3, 'Principia Mathematica', 50.00, 50, 3);
INSERT INTO books VALUES (4, 'Sapiens', 30.99, 150, 4);
INSERT INTO books VALUES (5, 'Tesla: Innovator', 25.99, 80, 5);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (11, 'Harry Potter and the Sorcerer\s Stone', 15.99, 100, 1);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (12, '1920', 12.99, 50, 2);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (13, 'Murder on the Orient Express', 10.99, 75, 6);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (14, 'The Shining', 13.50, 60, 7);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (15, 'Pride and Prejudice', 9.99, 120, 4);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (6, 'Foundation', 14.99, 45, 3);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (7, 'The Adventures of Tom Sawyer', 8.99, 90, 8);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (8, 'The Da Vinci Code', 16.99, 80, 6);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (9, 'A Brief History of Time', 20.99, 30, 3);
INSERT INTO books (book_id, title, price, stock_quantity, category_id) VALUES (10, 'The Audacity of Hope', 18.99, 60, 10);

--Book-Authors

INSERT INTO book_authors VALUES (1, 1);
INSERT INTO book_authors VALUES (2, 2);
INSERT INTO book_authors VALUES (3, 3);
INSERT INTO book_authors VALUES (4, 4);
INSERT INTO book_authors VALUES (5, 5);
INSERT INTO book_authors (book_id, author_id) VALUES (11, 11);
INSERT INTO book_authors (book_id, author_id) VALUES (12, 12);
INSERT INTO book_authors (book_id, author_id) VALUES (13, 13);
INSERT INTO book_authors (book_id, author_id) VALUES (6, 6);
INSERT INTO book_authors (book_id, author_id) VALUES (7, 7);
INSERT INTO book_authors (book_id, author_id) VALUES (8, 8);
INSERT INTO book_authors (book_id, author_id) VALUES (9, 9);
INSERT INTO book_authors (book_id, author_id) VALUES (10, 10);

--Users
INSERT INTO users VALUES (1, 'admin_master', 'admin_master123', 'admin_master@example.com', 'Admin', 40);
INSERT INTO users VALUES (2, 'john_doe', 'john_doe123', 'john.doe@example.com', 'Customer', 25);
INSERT INTO users VALUES (3, 'jane_doe', 'jane_doe123', 'jane.doe@example.com', 'Customer', 27);
INSERT INTO users VALUES (4, 'peter_parker', 'peter123', 'peter.parker@example.com', 'Admin', 99);
INSERT INTO users VALUES (5, 'mary_jane', 'mary123', 'mary.jane@example.com', 'Customer', 24);
INSERT INTO users VALUES (6, 'tony_stark', 'ironman123', 'tony.stark@example.com', 'Admin', 45);
INSERT INTO users VALUES (7, 'bruce_wayne', 'batman123', 'bruce.wayne@example.com', 'Admin', 66);
INSERT INTO users VALUES (8, 'clark_kent', 'superman123', 'clark.kent@example.com', 'Customer', 28);
INSERT INTO users VALUES (9, 'natasha_romanoff', 'blackwidow123', 'natasha.romanoff@example.com', 'Customer', 29);
INSERT INTO users VALUES (10, 'steve_rogers', 'captain123', 'steve.rogers@example.com', 'Admin', 37);
INSERT INTO users VALUES (11, 'wanda_maximoff', 'scarlet123', 'wanda.maximoff@example.com', 'Customer', 80);
INSERT INTO users VALUES (12, 'bruce_banner', 'hulk123', 'bruce.banner@example.com', 'Customer', 33);
INSERT INTO users VALUES (13, 'diana_prince', 'wonder123', 'diana.prince@example.com', 'Customer', 30);

--Orders

INSERT INTO orders VALUES (1, 2, 50.99, SYSDATE);
INSERT INTO orders VALUES (2, 3, 100.99, SYSDATE);
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (11, 11, 59.97, TO_DATE('2023-11-15', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (12, 12, 120.50, TO_DATE('2023-11-16', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (3, 3, 78.25, TO_DATE('2023-11-17', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (4, 4, 99.00, TO_DATE('2023-11-18', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (5, 5, 45.99, TO_DATE('2023-11-19', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (6, 6, 112.75, TO_DATE('2023-11-20', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (7, 7, 86.50, TO_DATE('2023-11-21', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (8, 8, 142.99, TO_DATE('2023-11-22', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (9, 9, 66.40, TO_DATE('2023-11-23', 'YYYY-MM-DD'));
INSERT INTO orders (order_id, user_id, total_price, order_date) VALUES (10, 10, 88.99, TO_DATE('2023-11-24', 'YYYY-MM-DD'));

--Order-Items

INSERT INTO order_items VALUES (1, 1, 1, 2, 20.99);
INSERT INTO order_items VALUES (2, 1, 2, 1, 15.50);
INSERT INTO order_items VALUES (3, 2, 3, 1, 50.00);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (11, 11, 11, 3, 15.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (12, 12, 12, 5, 12.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (4, 4, 4, 3, 13.50);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (5, 5, 5, 2, 9.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (6, 6, 6, 4, 14.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (7, 7, 7, 1, 8.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (8, 8, 8, 5, 16.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (9, 9, 9, 3, 20.99);
INSERT INTO order_items (ord_item_id, order_id, book_id, quantity, item_price) VALUES (10, 10, 10, 2, 18.99);

--Promotions

INSERT INTO promotions VALUES (1, 'New Year Sale', 20, 1);
INSERT INTO promotions VALUES (2, 'Summer Discount', 15, 2);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (11, 'Black Friday Sale', 25, 15);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (12, 'Summer Discount', 15, 13);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (3, 'Holiday Discount', 30, 12);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (4, 'Clearance Sale', 10, 11);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (5, 'Special Offer', 20, 14);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (6, 'Weekend Offer', 5, 3);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (7, 'Festive Season', 40, 4);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (8, 'End of Year Sale', 15, 6);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (9, 'New Year Discount', 25, 8);
INSERT INTO promotions (promo_id, promo_name, discount_percent, book_id) VALUES (10, 'Winter Sale', 10, 10);

--Audit Log

INSERT INTO audit_log (table_name, operation, record_id, old_values, new_values)
VALUES ('books', 'INSERT', 101, NULL, 'title=Data Science 101, price=500, stock_quantity=10, category_id=1');

INSERT INTO audit_log (table_name, operation, record_id, old_values, new_values)
VALUES ('books', 'UPDATE', 102, 'title=AI Basics, price=400, stock_quantity=5, category_id=2',
                              'title=AI Basics, price=450, stock_quantity=7, category_id=2');

INSERT INTO audit_log (table_name, operation, record_id, old_values, new_values)
VALUES ('books', 'DELETE', 103, 'title=Machine Learning, price=600, stock_quantity=8, category_id=3', NULL);