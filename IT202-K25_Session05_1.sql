-- Do quy tắc ưu tiên toán tử: and được ưu tiên chạy trước or
-- Hiện tại máy hiểu là: (Quận 1) hoặc (Quận 3 và rating > 4.0)

use db_demo;

create table Restaurants (
    restaurant_name varchar(50),
    address varchar(100),
    district varchar(20),
    rating decimal(2,1)
);

insert into Restaurants values
	('Phở Hòa', 'Pasteur', 'Quận 3', 4.5),
	('Bún Bò', 'Nguyễn Du', 'Quận 1', 4.2),
	('Cơm Tấm', 'Lê Thánh Tôn', 'Quận 1', 3.9);

select restaurant_name, address, rating
from Restaurants
where (district = 'Quận 1' or district = 'Quận 3') and rating > 4.0;

