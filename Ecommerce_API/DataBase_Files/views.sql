-- Create Items View
CREATE OR REPLACE VIEW itemsview as 
SELECT items.* , categories.* FROM items
INNER JOIN categories ON categories.category_id = items.item_cat

-- Test Items View
SELECT itemsview.* , 1 as favorite FROM itemsview
INNER JOIN favorites ON favorites.favorite_item_id = itemsview.item_id AND favorites.favorite_user_id = 1
UNION ALL
SELECT * , 0 as favorite FROM itemsview
WHERE item_id NOT IN ( SELECT itemsview.item_id FROM itemsview
INNER JOIN favorites ON favorites.favorite_item_id = itemsview.item_id AND favorites.favorite_user_id = 1)

-- Create My Favorites View
CREATE OR REPLACE VIEW myfavorites AS
SELECT favorites.* , items.* , users.user_id 
FROM favorites 
INNER JOIN users ON users.user_id = favorites.favorite_user_id 
INNER JOIN items ON items.item_id = favorites.favorite_item_id 

-- Create My cart View
CREATE OR REPLACE VIEW cartview AS
SELECT SUM(items.item_price) AS itemsPrice , COUNT(carts.cart_item_id) AS itemsCount , carts.* , items.* FROM carts
INNER JOIN items ON items.item_id = carts.cart_item_id
GROUP BY carts.cart_item_id , carts.cart_user_id

-- Update My cart View
CREATE OR REPLACE VIEW cartview AS
SELECT SUM(items.item_price - items.item_price * items.item_discount / 100) AS itemPrice , COUNT(carts.cart_item_id) AS itemsCount , carts.* , items.* FROM carts
INNER JOIN items ON items.item_id = carts.cart_item_id
GROUP BY carts.cart_item_id , carts.cart_user_id