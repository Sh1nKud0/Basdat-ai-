create database basdatfinal
GO
USE basdatfinal
GO

-- Table: Customer
CREATE TABLE Customer (
    customer_id VARCHAR(10) PRIMARY KEY,
    cust_name VARCHAR(50),
    address TEXT,
    phone_number VARCHAR(15),
    password VARCHAR(20)
);

-- Table: Seller
CREATE TABLE Seller (
    seller_id VARCHAR(10) PRIMARY KEY,
    seller_name VARCHAR(50),
    address TEXT,
    rating FLOAT,
    operational_time VARCHAR(20)
);

-- Table: Driver
CREATE TABLE Driver (
    driver_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    rating FLOAT
);

-- Table: Promo
CREATE TABLE Promo (
    promo_id VARCHAR(10) PRIMARY KEY,
    promo_code VARCHAR(20),
    start_date DATE,
    end_date DATE,
    discount_percentage INT
);

-- Table: Food
CREATE TABLE Food (
    food_id VARCHAR(10) PRIMARY KEY,
    food_name VARCHAR(50),
    food_price INT
);

-- Table: Drink
CREATE TABLE Drink (
    drink_id VARCHAR(10) PRIMARY KEY,
    drink_name VARCHAR(50),
    drink_price INT
);

-- Table: Menu
CREATE TABLE Menu (
    menu_id VARCHAR(10) PRIMARY KEY,
    food_id VARCHAR(10),
    drink_id VARCHAR(10),
    FOREIGN KEY (food_id) REFERENCES Food(food_id),
    FOREIGN KEY (drink_id) REFERENCES Drink(drink_id)
);

-- Table: Order
CREATE TABLE [Order] (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    driver_id VARCHAR(10),
    seller_id VARCHAR(10),
    menu_id VARCHAR(10),
    order_date DATE,
    time_order TIME,
    order_price INT,
    pay_method VARCHAR(20),
    note TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    FOREIGN KEY (seller_id) REFERENCES Seller(seller_id),
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

ALTER TABLE [Order]
ADD promo_id VARCHAR(10)

ALTER TABLE [Order]
DROP COLUMN promo_id

ALTER TABLE [Order]
DROP constraint FK_Order_Menu

ALTER TABLE [Order]
ADD CONSTRAINT FK_Order_Menu
FOREIGN KEY (promo_id) REFERENCES Promo(promo_id);

ALTER TABLE Menu
ADD totalSell int NULL

INSERT INTO Customer (customer_id, cust_name, address, phone_number, password) VALUES
('CUST0001', 'Customer 1', 'Address 1', '081250881342', 'vEFilwQq'),
('CUST0002', 'Customer 2', 'Address 2', '081254687283', 'SCaZG1ek'),
('CUST0003', 'Customer 3', 'Address 3', '081292969852', '7SOcjjlG'),
('CUST0004', 'Customer 4', 'Address 4', '081222418519', 'OgP5OnuM'),
('CUST0005', 'Customer 5', 'Address 5', '081260811450', 'FFuz9vDw'),
('CUST0006', 'Customer 6', 'Address 6', '081250488526', 'RgQoVfx4'),
('CUST0007', 'Customer 7', 'Address 7', '081273963253', 'piQOLU7G'),
('CUST0008', 'Customer 8', 'Address 8', '081261796167', 'bcYnc3VX'),
('CUST0009', 'Customer 9', 'Address 9', '081217896404', 'QFuDDMIL'),
('CUST0010', 'Customer 10', 'Address 10', '081222948879', '8HABYuwj'),
('CUST0011', 'Customer 11', 'Address 11', '081283937077', 'ZRKxph5T'),
('CUST0012', 'Customer 12', 'Address 12', '081290501252', 'qA66O6Hv'),
('CUST0013', 'Customer 13', 'Address 13', '081214058253', 'olAXIFuw'),
('CUST0014', 'Customer 14', 'Address 14', '081283450090', 'o4zrjODS'),
('CUST0015', 'Customer 15', 'Address 15', '081264766114', 'TnAKGOqj'),
('CUST0016', 'Customer 16', 'Address 16', '081253587827', 'C4ZX0DRK'),
('CUST0017', 'Customer 17', 'Address 17', '081218581709', 'HqsqQAwt'),
('CUST0018', 'Customer 18', 'Address 18', '081241978865', 'WCr6ZX9C'),
('CUST0019', 'Customer 19', 'Address 19', '081257487555', 'i4vyaWTM'),
('CUST0020', 'Customer 20', 'Address 20', '081260699717', 'Ydio32EV'),
('CUST0021', 'Customer 21', 'Address 21', '081279082990', 'b43twVqM'),
('CUST0022', 'Customer 22', 'Address 22', '081270840171', 'h1NrMIjz'),
('CUST0023', 'Customer 23', 'Address 23', '081223676745', 'tRQguMJV'),
('CUST0024', 'Customer 24', 'Address 24', '081270501334', 'dDSc9VSg'),
('CUST0025', 'Customer 25', 'Address 25', '081265690157', 'm792EZz1'),
('CUST0026', 'Customer 26', 'Address 26', '081226798349', 'gG6geJ0M'),
('CUST0027', 'Customer 27', 'Address 27', '081234439101', 'Nnx2P5Fe'),
('CUST0028', 'Customer 28', 'Address 28', '081266642302', 'ojOy7M2r'),
('CUST0029', 'Customer 29', 'Address 29', '081241218452', 'YZiWCguC'),
('CUST0030', 'Customer 30', 'Address 30', '081262699763', 'V5eW2F68');
INSERT INTO Seller (seller_id, seller_name, address, rating, operational_time) VALUES
('SELL0001', 'Seller 1', 'Seller Address 1', 3.7, '6 hours'),
('SELL0002', 'Seller 2', 'Seller Address 2', 4.3, '21 hours'),
('SELL0003', 'Seller 3', 'Seller Address 3', 4.5, '15 hours'),
('SELL0004', 'Seller 4', 'Seller Address 4', 4.8, '14 hours'),
('SELL0005', 'Seller 5', 'Seller Address 5', 3.3, '6 hours'),
('SELL0006', 'Seller 6', 'Seller Address 6', 4.0, '22 hours'),
('SELL0007', 'Seller 7', 'Seller Address 7', 3.3, '21 hours'),
('SELL0008', 'Seller 8', 'Seller Address 8', 4.1, '24 hours'),
('SELL0009', 'Seller 9', 'Seller Address 9', 4.5, '23 hours'),
('SELL0010', 'Seller 10', 'Seller Address 10', 3.0, '16 hours'),
('SELL0011', 'Seller 11', 'Seller Address 11', 4.1, '23 hours'),
('SELL0012', 'Seller 12', 'Seller Address 12', 5.0, '7 hours'),
('SELL0013', 'Seller 13', 'Seller Address 13', 4.2, '11 hours'),
('SELL0014', 'Seller 14', 'Seller Address 14', 4.5, '16 hours'),
('SELL0015', 'Seller 15', 'Seller Address 15', 4.8, '13 hours'),
('SELL0016', 'Seller 16', 'Seller Address 16', 3.1, '15 hours'),
('SELL0017', 'Seller 17', 'Seller Address 17', 4.8, '17 hours'),
('SELL0018', 'Seller 18', 'Seller Address 18', 4.1, '24 hours'),
('SELL0019', 'Seller 19', 'Seller Address 19', 3.9, '19 hours'),
('SELL0020', 'Seller 20', 'Seller Address 20', 3.3, '21 hours');
INSERT INTO Driver (driver_id, name, rating) VALUES
('DRIV0001', 'Driver 1', 4.8),
('DRIV0002', 'Driver 2', 3.5),
('DRIV0003', 'Driver 3', 4.9),
('DRIV0004', 'Driver 4', 3.8),
('DRIV0005', 'Driver 5', 3.3),
('DRIV0006', 'Driver 6', 3.9),
('DRIV0007', 'Driver 7', 3.9),
('DRIV0008', 'Driver 8', 4.8),
('DRIV0009', 'Driver 9', 3.7),
('DRIV0010', 'Driver 10', 4.7),
('DRIV0011', 'Driver 11', 4.2),
('DRIV0012', 'Driver 12', 5.0),
('DRIV0013', 'Driver 13', 4.4),
('DRIV0014', 'Driver 14', 3.9),
('DRIV0015', 'Driver 15', 3.2);
INSERT INTO Promo (promo_id, promo_code, start_date, end_date, discount_percentage) VALUES
('PROM0001', 'CODE1', '2024-01-01', '2024-02-01', 28),
('PROM0002', 'CODE2', '2024-01-11', '2024-02-11', 37),
('PROM0003', 'CODE3', '2024-01-21', '2024-02-21', 48),
('PROM0004', 'CODE4', '2024-01-31', '2024-03-02', 45),
('PROM0005', 'CODE5', '2024-02-10', '2024-03-12', 21),
('PROM0006', 'CODE6', '2024-02-20', '2024-03-22', 24),
('PROM0007', 'CODE7', '2024-03-01', '2024-04-01', 39),
('PROM0008', 'CODE8', '2024-03-11', '2024-04-11', 42),
('PROM0009', 'CODE9', '2024-03-21', '2024-04-21', 23),
('PROM0010', 'CODE10', '2024-03-31', '2024-05-01', 21);
INSERT INTO Food (food_id, food_name, food_price) VALUES
('FOOD0001', 'Food 1', 15201),
('FOOD0002', 'Food 2', 49772),
('FOOD0003', 'Food 3', 19137),
('FOOD0004', 'Food 4', 29124),
('FOOD0005', 'Food 5', 7776),
('FOOD0006', 'Food 6', 44824),
('FOOD0007', 'Food 7', 39904),
('FOOD0008', 'Food 8', 19367),
('FOOD0009', 'Food 9', 32168),
('FOOD0010', 'Food 10', 16919),
('FOOD0011', 'Food 11', 31348),
('FOOD0012', 'Food 12', 11254),
('FOOD0013', 'Food 13', 19069),
('FOOD0014', 'Food 14', 8581),
('FOOD0015', 'Food 15', 30136),
('FOOD0016', 'Food 16', 7762),
('FOOD0017', 'Food 17', 36276),
('FOOD0018', 'Food 18', 37493),
('FOOD0019', 'Food 19', 48615),
('FOOD0020', 'Food 20', 35383),
('FOOD0021', 'Food 21', 27529),
('FOOD0022', 'Food 22', 27529),
('FOOD0023', 'Food 23', 9319),
('FOOD0024', 'Food 24', 18949),
('FOOD0025', 'Food 25', 23212),
('FOOD0026', 'Food 26', 29802),
('FOOD0027', 'Food 27', 36623),
('FOOD0028', 'Food 28', 43459),
('FOOD0029', 'Food 29', 20596),
('FOOD0030', 'Food 30', 22793);
INSERT INTO Drink (drink_id, drink_name, drink_price) VALUES
('DRINK0001', 'Drink 1', 14489),
('DRINK0002', 'Drink 2', 16712),
('DRINK0003', 'Drink 3', 13491),
('DRINK0004', 'Drink 4', 12698),
('DRINK0005', 'Drink 5', 16780),
('DRINK0006', 'Drink 6', 8597),
('DRINK0007', 'Drink 7', 4325),
('DRINK0008', 'Drink 8', 12075),
('DRINK0009', 'Drink 9', 18396),
('DRINK0010', 'Drink 10', 14096),
('DRINK0011', 'Drink 11', 3196),
('DRINK0012', 'Drink 12', 3391),
('DRINK0013', 'Drink 13', 13681),
('DRINK0014', 'Drink 14', 10834),
('DRINK0015', 'Drink 15', 19359),
('DRINK0016', 'Drink 16', 9456),
('DRINK0017', 'Drink 17', 5547),
('DRINK0018', 'Drink 18', 19693),
('DRINK0019', 'Drink 19', 4836),
('DRINK0020', 'Drink 20', 18177),
('DRINK0021', 'Drink 21', 18561),
('DRINK0022', 'Drink 22', 6847),
('DRINK0023', 'Drink 23', 5343),
('DRINK0024', 'Drink 24', 9666),
('DRINK0025', 'Drink 25', 18083),
('DRINK0026', 'Drink 26', 18560),
('DRINK0027', 'Drink 27', 10350),
('DRINK0028', 'Drink 28', 10368),
('DRINK0029', 'Drink 29', 8198),
('DRINK0030', 'Drink 30', 4085);

INSERT INTO Menu (menu_id, food_id, drink_id) VALUES
('MENU0001', 'FOOD0013', 'DRINK0029'),
('MENU0002', 'FOOD0029', 'DRINK0019'),
('MENU0003', 'FOOD0018', 'DRINK0018'),
('MENU0004', 'FOOD0013', 'DRINK0016'),
('MENU0005', 'FOOD0026', 'DRINK0006'),
('MENU0006', 'FOOD0030', 'DRINK0014'),
('MENU0007', 'FOOD0020', 'DRINK0022'),
('MENU0008', 'FOOD0005', 'DRINK0011'),
('MENU0009', 'FOOD0012', 'DRINK0025'),
('MENU0010', 'FOOD0027', 'DRINK0021'),
('MENU0011', 'FOOD0029', 'DRINK0013'),
('MENU0012', 'FOOD0011', 'DRINK0003'),
('MENU0013', 'FOOD0004', 'DRINK0004'),
('MENU0014', 'FOOD0020', 'DRINK0020'),
('MENU0015', 'FOOD0025', 'DRINK0025'),
('MENU0016', 'FOOD0011', 'DRINK0027'),
('MENU0017', 'FOOD0019', 'DRINK0028'),
('MENU0018', 'FOOD0023', 'DRINK0019'),
('MENU0019', 'FOOD0010', 'DRINK0027'),
('MENU0020', 'FOOD0007', 'DRINK0007'),
('MENU0021', 'FOOD0014', 'DRINK0027'),
('MENU0022', 'FOOD0003', 'DRINK0027'),
('MENU0023', 'FOOD0025', 'DRINK0029'),
('MENU0024', 'FOOD0005', 'DRINK0016'),
('MENU0025', 'FOOD0013', 'DRINK0003'),
('MENU0026', 'FOOD0011', 'DRINK0013'),
('MENU0027', 'FOOD0023', 'DRINK0021'),
('MENU0028', 'FOOD0014', 'DRINK0027'),
('MENU0029', 'FOOD0029', 'DRINK0007'),
('MENU0030', 'FOOD0010', 'DRINK0024'),
('MENU0031', 'FOOD0030', 'DRINK0008'),
('MENU0032', 'FOOD0003', 'DRINK0027'),
('MENU0033', 'FOOD0022', 'DRINK0024'),
('MENU0034', 'FOOD0018', 'DRINK0007'),
('MENU0035', 'FOOD0011', 'DRINK0007'),
('MENU0036', 'FOOD0001', 'DRINK0028'),
('MENU0037', 'FOOD0002', 'DRINK0015'),
('MENU0038', 'FOOD0017', 'DRINK0012'),
('MENU0039', 'FOOD0003', 'DRINK0011'),
('MENU0040', 'FOOD0005', 'DRINK0015');

UPDATE MENU 
SET totalSell = CASE 
    WHEN menu_id = 'MENU0001' THEN 4
    WHEN menu_id = 'MENU0002' THEN 4
    WHEN menu_id = 'MENU0003' THEN 4
    WHEN menu_id = 'MENU0004' THEN 2
    WHEN menu_id = 'MENU0005' THEN 5
    WHEN menu_id = 'MENU0006' THEN 4
    WHEN menu_id = 'MENU0007' THEN 4
    WHEN menu_id = 'MENU0008' THEN 4
    WHEN menu_id = 'MENU0009' THEN 2
    WHEN menu_id = 'MENU0010' THEN 4
    WHEN menu_id = 'MENU0011' THEN 1
    WHEN menu_id = 'MENU0012' THEN 3
    WHEN menu_id = 'MENU0013' THEN 4
    WHEN menu_id = 'MENU0014' THEN 5
    WHEN menu_id = 'MENU0015' THEN 5
    WHEN menu_id = 'MENU0016' THEN 2
    WHEN menu_id = 'MENU0017' THEN 5
    WHEN menu_id = 'MENU0018' THEN 1
    WHEN menu_id = 'MENU0019' THEN 2
    WHEN menu_id = 'MENU0020' THEN 1
    WHEN menu_id = 'MENU0021' THEN 2
    WHEN menu_id = 'MENU0022' THEN 2
    WHEN menu_id = 'MENU0023' THEN 5
    WHEN menu_id = 'MENU0024' THEN 1
    WHEN menu_id = 'MENU0025' THEN 3
    WHEN menu_id = 'MENU0026' THEN 1
    WHEN menu_id = 'MENU0027' THEN 4
    WHEN menu_id = 'MENU0028' THEN 2
    WHEN menu_id = 'MENU0029' THEN 4
    WHEN menu_id = 'MENU0030' THEN 2
    WHEN menu_id = 'MENU0031' THEN 2
    WHEN menu_id = 'MENU0032' THEN 5
    WHEN menu_id = 'MENU0033' THEN 1
    WHEN menu_id = 'MENU0034' THEN 3
    WHEN menu_id = 'MENU0035' THEN 5
    WHEN menu_id = 'MENU0036' THEN 4
    WHEN menu_id = 'MENU0037' THEN 2
    WHEN menu_id = 'MENU0038' THEN 5
    WHEN menu_id = 'MENU0039' THEN 2
    WHEN menu_id = 'MENU0040' THEN 3
    ELSE totalSell
END;

INSERT INTO [Order] (order_id, customer_id, driver_id, seller_id, menu_id, order_date, time_order, order_price, pay_method, note) VALUES
('ORD00001', 'CUST0004', 'DRIV0002', 'SELL0008', 'MENU0004', '2024-01-01', '21:37:23', 51652, 'card', 'Double cheese'),
('ORD00002', 'CUST0005', 'DRIV0006', 'SELL0003', 'MENU0018', '2024-01-02', '02:28:26', 75230, 'cash', ''),
('ORD00003', 'CUST0003', 'DRIV0015', 'SELL0015', 'MENU0010', '2024-01-03', '09:33:28', 74714, 'cash', 'No onion'),
('ORD00004', 'CUST0018', 'DRIV0009', 'SELL0001', 'MENU0027', '2024-01-04', '19:33:18', 43199, 'card', ''),
('ORD00005', 'CUST0004', 'DRIV0001', 'SELL0011', 'MENU0037', '2024-01-05', '08:41:55', 34058, 'card', 'No onion'),
('ORD00006', 'CUST0009', 'DRIV0014', 'SELL0014', 'MENU0024', '2024-01-06', '17:11:44', 19078, 'card', 'No onion'),
('ORD00007', 'CUST0004', 'DRIV0007', 'SELL0010', 'MENU0003', '2024-01-07', '12:08:42', 58541, 'card', ''),
('ORD00008', 'CUST0016', 'DRIV0008', 'SELL0017', 'MENU0039', '2024-01-08', '19:37:10', 92532, 'q-ris', 'No onion'),
('ORD00009', 'CUST0023', 'DRIV0013', 'SELL0009', 'MENU0007', '2024-01-09', '20:39:35', 71369, 'q-ris', 'Double cheese'),
('ORD00010', 'CUST0029', 'DRIV0013', 'SELL0011', 'MENU0015', '2024-01-10', '07:17:18', 76798, 'q-ris', 'Extra sauce'),
('ORD00011', 'CUST0005', 'DRIV0010', 'SELL0003', 'MENU0012', '2024-01-11', '18:12:22', 33039, 'cash', 'Double cheese'),
('ORD00012', 'CUST0017', 'DRIV0011', 'SELL0016', 'MENU0018', '2024-01-12', '06:15:21', 97505, 'cash', 'Extra sauce'),
('ORD00013', 'CUST0028', 'DRIV0002', 'SELL0002', 'MENU0003', '2024-01-13', '08:36:21', 97213, 'cash', 'No onion'),
('ORD00014', 'CUST0005', 'DRIV0011', 'SELL0018', 'MENU0017', '2024-01-14', '12:51:57', 11617, 'card', 'Double cheese'),
('ORD00015', 'CUST0021', 'DRIV0011', 'SELL0011', 'MENU0017', '2024-01-15', '17:45:30', 46626, 'cash', 'Double cheese'),
('ORD00016', 'CUST0009', 'DRIV0007', 'SELL0012', 'MENU0014', '2024-01-16', '02:30:55', 25765, 'cash', 'Double cheese'),
('ORD00017', 'CUST0005', 'DRIV0012', 'SELL0017', 'MENU0016', '2024-01-17', '23:59:39', 23622, 'q-ris', 'Extra sauce'),
('ORD00018', 'CUST0004', 'DRIV0011', 'SELL0014', 'MENU0017', '2024-01-18', '03:48:01', 42033, 'q-ris', 'Double cheese'),
('ORD00019', 'CUST0023', 'DRIV0002', 'SELL0020', 'MENU0039', '2024-01-19', '20:43:30', 50631, 'card', 'Extra sauce'),
('ORD00020', 'CUST0022', 'DRIV0014', 'SELL0013', 'MENU0006', '2024-01-20', '02:23:39', 22914, 'q-ris', 'No onion'),
('ORD00021', 'CUST0016', 'DRIV0002', 'SELL0020', 'MENU0008', '2024-01-21', '18:08:26', 16172, 'card', 'Extra sauce'),
('ORD00022', 'CUST0017', 'DRIV0009', 'SELL0009', 'MENU0032', '2024-01-22', '11:51:11', 53435, 'q-ris', ''),
('ORD00023', 'CUST0024', 'DRIV0008', 'SELL0014', 'MENU0008', '2024-01-23', '01:45:26', 26020, 'q-ris', ''),
('ORD00024', 'CUST0012', 'DRIV0008', 'SELL0001', 'MENU0035', '2024-01-24', '03:56:29', 45039, 'q-ris', 'Double cheese'),
('ORD00025', 'CUST0018', 'DRIV0008', 'SELL0008', 'MENU0029', '2024-01-25', '09:25:24', 42192, 'cash', ''),
('ORD00026', 'CUST0026', 'DRIV0015', 'SELL0001', 'MENU0040', '2024-01-26', '01:50:03', 49893, 'cash', 'No onion'),
('ORD00027', 'CUST0002', 'DRIV0011', 'SELL0010', 'MENU0009', '2024-01-27', '09:00:33', 46690, 'q-ris', 'Double cheese'),
('ORD00028', 'CUST0022', 'DRIV0002', 'SELL0009', 'MENU0021', '2024-01-28', '07:22:10', 29351, 'cash', 'No onion'),
('ORD00029', 'CUST0025', 'DRIV0003', 'SELL0002', 'MENU0009', '2024-01-29', '23:38:09', 61744, 'cash', ''),
('ORD00030', 'CUST0004', 'DRIV0001', 'SELL0010', 'MENU0018', '2024-01-30', '01:41:54', 12936, 'card', ''),
('ORD00031', 'CUST0006', 'DRIV0014', 'SELL0010', 'MENU0022', '2024-01-31', '04:53:37', 45450, 'q-ris', 'Double cheese'),
('ORD00032', 'CUST0020', 'DRIV0014', 'SELL0005', 'MENU0030', '2024-02-01', '02:30:48', 50944, 'cash', 'No onion'),
('ORD00033', 'CUST0030', 'DRIV0002', 'SELL0003', 'MENU0025', '2024-02-02', '06:01:45', 80991, 'card', 'Double cheese'),
('ORD00034', 'CUST0005', 'DRIV0012', 'SELL0005', 'MENU0036', '2024-02-03', '15:26:51', 34835, 'cash', ''),
('ORD00035', 'CUST0008', 'DRIV0015', 'SELL0020', 'MENU0034', '2024-02-04', '05:40:29', 89665, 'q-ris', 'Double cheese'),
('ORD00036', 'CUST0027', 'DRIV0006', 'SELL0002', 'MENU0004', '2024-02-05', '19:55:17', 89330, 'cash', 'Double cheese'),
('ORD00037', 'CUST0017', 'DRIV0005', 'SELL0016', 'MENU0014', '2024-02-06', '07:07:17', 92219, 'cash', 'No onion'),
('ORD00038', 'CUST0005', 'DRIV0009', 'SELL0006', 'MENU0040', '2024-02-07', '20:00:54', 12530, 'card', 'Extra sauce'),
('ORD00039', 'CUST0028', 'DRIV0006', 'SELL0002', 'MENU0031', '2024-02-08', '13:14:44', 94464, 'card', ''),
('ORD00040', 'CUST0012', 'DRIV0006', 'SELL0008', 'MENU0025', '2024-02-09', '13:06:07', 96007, 'card', ''),
('ORD00041', 'CUST0005', 'DRIV0001', 'SELL0005', 'MENU0008', '2024-02-10', '12:03:56', 80769, 'cash', 'Double cheese'),
('ORD00042', 'CUST0018', 'DRIV0013', 'SELL0013', 'MENU0008', '2024-02-11', '08:52:19', 21613, 'q-ris', 'No onion'),
('ORD00043', 'CUST0021', 'DRIV0001', 'SELL0005', 'MENU0008', '2024-02-12', '16:21:57', 95776, 'q-ris', 'No onion'),
('ORD00044', 'CUST0017', 'DRIV0010', 'SELL0002', 'MENU0034', '2024-02-13', '12:37:27', 71141, 'cash', ''),
('ORD00045', 'CUST0006', 'DRIV0015', 'SELL0006', 'MENU0007', '2024-02-14', '20:56:38', 53035, 'card', ''),
('ORD00046', 'CUST0018', 'DRIV0008', 'SELL0015', 'MENU0025', '2024-02-15', '09:50:23', 23605, 'q-ris', 'Double cheese'),
('ORD00047', 'CUST0004', 'DRIV0001', 'SELL0003', 'MENU0012', '2024-02-16', '18:53:55', 51496, 'q-ris', ''),
('ORD00048', 'CUST0006', 'DRIV0004', 'SELL0003', 'MENU0028', '2024-02-17', '06:40:35', 89287, 'cash', 'No onion'),
('ORD00049', 'CUST0019', 'DRIV0014', 'SELL0004', 'MENU0028', '2024-02-18', '10:58:11', 48405, 'card', 'No onion'),
('ORD00050', 'CUST0016', 'DRIV0005', 'SELL0019', 'MENU0004', '2024-02-19', '16:49:21', 20542, 'q-ris', 'Extra sauce'),
('ORD00051', 'CUST0027', 'DRIV0005', 'SELL0011', 'MENU0010', '2024-02-20', '16:54:16', 37583, 'cash', 'Double cheese'),
('ORD00052', 'CUST0020', 'DRIV0008', 'SELL0004', 'MENU0037', '2024-02-21', '21:48:16', 55857, 'cash', 'No onion'),
('ORD00053', 'CUST0020', 'DRIV0010', 'SELL0013', 'MENU0033', '2024-02-22', '18:40:33', 92733, 'cash', 'Extra sauce'),
('ORD00054', 'CUST0009', 'DRIV0015', 'SELL0014', 'MENU0020', '2024-02-23', '03:27:21', 68829, 'cash', 'Double cheese'),
('ORD00055', 'CUST0019', 'DRIV0007', 'SELL0018', 'MENU0025', '2024-02-24', '22:25:34', 40337, 'card', 'Extra sauce'),
('ORD00056', 'CUST0007', 'DRIV0012', 'SELL0004', 'MENU0027', '2024-02-25', '05:27:06', 86670, 'cash', 'No onion'),
('ORD00057', 'CUST0008', 'DRIV0008', 'SELL0004', 'MENU0010', '2024-02-26', '23:17:45', 91828, 'q-ris', 'No onion'),
('ORD00058', 'CUST0001', 'DRIV0001', 'SELL0001', 'MENU0025', '2024-02-27', '00:23:09', 77961, 'card', 'Extra sauce'),
('ORD00059', 'CUST0027', 'DRIV0002', 'SELL0008', 'MENU0012', '2024-02-28', '10:44:14', 93949, 'q-ris', ''),
('ORD00060', 'CUST0026', 'DRIV0012', 'SELL0005', 'MENU0011', '2024-02-29', '04:56:22', 14653, 'cash', ''),
('ORD00061', 'CUST0002', 'DRIV0015', 'SELL0009', 'MENU0027', '2024-03-01', '16:50:38', 89752, 'q-ris', 'No onion'),
('ORD00062', 'CUST0006', 'DRIV0014', 'SELL0006', 'MENU0001', '2024-03-02', '14:49:33', 44502, 'card', 'Extra sauce'),
('ORD00063', 'CUST0005', 'DRIV0005', 'SELL0011', 'MENU0026', '2024-03-03', '17:57:07', 50222, 'q-ris', 'No onion'),
('ORD00064', 'CUST0025', 'DRIV0011', 'SELL0008', 'MENU0002', '2024-03-04', '14:36:35', 15399, 'cash', 'Extra sauce'),
('ORD00065', 'CUST0007', 'DRIV0009', 'SELL0007', 'MENU0021', '2024-03-05', '02:11:26', 41234, 'cash', 'No onion'),
('ORD00066', 'CUST0019', 'DRIV0010', 'SELL0005', 'MENU0009', '2024-03-06', '07:29:27', 15274, 'cash', 'Extra sauce'),
('ORD00067', 'CUST0016', 'DRIV0014', 'SELL0019', 'MENU0026', '2024-03-07', '11:56:01', 91725, 'q-ris', 'Double cheese'),
('ORD00068', 'CUST0027', 'DRIV0005', 'SELL0009', 'MENU0007', '2024-03-08', '16:09:29', 42002, 'card', 'Extra sauce'),
('ORD00069', 'CUST0020', 'DRIV0012', 'SELL0020', 'MENU0006', '2024-03-09', '21:14:59', 15542, 'cash', 'Extra sauce'),
('ORD00070', 'CUST0010', 'DRIV0001', 'SELL0006', 'MENU0007', '2024-03-10', '17:57:46', 90759, 'card', 'Double cheese'),
('ORD00071', 'CUST0004', 'DRIV0015', 'SELL0004', 'MENU0028', '2024-03-11', '13:04:56', 59869, 'card', 'Double cheese'),
('ORD00072', 'CUST0026', 'DRIV0003', 'SELL0003', 'MENU0004', '2024-03-12', '18:53:20', 95279, 'cash', 'Extra sauce'),
('ORD00073', 'CUST0018', 'DRIV0007', 'SELL0005', 'MENU0021', '2024-03-13', '14:31:31', 82979, 'q-ris', ''),
('ORD00074', 'CUST0004', 'DRIV0002', 'SELL0005', 'MENU0023', '2024-03-14', '17:17:24', 49366, 'q-ris', 'Extra sauce'),
('ORD00075', 'CUST0018', 'DRIV0010', 'SELL0010', 'MENU0003', '2024-03-15', '20:55:31', 69934, 'card', ''),
('ORD00076', 'CUST0014', 'DRIV0015', 'SELL0001', 'MENU0014', '2024-03-16', '01:41:12', 49122, 'cash', ''),
('ORD00077', 'CUST0003', 'DRIV0005', 'SELL0017', 'MENU0032', '2024-03-17', '11:10:54', 26893, 'q-ris', 'Double cheese'),
('ORD00078', 'CUST0022', 'DRIV0006', 'SELL0006', 'MENU0025', '2024-03-18', '14:39:37', 36749, 'cash', ''),
('ORD00079', 'CUST0008', 'DRIV0012', 'SELL0014', 'MENU0016', '2024-03-19', '19:10:42', 77773, 'q-ris', 'Double cheese'),
('ORD00080', 'CUST0016', 'DRIV0005', 'SELL0002', 'MENU0039', '2024-03-20', '08:27:09', 55037, 'card', 'No onion'),
('ORD00081', 'CUST0016', 'DRIV0002', 'SELL0006', 'MENU0006', '2024-03-21', '14:05:34', 50923, 'cash', 'Extra sauce'),
('ORD00082', 'CUST0020', 'DRIV0007', 'SELL0015', 'MENU0005', '2024-03-22', '13:42:33', 86524, 'q-ris', 'Extra sauce'),
('ORD00083', 'CUST0018', 'DRIV0015', 'SELL0002', 'MENU0019', '2024-03-23', '18:52:12', 60348, 'q-ris', 'Double cheese'),
('ORD00084', 'CUST0003', 'DRIV0015', 'SELL0001', 'MENU0018', '2024-03-24', '14:24:27', 22099, 'card', 'Double cheese'),
('ORD00085', 'CUST0007', 'DRIV0009', 'SELL0011', 'MENU0029', '2024-03-25', '10:22:09', 84988, 'cash', 'No onion'),
('ORD00086', 'CUST0020', 'DRIV0013', 'SELL0017', 'MENU0017', '2024-03-26', '05:12:14', 95281, 'cash', 'No onion'),
('ORD00087', 'CUST0021', 'DRIV0005', 'SELL0015', 'MENU0011', '2024-03-27', '07:52:30', 73767, 'card', ''),
('ORD00088', 'CUST0002', 'DRIV0002', 'SELL0017', 'MENU0020', '2024-03-28', '15:36:51', 28851, 'q-ris', ''),
('ORD00089', 'CUST0001', 'DRIV0005', 'SELL0008', 'MENU0031', '2024-03-29', '21:29:10', 81885, 'cash', 'Double cheese'),
('ORD00090', 'CUST0024', 'DRIV0009', 'SELL0011', 'MENU0031', '2024-03-30', '16:00:20', 34275, 'q-ris', 'Double cheese'),
('ORD00091', 'CUST0006', 'DRIV0015', 'SELL0015', 'MENU0008', '2024-03-31', '08:09:16', 64542, 'cash', 'Extra sauce'),
('ORD00092', 'CUST0016', 'DRIV0001', 'SELL0009', 'MENU0017', '2024-04-01', '14:57:57', 99702, 'card', 'No onion'),
('ORD00093', 'CUST0021', 'DRIV0002', 'SELL0016', 'MENU0001', '2024-04-02', '19:21:41', 80079, 'cash', 'No onion'),
('ORD00094', 'CUST0017', 'DRIV0003', 'SELL0017', 'MENU0008', '2024-04-03', '01:04:30', 26293, 'q-ris', ''),
('ORD00095', 'CUST0016', 'DRIV0012', 'SELL0016', 'MENU0035', '2024-04-04', '23:18:37', 84968, 'cash', ''),
('ORD00096', 'CUST0001', 'DRIV0001', 'SELL0009', 'MENU0014', '2024-04-05', '17:10:03', 94409, 'q-ris', 'Extra sauce'),
('ORD00097', 'CUST0014', 'DRIV0008', 'SELL0012', 'MENU0005', '2024-04-06', '06:09:20', 35302, 'cash', 'Extra sauce'),
('ORD00098', 'CUST0017', 'DRIV0002', 'SELL0014', 'MENU0039', '2024-04-07', '06:53:28', 51894, 'card', 'Extra sauce'),
('ORD00099', 'CUST0026', 'DRIV0002', 'SELL0009', 'MENU0007', '2024-04-08', '02:21:38', 76176, 'card', 'Double cheese'),
('ORD00100', 'CUST0022', 'DRIV0014', 'SELL0014', 'MENU0031', '2024-04-09', '16:13:38', 94506, 'card', 'Extra sauce'),
('ORD00101', 'CUST0021', 'DRIV0005', 'SELL0017', 'MENU0003', '2024-04-10', '04:30:06', 88639, 'card', 'Extra sauce'),
('ORD00102', 'CUST0003', 'DRIV0011', 'SELL0006', 'MENU0029', '2024-04-11', '08:19:45', 60587, 'cash', 'Extra sauce'),
('ORD00103', 'CUST0022', 'DRIV0013', 'SELL0013', 'MENU0021', '2024-04-12', '04:42:11', 87135, 'q-ris', 'Double cheese'),
('ORD00104', 'CUST0026', 'DRIV0009', 'SELL0017', 'MENU0008', '2024-04-13', '03:48:53', 82607, 'q-ris', 'Double cheese'),
('ORD00105', 'CUST0019', 'DRIV0002', 'SELL0001', 'MENU0037', '2024-04-14', '12:07:50', 65333, 'q-ris', 'Extra sauce'),
('ORD00106', 'CUST0025', 'DRIV0008', 'SELL0008', 'MENU0021', '2024-04-15', '12:52:44', 36693, 'q-ris', 'Double cheese'),
('ORD00107', 'CUST0004', 'DRIV0015', 'SELL0016', 'MENU0039', '2024-04-16', '15:09:46', 37012, 'cash', ''),
('ORD00108', 'CUST0010', 'DRIV0011', 'SELL0004', 'MENU0036', '2024-04-17', '17:46:03', 62521, 'q-ris', 'Extra sauce'),
('ORD00109', 'CUST0018', 'DRIV0013', 'SELL0016', 'MENU0028', '2024-04-18', '01:42:21', 33798, 'card', 'No onion'),
('ORD00110', 'CUST0020', 'DRIV0010', 'SELL0006', 'MENU0039', '2024-04-19', '18:32:44', 58419, 'card', ''),
('ORD00111', 'CUST0028', 'DRIV0008', 'SELL0006', 'MENU0020', '2024-04-20', '03:21:01', 36977, 'card', 'No onion'),
('ORD00112', 'CUST0008', 'DRIV0001', 'SELL0004', 'MENU0031', '2024-04-21', '14:52:19', 59868, 'cash', 'Extra sauce'),
('ORD00113', 'CUST0026', 'DRIV0015', 'SELL0005', 'MENU0019', '2024-04-22', '07:05:05', 31310, 'card', 'Double cheese'),
('ORD00114', 'CUST0024', 'DRIV0004', 'SELL0002', 'MENU0032', '2024-04-23', '22:44:19', 63702, 'card', 'Double cheese'),
('ORD00115', 'CUST0013', 'DRIV0003', 'SELL0014', 'MENU0006', '2024-04-24', '09:07:12', 10702, 'q-ris', 'No onion'),
('ORD00116', 'CUST0016', 'DRIV0010', 'SELL0007', 'MENU0037', '2024-04-25', '08:15:42', 24918, 'cash', ''),
('ORD00117', 'CUST0012', 'DRIV0015', 'SELL0019', 'MENU0031', '2024-04-26', '23:28:40', 32449, 'cash', ''),
('ORD00118', 'CUST0024', 'DRIV0004', 'SELL0011', 'MENU0012', '2024-04-27', '02:19:47', 78984, 'card', 'Extra sauce'),
('ORD00119', 'CUST0021', 'DRIV0012', 'SELL0007', 'MENU0029', '2024-04-28', '10:22:12', 66305, 'card', 'No onion'),
('ORD00120', 'CUST0022', 'DRIV0001', 'SELL0018', 'MENU0006', '2024-04-29', '23:08:34', 16650, 'q-ris', 'Extra sauce'),
('ORD00121', 'CUST0007', 'DRIV0012', 'SELL0013', 'MENU0001', '2024-04-30', '03:25:22', 64260, 'cash', 'No onion'),
('ORD00122', 'CUST0004', 'DRIV0014', 'SELL0001', 'MENU0018', '2024-05-01', '23:05:31', 71645, 'cash', 'Double cheese'),
('ORD00123', 'CUST0013', 'DRIV0015', 'SELL0020', 'MENU0027', '2024-05-02', '19:59:47', 54164, 'q-ris', 'No onion'),
('ORD00124', 'CUST0004', 'DRIV0006', 'SELL0014', 'MENU0029', '2024-05-03', '22:31:26', 27690, 'cash', ''),
('ORD00125', 'CUST0017', 'DRIV0005', 'SELL0008', 'MENU0032', '2024-05-04', '17:19:53', 71862, 'q-ris', 'Double cheese'),
('ORD00126', 'CUST0030', 'DRIV0004', 'SELL0013', 'MENU0020', '2024-05-05', '12:30:09', 79347, 'q-ris', 'Double cheese'),
('ORD00127', 'CUST0003', 'DRIV0011', 'SELL0015', 'MENU0003', '2024-05-06', '05:47:55', 44761, 'card', 'Double cheese'),
('ORD00128', 'CUST0012', 'DRIV0004', 'SELL0015', 'MENU0022', '2024-05-07', '13:02:37', 95031, 'q-ris', 'Extra sauce'),
('ORD00129', 'CUST0021', 'DRIV0009', 'SELL0003', 'MENU0003', '2024-05-08', '00:07:40', 41144, 'card', 'No onion'),
('ORD00130', 'CUST0011', 'DRIV0010', 'SELL0020', 'MENU0003', '2024-05-09', '06:19:35', 72291, 'q-ris', 'Extra sauce'),
('ORD00131', 'CUST0017', 'DRIV0008', 'SELL0006', 'MENU0019', '2024-05-10', '12:50:16', 93469, 'card', 'Extra sauce'),
('ORD00132', 'CUST0014', 'DRIV0012', 'SELL0016', 'MENU0005', '2024-05-11', '06:52:10', 37203, 'card', 'Double cheese'),
('ORD00133', 'CUST0023', 'DRIV0015', 'SELL0001', 'MENU0025', '2024-05-12', '19:53:58', 65102, 'q-ris', 'No onion'),
('ORD00134', 'CUST0014', 'DRIV0004', 'SELL0020', 'MENU0002', '2024-05-13', '03:40:39', 68521, 'cash', 'Double cheese'),
('ORD00135', 'CUST0011', 'DRIV0003', 'SELL0019', 'MENU0014', '2024-05-14', '00:27:58', 41366, 'q-ris', 'No onion'),
('ORD00136', 'CUST0003', 'DRIV0009', 'SELL0016', 'MENU0013', '2024-05-15', '00:49:30', 40126, 'cash', ''),
('ORD00137', 'CUST0011', 'DRIV0013', 'SELL0019', 'MENU0030', '2024-05-16', '00:42:00', 47797, 'cash', ''),
('ORD00138', 'CUST0007', 'DRIV0007', 'SELL0007', 'MENU0026', '2024-05-17', '19:16:46', 77723, 'q-ris', ''),
('ORD00139', 'CUST0005', 'DRIV0003', 'SELL0014', 'MENU0011', '2024-05-18', '14:46:25', 79944, 'cash', 'Extra sauce'),
('ORD00140', 'CUST0013', 'DRIV0001', 'SELL0019', 'MENU0021', '2024-05-19', '03:26:57', 13749, 'cash', 'Double cheese'),
('ORD00141', 'CUST0007', 'DRIV0005', 'SELL0005', 'MENU0025', '2024-05-20', '09:56:19', 70433, 'card', 'Extra sauce'),
('ORD00142', 'CUST0001', 'DRIV0014', 'SELL0009', 'MENU0017', '2024-05-21', '05:13:45', 99764, 'q-ris', 'Double cheese'),
('ORD00143', 'CUST0019', 'DRIV0007', 'SELL0016', 'MENU0039', '2024-05-22', '15:01:00', 14086, 'card', 'Double cheese'),
('ORD00144', 'CUST0004', 'DRIV0015', 'SELL0016', 'MENU0032', '2024-05-23', '03:46:49', 56205, 'cash', 'Double cheese'),
('ORD00145', 'CUST0003', 'DRIV0011', 'SELL0020', 'MENU0005', '2024-05-24', '11:42:39', 75200, 'q-ris', 'Double cheese'),
('ORD00146', 'CUST0007', 'DRIV0001', 'SELL0015', 'MENU0013', '2024-05-25', '23:18:41', 33426, 'q-ris', 'Extra sauce'),
('ORD00147', 'CUST0020', 'DRIV0015', 'SELL0002', 'MENU0039', '2024-05-26', '15:31:26', 92797, 'card', ''),
('ORD00148', 'CUST0009', 'DRIV0009', 'SELL0012', 'MENU0033', '2024-05-27', '16:01:07', 88805, 'card', ''),
('ORD00149', 'CUST0027', 'DRIV0002', 'SELL0014', 'MENU0036', '2024-05-28', '05:04:18', 59881, 'cash', ''),
('ORD00150', 'CUST0003', 'DRIV0008', 'SELL0015', 'MENU0010', '2024-05-29', '23:52:54', 65874, 'q-ris', 'Double cheese'),
('ORD00151', 'CUST0017', 'DRIV0001', 'SELL0017', 'MENU0040', '2024-05-30', '11:37:46', 52613, 'cash', 'Extra sauce'),
('ORD00152', 'CUST0006', 'DRIV0004', 'SELL0007', 'MENU0025', '2024-05-31', '09:13:52', 40471, 'card', 'No onion'),
('ORD00153', 'CUST0003', 'DRIV0003', 'SELL0006', 'MENU0006', '2024-06-01', '13:23:29', 65713, 'q-ris', 'Extra sauce'),
('ORD00154', 'CUST0024', 'DRIV0005', 'SELL0011', 'MENU0017', '2024-06-02', '17:54:09', 32828, 'q-ris', 'Extra sauce'),
('ORD00155', 'CUST0029', 'DRIV0008', 'SELL0013', 'MENU0011', '2024-06-03', '15:05:44', 61932, 'card', ''),
('ORD00156', 'CUST0003', 'DRIV0011', 'SELL0009', 'MENU0006', '2024-06-04', '16:13:07', 19622, 'q-ris', ''),
('ORD00157', 'CUST0001', 'DRIV0006', 'SELL0018', 'MENU0027', '2024-06-05', '23:44:53', 15117, 'q-ris', 'Extra sauce'),
('ORD00158', 'CUST0014', 'DRIV0006', 'SELL0014', 'MENU0016', '2024-06-06', '05:21:11', 49709, 'cash', 'Extra sauce'),
('ORD00159', 'CUST0005', 'DRIV0003', 'SELL0018', 'MENU0029', '2024-06-07', '00:10:49', 52213, 'cash', 'No onion'),
('ORD00160', 'CUST0012', 'DRIV0014', 'SELL0001', 'MENU0022', '2024-06-08', '17:32:24', 10708, 'q-ris', 'Double cheese'),
('ORD00161', 'CUST0015', 'DRIV0010', 'SELL0014', 'MENU0014', '2024-06-09', '02:31:53', 71963, 'cash', 'Double cheese'),
('ORD00162', 'CUST0029', 'DRIV0008', 'SELL0017', 'MENU0037', '2024-06-10', '04:21:07', 69001, 'card', 'Double cheese'),
('ORD00163', 'CUST0006', 'DRIV0002', 'SELL0010', 'MENU0022', '2024-06-11', '19:40:02', 31640, 'q-ris', 'No onion'),
('ORD00164', 'CUST0011', 'DRIV0010', 'SELL0008', 'MENU0025', '2024-06-12', '22:14:42', 13998, 'card', 'No onion'),
('ORD00165', 'CUST0028', 'DRIV0013', 'SELL0015', 'MENU0007', '2024-06-13', '10:26:43', 80336, 'q-ris', 'Extra sauce'),
('ORD00166', 'CUST0011', 'DRIV0013', 'SELL0006', 'MENU0023', '2024-06-14', '13:24:52', 40505, 'card', 'No onion'),
('ORD00167', 'CUST0030', 'DRIV0007', 'SELL0020', 'MENU0017', '2024-06-15', '01:59:33', 19698, 'cash', 'Extra sauce'),
('ORD00168', 'CUST0013', 'DRIV0008', 'SELL0013', 'MENU0009', '2024-06-16', '06:53:24', 95059, 'cash', 'Extra sauce'),
('ORD00169', 'CUST0002', 'DRIV0005', 'SELL0012', 'MENU0034', '2024-06-17', '06:27:20', 18793, 'q-ris', 'Double cheese'),
('ORD00170', 'CUST0001', 'DRIV0015', 'SELL0006', 'MENU0025', '2024-06-18', '20:43:52', 24242, 'q-ris', 'Extra sauce'),
('ORD00171', 'CUST0005', 'DRIV0007', 'SELL0016', 'MENU0003', '2024-06-19', '01:55:29', 73538, 'card', 'No onion'),
('ORD00172', 'CUST0005', 'DRIV0011', 'SELL0005', 'MENU0012', '2024-06-20', '09:32:05', 46618, 'cash', ''),
('ORD00173', 'CUST0016', 'DRIV0002', 'SELL0004', 'MENU0007', '2024-06-21', '06:28:03', 73258, 'cash', 'No onion'),
('ORD00174', 'CUST0001', 'DRIV0013', 'SELL0019', 'MENU0015', '2024-06-22', '10:18:35', 17389, 'card', 'Double cheese'),
('ORD00175', 'CUST0009', 'DRIV0007', 'SELL0014', 'MENU0040', '2024-06-23', '02:46:55', 98863, 'q-ris', 'Extra sauce'),
('ORD00176', 'CUST0024', 'DRIV0014', 'SELL0015', 'MENU0010', '2024-06-24', '21:51:27', 98814, 'cash', 'Double cheese'),
('ORD00177', 'CUST0017', 'DRIV0010', 'SELL0002', 'MENU0015', '2024-06-25', '22:04:59', 43850, 'card', ''),
('ORD00178', 'CUST0022', 'DRIV0005', 'SELL0011', 'MENU0031', '2024-06-26', '03:17:12', 53837, 'card', 'Extra sauce'),
('ORD00179', 'CUST0001', 'DRIV0001', 'SELL0013', 'MENU0036', '2024-06-27', '23:46:22', 13254, 'q-ris', 'No onion'),
('ORD00180', 'CUST0017', 'DRIV0014', 'SELL0009', 'MENU0037', '2024-06-28', '06:26:38', 48640, 'cash', ''),
('ORD00181', 'CUST0029', 'DRIV0011', 'SELL0011', 'MENU0028', '2024-06-29', '21:04:49', 81562, 'cash', 'Double cheese'),
('ORD00182', 'CUST0010', 'DRIV0012', 'SELL0007', 'MENU0039', '2024-06-30', '16:09:06', 96963, 'q-ris', 'Double cheese'),
('ORD00183', 'CUST0007', 'DRIV0007', 'SELL0014', 'MENU0001', '2024-07-01', '17:32:24', 91406, 'q-ris', ''),
('ORD00184', 'CUST0025', 'DRIV0010', 'SELL0009', 'MENU0005', '2024-07-02', '12:59:29', 75843, 'card', 'Extra sauce'),
('ORD00185', 'CUST0024', 'DRIV0002', 'SELL0005', 'MENU0007', '2024-07-03', '21:18:28', 28954, 'card', 'Extra sauce'),
('ORD00186', 'CUST0021', 'DRIV0009', 'SELL0003', 'MENU0002', '2024-07-04', '08:33:40', 40275, 'cash', ''),
('ORD00187', 'CUST0016', 'DRIV0012', 'SELL0016', 'MENU0028', '2024-07-05', '08:58:40', 11317, 'cash', 'Double cheese'),
('ORD00188', 'CUST0002', 'DRIV0003', 'SELL0019', 'MENU0017', '2024-07-06', '07:48:47', 65406, 'cash', 'Extra sauce'),
('ORD00189', 'CUST0004', 'DRIV0011', 'SELL0007', 'MENU0022', '2024-07-07', '13:50:15', 87197, 'q-ris', 'Extra sauce'),
('ORD00190', 'CUST0008', 'DRIV0013', 'SELL0011', 'MENU0001', '2024-07-08', '22:15:12', 99259, 'q-ris', ''),
('ORD00191', 'CUST0021', 'DRIV0006', 'SELL0002', 'MENU0021', '2024-07-09', '01:12:51', 44721, 'card', 'Double cheese'),
('ORD00192', 'CUST0010', 'DRIV0013', 'SELL0007', 'MENU0023', '2024-07-10', '09:56:41', 66082, 'q-ris', ''),
('ORD00193', 'CUST0029', 'DRIV0005', 'SELL0015', 'MENU0040', '2024-07-11', '02:11:45', 83790, 'cash', ''),
('ORD00194', 'CUST0023', 'DRIV0003', 'SELL0015', 'MENU0005', '2024-07-12', '17:21:44', 44545, 'q-ris', ''),
('ORD00195', 'CUST0030', 'DRIV0001', 'SELL0014', 'MENU0030', '2024-07-13', '23:47:48', 92131, 'cash', 'No onion'),
('ORD00196', 'CUST0022', 'DRIV0009', 'SELL0012', 'MENU0017', '2024-07-14', '10:48:06', 61282, 'q-ris', 'No onion'),
('ORD00197', 'CUST0002', 'DRIV0010', 'SELL0008', 'MENU0039', '2024-07-15', '09:31:55', 87300, 'cash', 'Extra sauce'),
('ORD00198', 'CUST0022', 'DRIV0009', 'SELL0017', 'MENU0031', '2024-07-16', '20:33:18', 55939, 'q-ris', 'Double cheese'),
('ORD00199', 'CUST0011', 'DRIV0004', 'SELL0004', 'MENU0022', '2024-07-17', '19:01:36', 21381, 'card', ''),
('ORD00200', 'CUST0013', 'DRIV0008', 'SELL0019', 'MENU0009', '2024-07-18', '04:25:05', 47314, 'q-ris', 'Double cheese');

UPDATE [ORDER] 
SET promo_id = CASE
    WHEN order_id = 'ORD00001' THEN 'PROM0001'
    WHEN order_id = 'ORD00002' THEN 'PROM0002'
    WHEN order_id = 'ORD00003' THEN 'PROM0003'
    WHEN order_id = 'ORD00004' THEN 'PROM0004'
    WHEN order_id = 'ORD00005' THEN 'PROM0005'
    WHEN order_id = 'ORD00006' THEN 'PROM0006'
    WHEN order_id = 'ORD00007' THEN 'PROM0007'
    WHEN order_id = 'ORD00008' THEN 'PROM0008'
    WHEN order_id = 'ORD00009' THEN 'PROM0009'
    WHEN order_id = 'ORD00010' THEN 'PROM0010'
    WHEN order_id = 'ORD00011' THEN 'PROM0001'
    WHEN order_id = 'ORD00012' THEN 'PROM0002'
    WHEN order_id = 'ORD00013' THEN 'PROM0003'
    WHEN order_id = 'ORD00014' THEN 'PROM0004'
    WHEN order_id = 'ORD00015' THEN 'PROM0005'
    WHEN order_id = 'ORD00016' THEN 'PROM0006'
    WHEN order_id = 'ORD00017' THEN 'PROM0007'
    WHEN order_id = 'ORD00018' THEN 'PROM0008'
    WHEN order_id = 'ORD00019' THEN 'PROM0009'
    WHEN order_id = 'ORD00020' THEN 'PROM0010'
    WHEN order_id = 'ORD00021' THEN 'PROM0001'
    WHEN order_id = 'ORD00022' THEN 'PROM0002'
    WHEN order_id = 'ORD00023' THEN 'PROM0003'
    WHEN order_id = 'ORD00024' THEN 'PROM0004'
    WHEN order_id = 'ORD00025' THEN 'PROM0005'
    WHEN order_id = 'ORD00026' THEN 'PROM0006'
    WHEN order_id = 'ORD00027' THEN 'PROM0007'
    WHEN order_id = 'ORD00028' THEN 'PROM0008'
    WHEN order_id = 'ORD00029' THEN 'PROM0009'
    WHEN order_id = 'ORD00030' THEN 'PROM0010'
    WHEN order_id = 'ORD00031' THEN 'PROM0001'
    WHEN order_id = 'ORD00032' THEN 'PROM0002'
    WHEN order_id = 'ORD00033' THEN 'PROM0003'
    WHEN order_id = 'ORD00034' THEN 'PROM0004'
    WHEN order_id = 'ORD00035' THEN 'PROM0005'
    WHEN order_id = 'ORD00036' THEN 'PROM0006'
    WHEN order_id = 'ORD00037' THEN 'PROM0007'
    WHEN order_id = 'ORD00038' THEN 'PROM0008'
    WHEN order_id = 'ORD00039' THEN 'PROM0009'
    WHEN order_id = 'ORD00040' THEN 'PROM0010'
    WHEN order_id = 'ORD00041' THEN 'PROM0001'
    WHEN order_id = 'ORD00042' THEN 'PROM0002'
    WHEN order_id = 'ORD00043' THEN 'PROM0003'
    WHEN order_id = 'ORD00044' THEN 'PROM0004'
    WHEN order_id = 'ORD00045' THEN 'PROM0005'
    WHEN order_id = 'ORD00046' THEN 'PROM0006'
    WHEN order_id = 'ORD00047' THEN 'PROM0007'
    WHEN order_id = 'ORD00048' THEN 'PROM0008'
    WHEN order_id = 'ORD00049' THEN 'PROM0009'
    WHEN order_id = 'ORD00050' THEN 'PROM0010'
    WHEN order_id = 'ORD00051' THEN 'PROM0001'
    WHEN order_id = 'ORD00052' THEN 'PROM0002'
    WHEN order_id = 'ORD00053' THEN 'PROM0003'
    WHEN order_id = 'ORD00054' THEN 'PROM0004'
    WHEN order_id = 'ORD00055' THEN 'PROM0005'
    WHEN order_id = 'ORD00056' THEN 'PROM0006'
    WHEN order_id = 'ORD00057' THEN 'PROM0007'
    WHEN order_id = 'ORD00058' THEN 'PROM0008'
    WHEN order_id = 'ORD00059' THEN 'PROM0009'
    WHEN order_id = 'ORD00060' THEN 'PROM0010'
    WHEN order_id = 'ORD00061' THEN 'PROM0001'
    WHEN order_id = 'ORD00062' THEN 'PROM0002'
    WHEN order_id = 'ORD00063' THEN 'PROM0003'
    WHEN order_id = 'ORD00064' THEN 'PROM0004'
    WHEN order_id = 'ORD00065' THEN 'PROM0005'
    WHEN order_id = 'ORD00066' THEN 'PROM0006'
    WHEN order_id = 'ORD00067' THEN 'PROM0007'
    WHEN order_id = 'ORD00068' THEN 'PROM0008'
    WHEN order_id = 'ORD00069' THEN 'PROM0009'
    WHEN order_id = 'ORD00070' THEN 'PROM0010'
    WHEN order_id = 'ORD00071' THEN 'PROM0001'
    WHEN order_id = 'ORD00072' THEN 'PROM0002'
    WHEN order_id = 'ORD00073' THEN 'PROM0003'
    WHEN order_id = 'ORD00074' THEN 'PROM0004'
    WHEN order_id = 'ORD00075' THEN 'PROM0005'
    WHEN order_id = 'ORD00076' THEN 'PROM0006'
    WHEN order_id = 'ORD00077' THEN 'PROM0007'
    WHEN order_id = 'ORD00078' THEN 'PROM0008'
    WHEN order_id = 'ORD00079' THEN 'PROM0009'
    WHEN order_id = 'ORD00080' THEN 'PROM0010'
    WHEN order_id = 'ORD00081' THEN 'PROM0001'
    WHEN order_id = 'ORD00082' THEN 'PROM0002'
    WHEN order_id = 'ORD00083' THEN 'PROM0003'
    WHEN order_id = 'ORD00084' THEN 'PROM0004'
    WHEN order_id = 'ORD00085' THEN 'PROM0005'
    WHEN order_id = 'ORD00086' THEN 'PROM0006'
    WHEN order_id = 'ORD00087' THEN 'PROM0007'
    WHEN order_id = 'ORD00088' THEN 'PROM0008'
    WHEN order_id = 'ORD00089' THEN 'PROM0009'
    WHEN order_id = 'ORD00090' THEN 'PROM0010'
    WHEN order_id = 'ORD00091' THEN 'PROM0001'
    WHEN order_id = 'ORD00092' THEN 'PROM0002'
    WHEN order_id = 'ORD00093' THEN 'PROM0003'
    WHEN order_id = 'ORD00094' THEN 'PROM0004'
    WHEN order_id = 'ORD00095' THEN 'PROM0005'
    WHEN order_id = 'ORD00096' THEN 'PROM0006'
    WHEN order_id = 'ORD00097' THEN 'PROM0007'
    WHEN order_id = 'ORD00098' THEN 'PROM0008'
    WHEN order_id = 'ORD00099' THEN 'PROM0009'
    WHEN order_id = 'ORD00100' THEN 'PROM0010'
    WHEN order_id = 'ORD00101' THEN 'PROM0001'
    WHEN order_id = 'ORD00102' THEN 'PROM0002'
    WHEN order_id = 'ORD00103' THEN 'PROM0003'
    WHEN order_id = 'ORD00104' THEN 'PROM0004'
    WHEN order_id = 'ORD00105' THEN 'PROM0005'
    WHEN order_id = 'ORD00106' THEN 'PROM0006'
    WHEN order_id = 'ORD00107' THEN 'PROM0007'
    WHEN order_id = 'ORD00108' THEN 'PROM0008'
    WHEN order_id = 'ORD00109' THEN 'PROM0009'
    WHEN order_id = 'ORD00110' THEN 'PROM0010'
    WHEN order_id = 'ORD00111' THEN 'PROM0001'
    WHEN order_id = 'ORD00112' THEN 'PROM0002'
    WHEN order_id = 'ORD00113' THEN 'PROM0003'
    WHEN order_id = 'ORD00114' THEN 'PROM0004'
    WHEN order_id = 'ORD00115' THEN 'PROM0005'
    WHEN order_id = 'ORD00116' THEN 'PROM0006'
    WHEN order_id = 'ORD00117' THEN 'PROM0007'
    WHEN order_id = 'ORD00118' THEN 'PROM0008'
    WHEN order_id = 'ORD00119' THEN 'PROM0009'
    WHEN order_id = 'ORD00120' THEN 'PROM0010'
    WHEN order_id = 'ORD00121' THEN 'PROM0001'
    WHEN order_id = 'ORD00122' THEN 'PROM0002'
    WHEN order_id = 'ORD00123' THEN 'PROM0003'
    WHEN order_id = 'ORD00124' THEN 'PROM0004'
    WHEN order_id = 'ORD00125' THEN 'PROM0005'
    WHEN order_id = 'ORD00126' THEN 'PROM0006'
    WHEN order_id = 'ORD00127' THEN 'PROM0007'
    WHEN order_id = 'ORD00128' THEN 'PROM0008'
    WHEN order_id = 'ORD00129' THEN 'PROM0009'
    WHEN order_id = 'ORD00130' THEN 'PROM0010'
    WHEN order_id = 'ORD00131' THEN 'PROM0001'
    WHEN order_id = 'ORD00132' THEN 'PROM0002'
    WHEN order_id = 'ORD00133' THEN 'PROM0003'
    WHEN order_id = 'ORD00134' THEN 'PROM0004'
    WHEN order_id = 'ORD00135' THEN 'PROM0005'
    WHEN order_id = 'ORD00136' THEN 'PROM0006'
    WHEN order_id = 'ORD00137' THEN 'PROM0007'
    WHEN order_id = 'ORD00138' THEN 'PROM0008'
    WHEN order_id = 'ORD00139' THEN 'PROM0009'
    WHEN order_id = 'ORD00140' THEN 'PROM0010'
    WHEN order_id = 'ORD00141' THEN 'PROM0001'
    WHEN order_id = 'ORD00142' THEN 'PROM0002'
    WHEN order_id = 'ORD00143' THEN 'PROM0003'
    WHEN order_id = 'ORD00144' THEN 'PROM0004'
    WHEN order_id = 'ORD00145' THEN 'PROM0005'
    WHEN order_id = 'ORD00146' THEN 'PROM0006'
    WHEN order_id = 'ORD00147' THEN 'PROM0007'
    WHEN order_id = 'ORD00148' THEN 'PROM0008'
    WHEN order_id = 'ORD00149' THEN 'PROM0009'
    WHEN order_id = 'ORD00150' THEN 'PROM0010'
    WHEN order_id = 'ORD00151' THEN 'PROM0001'
    WHEN order_id = 'ORD00152' THEN 'PROM0002'
    WHEN order_id = 'ORD00153' THEN 'PROM0003'
    WHEN order_id = 'ORD00154' THEN 'PROM0004'
    WHEN order_id = 'ORD00155' THEN 'PROM0005'
    WHEN order_id = 'ORD00156' THEN 'PROM0006'
    WHEN order_id = 'ORD00157' THEN 'PROM0007'
    WHEN order_id = 'ORD00158' THEN 'PROM0008'
    WHEN order_id = 'ORD00159' THEN 'PROM0009'
    WHEN order_id = 'ORD00160' THEN 'PROM0010'
    WHEN order_id = 'ORD00161' THEN 'PROM0001'
    WHEN order_id = 'ORD00162' THEN 'PROM0002'
    WHEN order_id = 'ORD00163' THEN 'PROM0003'
    WHEN order_id = 'ORD00164' THEN 'PROM0004'
    WHEN order_id = 'ORD00165' THEN 'PROM0005'
    WHEN order_id = 'ORD00166' THEN 'PROM0006'
    WHEN order_id = 'ORD00167' THEN 'PROM0007'
    WHEN order_id = 'ORD00168' THEN 'PROM0008'
    WHEN order_id = 'ORD00169' THEN 'PROM0009'
    WHEN order_id = 'ORD00170' THEN 'PROM0010'
    WHEN order_id = 'ORD00171' THEN 'PROM0001'
    WHEN order_id = 'ORD00172' THEN 'PROM0002'
    WHEN order_id = 'ORD00173' THEN 'PROM0003'
    WHEN order_id = 'ORD00174' THEN 'PROM0004'
    WHEN order_id = 'ORD00175' THEN 'PROM0005'
    WHEN order_id = 'ORD00176' THEN 'PROM0006'
    WHEN order_id = 'ORD00177' THEN 'PROM0007'
    WHEN order_id = 'ORD00178' THEN 'PROM0008'
    WHEN order_id = 'ORD00179' THEN 'PROM0009'
    WHEN order_id = 'ORD00180' THEN 'PROM0010'
    WHEN order_id = 'ORD00181' THEN 'PROM0001'
    WHEN order_id = 'ORD00182' THEN 'PROM0002'
    WHEN order_id = 'ORD00183' THEN 'PROM0003'
    WHEN order_id = 'ORD00184' THEN 'PROM0004'
    WHEN order_id = 'ORD00185' THEN 'PROM0005'
    WHEN order_id = 'ORD00186' THEN 'PROM0006'
    WHEN order_id = 'ORD00187' THEN 'PROM0007'
    WHEN order_id = 'ORD00188' THEN 'PROM0008'
    WHEN order_id = 'ORD00189' THEN 'PROM0009'
    WHEN order_id = 'ORD00190' THEN 'PROM0010'
    WHEN order_id = 'ORD00191' THEN 'PROM0001'
    WHEN order_id = 'ORD00192' THEN 'PROM0002'
    WHEN order_id = 'ORD00193' THEN 'PROM0003'
    WHEN order_id = 'ORD00194' THEN 'PROM0004'
    WHEN order_id = 'ORD00195' THEN 'PROM0005'
    WHEN order_id = 'ORD00196' THEN 'PROM0006'
    WHEN order_id = 'ORD00197' THEN 'PROM0007'
    WHEN order_id = 'ORD00198' THEN 'PROM0008'
    WHEN order_id = 'ORD00199' THEN 'PROM0009'
    WHEN order_id = 'ORD00200' THEN 'PROM0010'
    ELSE promo_id
END;

select * from [Order]

ALTER TABLE [ORDER]
ADD testDate DATE

INSERT INTO [Order] (testDate) Values ('2024-12-22')

UPDATE [ORDER] 
SET testDate = CASE
    WHEN order_id = 'ORD00001' THEN '2024-11-09'
    WHEN order_id = 'ORD00002' THEN '2024-11-12'
    WHEN order_id = 'ORD00003' THEN '2024-11-04'
    WHEN order_id = 'ORD00004' THEN '2024-11-01'
    WHEN order_id = 'ORD00005' THEN '2024-11-10'
    WHEN order_id = 'ORD00006' THEN '2024-11-02'
    WHEN order_id = 'ORD00007' THEN '2024-10-26'
    WHEN order_id = 'ORD00008' THEN '2024-10-26'
    WHEN order_id = 'ORD00009' THEN '2024-10-29'
    WHEN order_id = 'ORD00010' THEN '2024-10-26'
    WHEN order_id = 'ORD00011' THEN '2024-11-02'
    WHEN order_id = 'ORD00012' THEN '2024-11-09'
    WHEN order_id = 'ORD00013' THEN '2024-11-02'
    WHEN order_id = 'ORD00014' THEN '2024-11-15'
    WHEN order_id = 'ORD00015' THEN '2024-11-07'
    WHEN order_id = 'ORD00016' THEN '2024-11-07'
    WHEN order_id = 'ORD00017' THEN '2024-11-09'
    WHEN order_id = 'ORD00018' THEN '2024-11-11'
    WHEN order_id = 'ORD00019' THEN '2024-11-20'
    WHEN order_id = 'ORD00020' THEN '2024-11-07'
    WHEN order_id = 'ORD00021' THEN '2024-11-02'
    WHEN order_id = 'ORD00022' THEN '2024-11-17'
    WHEN order_id = 'ORD00023' THEN '2024-10-24'
    WHEN order_id = 'ORD00024' THEN '2024-10-24'
    WHEN order_id = 'ORD00025' THEN '2024-11-04'
    WHEN order_id = 'ORD00026' THEN '2024-11-11'
    WHEN order_id = 'ORD00027' THEN '2024-11-04'
    WHEN order_id = 'ORD00028' THEN '2024-11-06'
    WHEN order_id = 'ORD00029' THEN '2024-11-07'
    WHEN order_id = 'ORD00030' THEN '2024-11-02'
    WHEN order_id = 'ORD00031' THEN '2024-10-29'
    WHEN order_id = 'ORD00032' THEN '2024-10-23'
    WHEN order_id = 'ORD00033' THEN '2024-11-07'
    WHEN order_id = 'ORD00034' THEN '2024-10-25'
    WHEN order_id = 'ORD00035' THEN '2024-11-19'
    WHEN order_id = 'ORD00036' THEN '2024-11-12'
    WHEN order_id = 'ORD00037' THEN '2024-10-26'
    WHEN order_id = 'ORD00038' THEN '2024-11-08'
    WHEN order_id = 'ORD00039' THEN '2024-10-31'
    WHEN order_id = 'ORD00040' THEN '2024-11-12'
    WHEN order_id = 'ORD00041' THEN '2024-10-28'
    WHEN order_id = 'ORD00042' THEN '2024-11-11'
    WHEN order_id = 'ORD00043' THEN '2024-11-13'
    WHEN order_id = 'ORD00044' THEN '2024-10-26'
    WHEN order_id = 'ORD00045' THEN '2024-11-05'
    WHEN order_id = 'ORD00046' THEN '2024-11-21'
    WHEN order_id = 'ORD00047' THEN '2024-11-09'
    WHEN order_id = 'ORD00048' THEN '2024-11-20'
    WHEN order_id = 'ORD00049' THEN '2024-10-25'
    WHEN order_id = 'ORD00050' THEN '2024-10-24'
    WHEN order_id = 'ORD00051' THEN '2024-10-30'
    WHEN order_id = 'ORD00052' THEN '2024-10-26'
    WHEN order_id = 'ORD00053' THEN '2024-10-23'
    WHEN order_id = 'ORD00054' THEN '2024-11-18'
    WHEN order_id = 'ORD00055' THEN '2024-11-08'
    WHEN order_id = 'ORD00056' THEN '2024-11-14'
    WHEN order_id = 'ORD00057' THEN '2024-11-15'
    WHEN order_id = 'ORD00058' THEN '2024-10-27'
    WHEN order_id = 'ORD00059' THEN '2024-11-05'
    WHEN order_id = 'ORD00060' THEN '2024-11-12'
    WHEN order_id = 'ORD00061' THEN '2024-11-14'
    WHEN order_id = 'ORD00062' THEN '2024-10-29'
    WHEN order_id = 'ORD00063' THEN '2024-11-13'
    WHEN order_id = 'ORD00064' THEN '2024-11-18'
    WHEN order_id = 'ORD00065' THEN '2024-10-24'
    WHEN order_id = 'ORD00066' THEN '2024-11-12'
    WHEN order_id = 'ORD00067' THEN '2024-11-15'
    WHEN order_id = 'ORD00068' THEN '2024-10-27'
    WHEN order_id = 'ORD00069' THEN '2024-11-06'
    WHEN order_id = 'ORD00070' THEN '2024-10-23'
    WHEN order_id = 'ORD00071' THEN '2024-10-28'
    WHEN order_id = 'ORD00072' THEN '2024-11-21'
    WHEN order_id = 'ORD00073' THEN '2024-11-12'
    WHEN order_id = 'ORD00074' THEN '2024-11-16'
    WHEN order_id = 'ORD00075' THEN '2024-10-28'
    WHEN order_id = 'ORD00076' THEN '2024-11-06'
    WHEN order_id = 'ORD00077' THEN '2024-10-28'
    WHEN order_id = 'ORD00078' THEN '2024-11-19'
    WHEN order_id = 'ORD00079' THEN '2024-11-07'
    WHEN order_id = 'ORD00080' THEN '2024-10-27'
    WHEN order_id = 'ORD00081' THEN '2024-10-29'
    WHEN order_id = 'ORD00082' THEN '2024-11-16'
    WHEN order_id = 'ORD00083' THEN '2024-11-17'
    WHEN order_id = 'ORD00084' THEN '2024-11-11'
    WHEN order_id = 'ORD00085' THEN '2024-11-03'
    WHEN order_id = 'ORD00086' THEN '2024-11-08'
    WHEN order_id = 'ORD00087' THEN '2024-11-07'
    WHEN order_id = 'ORD00088' THEN '2024-11-14'
    WHEN order_id = 'ORD00089' THEN '2024-11-05'
    WHEN order_id = 'ORD00090' THEN '2024-11-16'
    WHEN order_id = 'ORD00091' THEN '2024-11-11'
    WHEN order_id = 'ORD00092' THEN '2024-11-13'
    WHEN order_id = 'ORD00093' THEN '2024-10-30'
    WHEN order_id = 'ORD00094' THEN '2024-11-01'
    WHEN order_id = 'ORD00095' THEN '2024-11-07'
    WHEN order_id = 'ORD00096' THEN '2024-10-25'
    WHEN order_id = 'ORD00097' THEN '2024-11-03'
    WHEN order_id = 'ORD00098' THEN '2024-11-21'
    WHEN order_id = 'ORD00099' THEN '2024-11-17'
    WHEN order_id = 'ORD00100' THEN '2024-11-11'
    WHEN order_id = 'ORD00101' THEN '2024-10-25'
    WHEN order_id = 'ORD00102' THEN '2024-11-18'
    WHEN order_id = 'ORD00103' THEN '2024-11-18'
    WHEN order_id = 'ORD00104' THEN '2024-11-10'
    WHEN order_id = 'ORD00105' THEN '2024-11-05'
    WHEN order_id = 'ORD00106' THEN '2024-10-29'
    WHEN order_id = 'ORD00107' THEN '2024-11-21'
    WHEN order_id = 'ORD00108' THEN '2024-10-25'
    WHEN order_id = 'ORD00109' THEN '2024-10-29'
    WHEN order_id = 'ORD00110' THEN '2024-10-31'
    WHEN order_id = 'ORD00111' THEN '2024-11-01'
    WHEN order_id = 'ORD00112' THEN '2024-10-25'
    WHEN order_id = 'ORD00113' THEN '2024-11-17'
    WHEN order_id = 'ORD00114' THEN '2024-11-03'
    WHEN order_id = 'ORD00115' THEN '2024-11-17'
    WHEN order_id = 'ORD00116' THEN '2024-11-03'
    WHEN order_id = 'ORD00117' THEN '2024-11-14'
    WHEN order_id = 'ORD00118' THEN '2024-10-28'
    WHEN order_id = 'ORD00119' THEN '2024-10-30'
    WHEN order_id = 'ORD00120' THEN '2024-11-05'
    WHEN order_id = 'ORD00121' THEN '2024-10-31'
    WHEN order_id = 'ORD00122' THEN '2024-11-18'
    WHEN order_id = 'ORD00123' THEN '2024-11-09'
    WHEN order_id = 'ORD00124' THEN '2024-11-12'
    WHEN order_id = 'ORD00125' THEN '2024-11-17'
    WHEN order_id = 'ORD00126' THEN '2024-11-07'
    WHEN order_id = 'ORD00127' THEN '2024-11-17'
    WHEN order_id = 'ORD00128' THEN '2024-11-10'
    WHEN order_id = 'ORD00129' THEN '2024-10-26'
    WHEN order_id = 'ORD00130' THEN '2024-11-10'
    WHEN order_id = 'ORD00131' THEN '2024-11-12'
    WHEN order_id = 'ORD00132' THEN '2024-10-23'
    WHEN order_id = 'ORD00133' THEN '2024-11-07'
    WHEN order_id = 'ORD00134' THEN '2024-10-29'
    WHEN order_id = 'ORD00135' THEN '2024-11-12'
    WHEN order_id = 'ORD00136' THEN '2024-11-13'
    WHEN order_id = 'ORD00137' THEN '2024-11-01'
    WHEN order_id = 'ORD00138' THEN '2024-10-26'
    WHEN order_id = 'ORD00139' THEN '2024-11-11'
    WHEN order_id = 'ORD00140' THEN '2024-10-28'
    WHEN order_id = 'ORD00141' THEN '2024-11-21'
    WHEN order_id = 'ORD00142' THEN '2024-11-14'
    WHEN order_id = 'ORD00143' THEN '2024-11-19'
    WHEN order_id = 'ORD00144' THEN '2024-11-07'
    WHEN order_id = 'ORD00145' THEN '2024-11-17'
    WHEN order_id = 'ORD00146' THEN '2024-11-19'
    WHEN order_id = 'ORD00147' THEN '2024-11-04'
    WHEN order_id = 'ORD00148' THEN '2024-11-12'
    WHEN order_id = 'ORD00149' THEN '2024-11-02'
    WHEN order_id = 'ORD00150' THEN '2024-10-24'
    WHEN order_id = 'ORD00151' THEN '2024-11-17'
    WHEN order_id = 'ORD00152' THEN '2024-10-27'
    WHEN order_id = 'ORD00153' THEN '2024-10-29'
    WHEN order_id = 'ORD00154' THEN '2024-11-03'
    WHEN order_id = 'ORD00155' THEN '2024-11-10'
    WHEN order_id = 'ORD00156' THEN '2024-11-10'
    WHEN order_id = 'ORD00157' THEN '2024-11-06'
    WHEN order_id = 'ORD00158' THEN '2024-11-02'
    WHEN order_id = 'ORD00159' THEN '2024-11-07'
    WHEN order_id = 'ORD00160' THEN '2024-11-16'
    WHEN order_id = 'ORD00161' THEN '2024-11-03'
    WHEN order_id = 'ORD00162' THEN '2024-11-14'
    WHEN order_id = 'ORD00163' THEN '2024-11-18'
    WHEN order_id = 'ORD00164' THEN '2024-11-05'
    WHEN order_id = 'ORD00165' THEN '2024-11-15'
    WHEN order_id = 'ORD00166' THEN '2024-11-12'
    WHEN order_id = 'ORD00167' THEN '2024-11-08'
    WHEN order_id = 'ORD00168' THEN '2024-11-09'
    WHEN order_id = 'ORD00169' THEN '2024-10-23'
    WHEN order_id = 'ORD00170' THEN '2024-10-26'
    WHEN order_id = 'ORD00171' THEN '2024-10-28'
    WHEN order_id = 'ORD00172' THEN '2024-10-26'
    WHEN order_id = 'ORD00173' THEN '2024-11-12'
    WHEN order_id = 'ORD00174' THEN '2024-10-25'
    WHEN order_id = 'ORD00175' THEN '2024-10-28'
    WHEN order_id = 'ORD00176' THEN '2024-10-24'
    WHEN order_id = 'ORD00177' THEN '2024-11-07'
    WHEN order_id = 'ORD00178' THEN '2024-10-23'
    WHEN order_id = 'ORD00179' THEN '2024-11-16'
    WHEN order_id = 'ORD00180' THEN '2024-11-05'
    WHEN order_id = 'ORD00181' THEN '2024-11-11'
    WHEN order_id = 'ORD00182' THEN '2024-11-01'
    WHEN order_id = 'ORD00183' THEN '2024-11-04'
    WHEN order_id = 'ORD00184' THEN '2024-11-10'
    WHEN order_id = 'ORD00185' THEN '2024-10-26'
    WHEN order_id = 'ORD00186' THEN '2024-11-20'
    WHEN order_id = 'ORD00187' THEN '2024-11-12'
    WHEN order_id = 'ORD00188' THEN '2024-11-04'
    WHEN order_id = 'ORD00189' THEN '2024-11-13'
    WHEN order_id = 'ORD00190' THEN '2024-11-14'
    WHEN order_id = 'ORD00191' THEN '2024-10-28'
    WHEN order_id = 'ORD00192' THEN '2024-11-17'
    WHEN order_id = 'ORD00193' THEN '2024-11-07'
    WHEN order_id = 'ORD00194' THEN '2024-11-10'
    WHEN order_id = 'ORD00195' THEN '2024-11-04'
    WHEN order_id = 'ORD00196' THEN '2024-10-24'
    WHEN order_id = 'ORD00197' THEN '2024-11-21'
    WHEN order_id = 'ORD00198' THEN '2024-10-28'
    WHEN order_id = 'ORD00199' THEN '2024-10-25'
    WHEN order_id = 'ORD00200' THEN '2024-10-27'
    ELSE testDate
END;
