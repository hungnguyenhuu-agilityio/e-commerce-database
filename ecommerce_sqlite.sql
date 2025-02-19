/*****
    DROP TABLES
*****/

DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Category;

/*****
    CREATE TABLES
*****/
CREATE TABLE Category (
    CategoryId INTEGER NOT NULL,
    Name VARCHAR(255) NOT NULL,
    ReturnDays INTEGER NOT NULL,
    Condition VARCHAR (255),
    CONSTRAINT PK_Category PRIMARY KEY (CategoryId)
);

CREATE TABLE Product (
    ProductId INTEGER NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2) DEFAULT 0.0 NOT NULL,
    CategoryId INTEGER NOT NULL,
    CONSTRAINT PK_Product PRIMARY KEY (ProductId),
    FOREIGN KEY (CategoryId) REFERENCES Category(CategoryId)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);


/*****
    INSERT DATA
*****/

INSERT INTO Category (Name, ReturnDays, Condition)
VALUES
    ('Electronics', 30, 'Must be in original packaging and unused'),
    ('Clothing', 15, 'Must be unworn and unwashed with tags attached'),
    ('Home & Kitchen', 30, 'Must be in original packaging and unused'),
    ('Beauty', 30, 'Must be unopened and unused'),
    ('Books & Media', 30, 'Must be in original packaging and unused');

INSERT INTO Product (Name, Description, Price, CategoryId)
VALUES
    ('iPhone 13 Pro', 'The iPhone 13 Pro features a 6.1-inch Super Retina XDR display with ProMotion technology for smoother scrolling, an A15 Bionic chip for incredible performance, a triple-camera system with Night mode, and up to 22 hours of battery life. Available in Graphite, Gold, Silver, and Sierra Blue.', 999, 1),
    ('Samsung Galaxy S22', 'The Samsung Galaxy S22 comes with a 6.1-inch Dynamic AMOLED 2X display, a Snapdragon 8 Gen 1 processor, a 50MP triple-camera system with Nightography mode, and an Armor Aluminum frame for durability. IP68 water-resistant and supports wireless charging.', 899, 1),
    ('Sony WH-1000XM5', 'The Sony WH-1000XM5 wireless noise-canceling headphones feature advanced dual processors, 8 microphones for superior call quality, and up to 30 hours of battery life. Comfortable lightweight design with adaptive sound control and Alexa voice assistant.', 399, 1),
    ('Dell XPS 13', 'The Dell XPS 13 is an ultra-thin, lightweight laptop with a 13.4-inch FHD+ InfinityEdge display, 12th Gen Intel Core i7 processor, 16GB RAM, and 512GB SSD. Features a precision touchpad, fingerprint reader, and a premium aluminum chassis.', 1299, 1),
    ('Apple iPad Air', 'The iPad Air boasts a 10.9-inch Liquid Retina display, M1 chip for incredible speed, 12MP Ultra-Wide front camera with Center Stage, Touch ID, and all-day battery life. Supports Apple Pencil 2 and Magic Keyboard.', 599, 1),
    ('Nike Air Max 270', 'Nike Air Max 270 sneakers feature a breathable mesh upper, a large 270-degree Air unit for maximum cushioning, and a lightweight foam midsole for all-day comfort. Available in multiple colorways.', 150, 2),
    ('Adidas Ultraboost 22', 'Adidas Ultraboost 22 running shoes provide superior energy return with Boost midsole technology, a Primeknit+ upper for adaptive fit, and a Stretchweb outsole with Continental Rubber for superior grip.', 180, 2),
    ('Levi’s 501 Original Jeans', 'Classic Levi’s 501 Original Fit Jeans made from durable 100% cotton denim with a button fly, straight-leg cut, and five-pocket styling. Timeless design perfect for casual wear.', 70, 2),
    ('The North Face Puffer Jacket', 'A warm insulated jacket with 700-fill goose down, water-resistant shell, and zippered pockets. Lightweight and packable, perfect for outdoor adventures or everyday wear.', 220, 2),
    ('Polo Ralph Lauren T-Shirt', 'A premium cotton t-shirt with a ribbed crew neckline, short sleeves, and the iconic Polo Ralph Lauren embroidered logo. Soft, breathable, and perfect for casual outings.', 55, 2),
    ('Instant Pot Duo 7-in-1', 'The Instant Pot Duo 7-in-1 combines a pressure cooker, slow cooker, rice cooker, steamer, sauté pan, yogurt maker, and warmer. Features 13 customizable programs, stainless steel inner pot, and dishwasher-safe parts.', 99, 3),
    ('Keurig K-Supreme Coffee Maker', 'A single-serve coffee maker with MultiStream technology for even saturation and better flavor. Compatible with K-Cup pods, features a strong brew setting, and has a 66 oz removable reservoir.', 149, 3),
    ('Dyson V15 Detect Vacuum', 'A powerful cordless vacuum with laser dust detection, piezo sensor to measure dust levels, up to 60 minutes of runtime, and HEPA filtration to trap 99.99% of particles.', 699, 3),
    ('Calphalon 10-Piece Cookware Set', 'A premium nonstick cookware set with hard-anodized aluminum construction, stay-cool stainless steel handles, and oven-safe up to 450°F. Includes frying pans, saucepans, and stockpot.', 249, 3),
    ('Ninja Foodi Air Fryer', 'A versatile air fryer with a 5.5-quart ceramic-coated basket, 7 cooking functions including roast and dehydrate, and a 1750-watt heating system for crispy, healthy meals.', 129, 3),
    ('CeraVe Hydrating Facial Cleanser', 'A gentle facial cleanser with ceramides and hyaluronic acid to maintain the skin’s natural barrier. Non-comedogenic, fragrance-free, and dermatologist-recommended.', 15, 4),
    ('The Ordinary Niacinamide 10% + Zinc 1%', 'A lightweight serum that reduces excess oil, minimizes pores, and improves skin texture. Vegan, cruelty-free, and free from parabens and sulfates.', 10, 4),
    ('Maybelline Lash Sensational Mascara', 'A volumizing mascara with a curved brush for fanned-out lashes. Waterproof formula, available in Blackest Black and Brownish Black.', 12, 4),
    ('L’Oreal Paris Revitalift Night Cream', 'An anti-aging night cream infused with Pro-Retinol and hyaluronic acid to smooth wrinkles and deeply hydrate the skin. Dermatologist-tested and suitable for all skin types.', 25, 4),
    ('Neutrogena Hydro Boost Gel Cream', 'A lightweight, oil-free moisturizer with hyaluronic acid for 24-hour hydration. Absorbs quickly, leaving skin soft and smooth.', 20, 4),
    ('The Alchemist', 'A bestselling novel by Paulo Coelho about a young shepherd’s journey to discover his personal legend. Translated into 80 languages and a timeless classic.', 15, 5),
    ('Atomic Habits', 'A self-improvement book by James Clear that teaches practical strategies for building good habits and breaking bad ones. Based on scientific research and real-life examples.', 22, 5),
    ('The Midnight Library', 'A thought-provoking novel by Matt Haig about a woman who explores alternate versions of her life through a magical library.', 18, 5),
    ('Dune', 'A sci-fi masterpiece by Frank Herbert set in a futuristic world of noble houses, desert planets, and a powerful spice that controls the universe.', 20, 5),
    ('Sapiens: A Brief History of Humankind', 'A critically acclaimed book by Yuval Noah Harari exploring the history of human civilization, from the Stone Age to modern technology.', 25, 5),
    ('Apple MacBook Pro 14"', 'A high-performance laptop with a 14-inch Liquid Retina XDR display, M3 Pro chip, 16GB RAM, and 1TB SSD. Features a 1080p FaceTime HD camera and studio-quality mics.', 1999, 1),
    ('Sony PlayStation 5', 'A next-gen gaming console with ultra-fast SSD storage, 4K gaming capabilities, Tempest 3D AudioTech, and a DualSense wireless controller for immersive gameplay.', 499, 1),
    ('Bose QuietComfort Earbuds II', 'Premium noise-canceling earbuds with custom-tuned sound, adjustable ANC levels, IPX4 water resistance, and up to 24 hours of battery life with the charging case.', 299, 1),
    ('Ray-Ban Aviator Sunglasses', 'Timeless aviator sunglasses with polarized lenses, UV protection, and a lightweight metal frame. Available in various lens tints.', 150, 2),
    ('KitchenAid Artisan Stand Mixer', 'A versatile stand mixer with a 5-quart stainless steel bowl, 10-speed settings, and multiple attachments for kneading, mixing, and whipping. Available in multiple colors.', 449, 3);
