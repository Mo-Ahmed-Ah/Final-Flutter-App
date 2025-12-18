-- Adding Users
INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_verfiycode`, `user_approve`, `user_create`, `user_password`) VALUES
( 'ahmed', 'ahmed7777003330@gmail.com', '01056866999', 85475, 1, '2025-12-06 05:54:51', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:00:52', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:06:00', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:06:04', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:06:05', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:11:42', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'Mohamed', 'Mohameld@gmail.com', '010226222612', 0, 0, '2025-12-02 08:18:31', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'new', 'Moha1meld@gmail.com', '010226222613', 15434, 0, '2025-12-04 13:30:41', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'hejdn', 'jsjjdjr@gejd.jdkdm', '045646565964', 49912, 1, '2025-12-06 07:16:41', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'hdjjr', 'hejrj@jejrj.xonmr', '616569562662', 76217, 1, '2025-12-06 07:44:44', '92e487490e609251fab4c83887bea222726d6ddc'),
( 'bjdndnd', 'hsiekene@jejej.dirmr', '6461326299229', 58890, 1, '2025-12-06 07:53:02', '553c3d7752f0d0c49a50305a5acf483127220cc6'),
( 'gvbbbb', 'fhbbnn@vhjn.hbjn', '5396696869699', 14158, 1, '2025-12-06 07:54:43', 'b0ded3e6cabc3061975b043d483446a90da32f4d'),
( 'gdhjd', 'hdjdjjnfnn@hrjn.com', '656659599595', 15039, 1, '2025-12-06 08:54:26', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'ahmed', 'jejdkjrm@hdikr.jdjnd', '816653299294', 13917, 1, '2025-12-06 14:44:00', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'ddfgg', 'dfghjjj@fhh.ffg', '5896699999999', 67048, 1, '2025-12-07 10:31:44', 'a3ef75e129bef511831e82353e68c29851340ed0'),
( 'ahmed', 'ahjdjfnf@hejrk.jdkmr', '62656566266259', 69996, 1, '2025-12-07 14:46:22', 'a3ef75e129bef511831e82353e68c29851340ed0');



-- Adding Categories
INSERT INTO categories (
    category_name,
    category_name_ar,
    category_image,
    category_datetime
)
VALUES
('laptop',     'لابتوب',        'laptop.svg',     NOW()),
('camera',     'كاميرا',        'camera.svg',     NOW()),
('mobile',     'موبيل',         'mobile.svg',     NOW()),
('shoes',      'احذية',         'shoes.svg',      NOW()),
('dress',      'فستان',         'dress.svg',      NOW()),
('tablet',     'تابلت',         'tablet.svg',     NOW()),
('watch',      'ساعة',          'watch.svg',      NOW()),
('headphones', 'سماعات',        'headphones.svg', NOW()),
('tv',         'تلفزيون',       'tv.svg',         NOW()),
('gaming',     'ألعاب',         'gaming.svg',     NOW()),
('furniture',  'أثاث',          'furniture.svg',  NOW()),
('beauty',     'مستحضرات تجميل', 'beauty.svg',     NOW()),
('books',      'كتب',           'books.svg',      NOW()),
('sports',     'رياضة',         'sports.svg',     NOW()),
('electronics','إلكترونيات',    'electronics.svg',NOW());


-- Adding Items
INSERT INTO items (
    item_name,
    item_name_ar,
    item_desc,
    item_desc_ar,
    item_image,
    item_count,
    item_price,
    item_discount,
    item_date,
    item_active,
    item_cat
)
VALUES
-- Laptops (1)
('Dell XPS 13', 'ديل اكس بي اس 13', 'High-performance ultrabook', 'لابتوب عالي الأداء', 'laptop1.png', 10, 1200, 10, NOW(), 1, 1),
('HP Spectre', 'اتش بي سبيكتر', 'Premium sleek laptop', 'لابتوب أنيق وفاخر', 'laptop2.png', 8, 1500, 15, NOW(), 1, 1),
('Lenovo ThinkPad X1', 'لينوفو ثينك باد X1', 'Business laptop', 'لابتوب للأعمال', 'laptop3.png', 12, 1350, 5, NOW(), 1, 1),
('MacBook Air M2', 'ماك بوك اير M2', 'Apple lightweight laptop', 'لابتوب آبل خفيف', 'laptop4.png', 7, 1600, 0, NOW(), 1, 1),

-- Cameras (2)
('Canon EOS M50', 'كانون EOS M50', 'Mirrorless camera', 'كاميرا بدون مرآة', 'camera1.png', 15, 700, 5, NOW(), 1, 2),
('Sony A6400', 'سوني A6400', '4K mirrorless camera', 'كاميرا 4K', 'camera2.png', 12, 900, 10, NOW(), 1, 2),
('Nikon Z50', 'نيكون Z50', 'Compact mirrorless camera', 'كاميرا مدمجة', 'camera3.png', 9, 850, 8, NOW(), 1, 2),

-- Mobiles (3)
('iPhone 15', 'ايفون 15', 'Latest Apple smartphone', 'أحدث هاتف آبل', 'mobile1.png', 20, 1100, 0, NOW(), 1, 3),
('Samsung S24', 'سامسونج S24', 'Samsung flagship phone', 'هاتف سامسونج رائد', 'mobile2.png', 25, 950, 0, NOW(), 1, 3),
('Google Pixel 8', 'جوجل بيكسل 8', 'Pure Android phone', 'هاتف أندرويد خام', 'mobile3.png', 14, 850, 5, NOW(), 1, 3),
('Xiaomi 14', 'شاومي 14', 'High value smartphone', 'هاتف قوي بسعر مناسب', 'mobile4.png', 18, 780, 10, NOW(), 1, 3),

-- Shoes (4)
('Nike Air Max', 'نايك اير ماكس', 'Running shoes', 'حذاء للركض', 'shoes1.png', 30, 120, 10, NOW(), 1, 4),
('Adidas Ultraboost', 'اديداس الترا بوست', 'Boost running shoes', 'حذاء ركض مميز', 'shoes2.png', 22, 140, 5, NOW(), 1, 4),
('Puma RS-X', 'بوما RS-X', 'Sport sneakers', 'حذاء رياضي', 'shoes3.png', 16, 110, 0, NOW(), 1, 4),
('New Balance 574', 'نيو بالانس 574', 'Classic sneakers', 'حذاء كلاسيكي', 'shoes4.png', 19, 100, 0, NOW(), 1, 4),

-- Dresses (5)
('Summer Dress', 'فستان صيفي', 'Light summer dress', 'فستان خفيف', 'dress1.png', 18, 60, 0, NOW(), 1, 5),
('Evening Dress', 'فستان سهرة', 'Elegant evening dress', 'فستان أنيق', 'dress2.png', 12, 120, 15, NOW(), 1, 5),
('Casual Dress', 'فستان كاجوال', 'Daily casual dress', 'فستان يومي', 'dress3.png', 20, 55, 5, NOW(), 1, 5),
('Floral Dress', 'فستان مزهر', 'Floral style dress', 'فستان مزخرف', 'dress4.png', 14, 70, 0, NOW(), 1, 5),

-- Tablets (6)
('iPad Pro', 'ايباد برو', 'Apple tablet', 'تابلت آبل', 'tablet1.png', 10, 900, 0, NOW(), 1, 6),
('Samsung Tab S9', 'سامسونج تاب S9', 'Android tablet', 'تابلت أندرويد', 'tablet2.png', 11, 750, 5, NOW(), 1, 6),

-- Watches (7)
('Apple Watch 9', 'ابل ووتش 9', 'Smart watch', 'ساعة ذكية', 'watch1.png', 20, 420, 0, NOW(), 1, 7),
('Galaxy Watch 6', 'جالكسي ووتش 6', 'Samsung smart watch', 'ساعة سامسونج', 'watch2.png', 18, 390, 5, NOW(), 1, 7),

-- Headphones (8)
('AirPods Pro', 'ايربودز برو', 'Wireless earbuds', 'سماعات لاسلكية', 'headphones1.png', 25, 250, 0, NOW(), 1, 8),
('Sony WH-1000XM5', 'سوني XM5', 'Noise cancelling headset', 'سماعة عزل ضوضاء', 'headphones2.png', 13, 350, 10, NOW(), 1, 8),

-- TV (9)
('LG OLED 55', 'ال جي OLED 55', 'OLED Smart TV', 'تلفزيون ذكي', 'tv1.png', 6, 1300, 10, NOW(), 1, 9),
('Samsung QLED 65', 'سامسونج QLED 65', 'QLED Smart TV', 'تلفزيون QLED', 'tv2.png', 5, 1500, 5, NOW(), 1, 9),

-- Gaming (10)
('PlayStation 5', 'بلايستيشن 5', 'Gaming console', 'جهاز ألعاب', 'gaming1.png', 9, 600, 0, NOW(), 1, 10),
('Xbox Series X', 'اكس بوكس X', 'Microsoft console', 'جهاز مايكروسوفت', 'gaming2.png', 7, 580, 0, NOW(), 1, 10),

-- Furniture (11)
('Office Chair', 'كرسي مكتب', 'Comfort office chair', 'كرسي مريح', 'furniture1.png', 14, 180, 5, NOW(), 1, 11),
('Wooden Desk', 'مكتب خشبي', 'Office desk', 'مكتب للعمل', 'furniture2.png', 8, 320, 10, NOW(), 1, 11),

-- Beauty (12)
('Makeup Kit', 'طقم مكياج', 'Beauty makeup kit', 'مجموعة تجميل', 'beauty1.png', 30, 90, 0, NOW(), 1, 12),
('Perfume', 'عطر', 'Luxury perfume', 'عطر فاخر', 'beauty2.png', 22, 150, 10, NOW(), 1, 12),

-- Books (13)
('Novel Book', 'رواية', 'Best selling novel', 'رواية مشهورة', 'book1.png', 40, 25, 0, NOW(), 1, 13),
('Programming Book', 'كتاب برمجة', 'Learn programming', 'تعلم البرمجة', 'book2.png', 35, 45, 5, NOW(), 1, 13),

-- Sports (14)
('Football', 'كرة قدم', 'Professional football', 'كرة احترافية', 'sports1.png', 50, 30, 0, NOW(), 1, 14),
('Tennis Racket', 'مضرب تنس', 'Light racket', 'مضرب خفيف', 'sports2.png', 20, 110, 10, NOW(), 1, 14),

-- Electronics (15)
('Power Bank', 'باور بانك', 'Fast charging power bank', 'شاحن متنقل', 'electronics1.png', 45, 40, 0, NOW(), 1, 15),
('Wireless Charger', 'شاحن لاسلكي', 'Qi wireless charger', 'شاحن بدون أسلاك', 'electronics2.png', 32, 55, 5, NOW(), 1, 15);


-- Adding Favorites

INSERT INTO favorites (favorite_user_id, favorite_item_id, favorite_datetime)
VALUES
-- user 1
(1, 1, NOW()),   -- Dell XPS 13
(1, 5, NOW()),   -- Canon EOS M50
(1, 9, NOW()),   -- Samsung S24

-- user 3
(3, 4, NOW()),   -- MacBook Air M2
(3, 8, NOW()),   -- iPhone 15
(3, 13, NOW()),  -- Nike Air Max

-- user 4
(4, 2, NOW()),   -- HP Spectre
(4, 6, NOW()),   -- Sony A6400
(4, 18, NOW()),  -- Casual Dress

-- user 10
(10, 21, NOW()), -- iPad Pro
(10, 23, NOW()), -- Apple Watch 9
(10, 25, NOW()), -- AirPods Pro

-- user 11
(11, 29, NOW()), -- LG OLED 55
(11, 31, NOW()), -- PlayStation 5
(11, 33, NOW()); -- Office Chair

-- Test Items Views
CREATE OR REPLACE VIEW itemsview as 
SELECT items.* , categories.* FROM items
INNER JOIN categories ON categories.category_id = items.item_cat

-- Test new Items Views
SELECT items1view.* , 1 as favorite FROM items1view
INNER JOIN favorites ON favorites.favorite_item_id = items1view.item_id AND favorites.favorite_user_id = 1
UNION ALL
SELECT * , 0 as favorite FROM items1view
WHERE item_id NOT IN ( SELECT items1view.item_id FROM items1view
INNER JOIN favorites ON favorites.favorite_item_id = items1view.item_id AND favorites.favorite_user_id = 1)