-- Do quy tắc ưu tiên toán tử: and được ưu tiên chạy trước or
-- Hiện tại máy hiểu là: (Quận 1) hoặc (Quận 3 và rating > 4.0)

select restaurant_name, address, rating
from Restaurants
where (district = 'Quận 1' or district = 'Quận 3') and rating > 4.0;

