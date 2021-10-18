CREATE database Bank;

CREATE table Customers(
	customerNumber varchar(10) primary key,
	customerName varchar(100),
	contactLastName varchar(50),
	contactFirstName varchar(50),
	phone varchar(13),
	addressLine1 varchar(100),
	addressLine2 varchar(100),
	city varchar(50),
	state varchar(50),
	postalCode varchar(5),
	country varchar(50),
	salesRepEmployeeNumber varchar(10),
	creditLimit int
)

ALTER TABLE Customers 
ADD CONSTRAINT fk_customers_employee
FOREIGN KEY (salesRepEmployeeNumber) REFERENCES Employee(employeeNumber);

INSERT INTO Customers(customerNumber,customerName,contactLastName,contactFirstName,phone,addressLine1,addressLine2,city,state,postalCode,country,salesRepEmployeeNumber,creditLimit)
VALUES('C0001','Darren','Christopher','Nathan','0894638298301','Taman Kopo Indah 1 Blok A2 No. 100','Margahayu Selatan, Kec. Margahayu','Bandung','Jawa Barat','40226','Indonesia','E0001',100000000),
('C0002','Benedectus','Putra','Yesa','0838290546712','Margaasih Permai Blok Q6 No. 11','Margaasih, Kec. Margaasih Tengah','Bandung','Jawa Barat','40214','Indonesia','E0004',150000000),
('C0003','Raymond','Riyadi','Agustian','0837829034674','Jalan Boulevard Timur Raya Blok C No. 43','Kelapa Gading, Kec. Kelapa Gading Tim','Jakarta','DKI Jakarta','14240','Indonesia','E0002',125000000),
('C0004','Cella','Christabel','Clarissa','0864830389290','Jalan Pahlawan No. 28','Pleburan, Kec. Semarang Selatan','Semarang','Jawa Tengah','50241','Indonesia','E0003',300000000),
('C0005','Cher','Adelyn','Charis','0878026543816','Jalan Ahmad Yani No. 127','Ketintang, Kec. Gayungan','Surabaya','Jawa Timur','60231','Indonesia','E0005',250000000);


CREATE table Products(
	productCode varchar(10) primary key,
	productName varchar(100),
	productLine varchar(50),
	productScale varchar(50),
	productVendor varchar(100),
	productDescription varchar(150),
	quantityInStock int,
	buyPrice int,
	MSRP int
)

ALTER TABLE Products 
ADD CONSTRAINT fk_products_productlines
FOREIGN KEY (productLine) REFERENCES Productlines(productLine); 

INSERT INTO Products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP)
VALUES('P0001','WR250Xr','PL0004','Premium','Yamaha','WR250R adalah sepeda motor dual-sport yang bermesin 250cc dan didukung bahan bakar premium berpendingin cairan, yang diumpankan bahan bakar premium',56,80000000,92800000),
('P0002','Agya','PL0003','Low Cost','Toyota','Agya merupakan Low Cost Green Car (LCGC) yang menawarkan tampilan yang modern, lincah dan irit bahan bakar',249,116000000,124000000),
('P0003','Versys-X 250 Tourer','PL0001','Premium','Kawasaki','Versys-X 250 Tourer dibuat sedemikian rupa sehingga pengendara tetap tegak dan nyaman dalam perjalanan',28,50000000,54600000),
('P0004','Pajero Sport','PL0002','Luxury','Mitsubishi','Pajero Sport merupakan SUV bermesin diesel yang memiliki tampilan atraktif dan tenaga yang besar',164,780000000,835000000),
('P0005','Sportster Iron 883 2009','PL0005','Luxury','Harley-Davidson','Sportster Iron 883 2009 memiliki jok rendah, proporsi body kecil dan desain yang simple',32,165000000,178000000);

CREATE table Productlines(
	productLine varchar(50) primary key,
	textDescription varchar(150),
	htmlDescription varchar(150),
	image varchar(100)
)

INSERT INTO Productlines(productLine,textDescription,htmlDescription,image)
VALUES('PL0001','Motor Sport Touring','Motor sport touring adalah jenis kendaraan roda dua yang termasuk ke dalam motor sport yang mengutamakan kenyamanan berkendara','img/sporttouring.jpeg'),
('PL0002','Mobil SUV','Mobil SUV merupakan jenis mobil yang tidak kalah populer dari mobil MPV yang memadukan mobil jeep dan mobil sedan','img/suv.jpeg'),
('PL0003','Mobil Hatchback','Hatchback merupakan sebuah mobil turunan yang bagian bagasinya khusus ditiadakan dan bagian belakangnya dibentuk seperti MPV','img/hatchback.jpeg'),
('PL0004','Motor Cross','Motor cross merupakan motor offroad bike dengan memiliki posisi mesin yang tinggi, ban kasar yang dikhususkan untuk melibas medan berat','img/cross.jpeg'),
('PL0005','Motor Cruiser','Motor cruiser merupakan motor yang memiliki posisi stang yang tinggi serta posisi kaki yang relatif ke depan yang mempunyai posisi kursi rendah','img/cruiser.jpeg');

select * from Productlines;

CREATE table Orders(
	orderNumber varchar(10) primary key,
	orderDate Date,
	requiredDate Date,
	shippedData Date,
	status varchar(50),
	comments varchar(150),
	customerNumber varchar(10)
)

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customerNumber) REFERENCES Customers(customerNumber); 

INSERT INTO Orders(orderNumber,orderDate,requiredDate,shippedData,status,comments,customerNumber)
VALUES('OR0001','12-10-2019','01-16-2020','12-20-2019','Completed','Pesanan telah selesai tanpa ada komplain','C0003'),
('OR0002','07-04-2020','08-30-2020','07-15-2020','Completed','Pesanan telah selesai namun barang rusak','C0005'),
('OR0003','08-17-2019','09-10-2020','08-27-2019','Completed','Pesanan telah selesai namun terlambat','C0001'),
('OR0004','10-09-2021','11-08-2021','10-13-2021','In Progress','Pesanan sedang dalam perjalanan','C0004'),
('OR0005','10-02-2021','10-31-2021','10-08-2021','In Progress','Pesanan sedang dalam perjalanan','C0002');

CREATE table OrderDetails(
	orderLineNumber varchar(10) primary key,
	orderNumber varchar(10),
	productCode varchar(10),
	quantityOrdered int,
	priceEach int
)

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_orderdetails_orders
FOREIGN KEY (orderNumber) REFERENCES Orders(orderNumber); 

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_orderdetails_products
FOREIGN KEY (productCode) REFERENCES Products(productCode);

INSERT INTO OrderDetails(orderLineNumber,orderNumber,productCode,quantityOrdered,priceEach)
VALUES('OL0001','OR0005','P0003',3,54600000),
('OL0002','OR0003','P0001',2,92800000),
('OL0003','OR0001','P0002',1,124000000),
('OL0004','OR0002','P0004',1,835000000),
('OL0005','OR0004','P0005',2,178000000);

CREATE table Payments(
	checkNumber varchar(10) primary key,
	customerNumber varchar(10),
	paymentDate Date,
	amount int
)

ALTER TABLE Payments
ADD CONSTRAINT fk_payments_customers
FOREIGN KEY (customerNumber) REFERENCES Customers(customerNumber); 

INSERT INTO Payments(checkNumber,customerNumber,paymentDate,amount)
VALUES('PY0001','C0004','10-10-2021',356000000),
('PY0002','C0002','10-05-2021',163800000),
('PY0003','C0003','12-14-2019',124000000),
('PY0004','C0005','07-10-2020',835000000),
('PY0005','C0001','08-22-2019',185600000);

CREATE table Employee(
	employeeNumber varchar(10) primary key,
	lastName varchar(50),
	firstName varchar(50),
	extension varchar(100),
	email varchar(100),
	officeCode varchar(10),
	reportsTo varchar(50),
	jobTitle varchar(100)
)

ALTER TABLE Employee
ADD CONSTRAINT fk_employee_offices
FOREIGN KEY (officeCode) REFERENCES Offices(officeCode); 

INSERT INTO Employee(employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle)
VALUES('E0001','Gabriela','Priscilla','Tidak','priscilla@gmail.com','O0004','IT Manager','Full Stack Developer'),
('E0002','Sarah','Ellena','Ya','ellena@gmail.com','O0002','IT Assistant Manager','System Engineer'),
('E0003','Jordi','Evan','Ya','evan@gmail.com','O0005','Customer Service Manager','Customer Service Staff'),
('E0004','Gabriela','Victorya','Tidak','victorya@gmail.com','O0002','IT Intern Mentor','System Analyst Intern'),
('E0005','Axel','Verrell','Ya','verrell@gmail.com','O0003','Loan Manager','Loan Staff');

select * from Employee;

CREATE table Offices(
	officeCode varchar(10) primary key,
	city varchar(50),
	phone varchar(13),
	addressLine1 varchar(100),
	addressLine2 varchar(100),
	state varchar(50),
	country varchar(50),
	postalCode varchar(5),
	territory varchar(50)
)

INSERT INTO Offices(officeCode,city,phone,addressLine1,addressLine2,state,country,postalCode,territory)
VALUES('O0001','Bandung','022-4159000','Jalan Asia Afrika No. 100','Cikawao, Kec. Lengkong', 'Jawa Barat','Indonesia','40261','Bandung Pusat'),
('O0002','Jakarta','021-25533888','Jalan Prof. DR. Satrio Blok C4 No. 25','Kuningan, Kec. Setiabudi', 'DKI Jakarta','Indonesia','12950','Jakarta Selatan'),
('O0003','Semarang','024-8455926','Jalan Brigjend Katamso No. 4-5A','Peterongan, Kec. Semarang Sel', 'Jawa Tengah','Indonesia','50242','Semarang Selatan'),
('O0004','Bandung','022-5424012','Jalan Kopo Sayati No. 100 A','Sayati, Kec. Margahayu', 'Jawa Barat','Indonesia','40228','Bandung Selatan'),
('O0005','Surabaya','031-28937000','Jalan Mayjen HR. Muhammad No. 36','Pradahkalikendal, Kec. Dukuhpakis', 'Surabaya','Indonesia','40261','Surabaya Pusat');

SELECT a.customerName,b.orderDate,c.amount FROM Customers a JOIN Orders b
ON a.customerNumber = b.customerNumber 
JOIN Payments c
ON b.customerNumber = c.customerNumber 
WHERE b.orderDate BETWEEN '01-01-2020' AND '12-31-2021';

SELECT a.firstName,b.territory from Employee a JOIN Offices b 
ON a.officeCode = b.officeCode 
WHERE b.territory like '%Selatan%';

SELECT a.customerName,a.creditLimit,b.amount FROM Customers a JOIN Payments b 
ON a.customerNumber = b.customerNumber 
WHERE a.creditLimit >
   (SELECT AVG(creditLimit)
    FROM Customers);