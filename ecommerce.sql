/*****
    DROP TABLES
*****/

DROP TABLE IF EXISTS [Product];
DROP TABLE IF EXISTS [Category];

/*****
    CREATE TABLES
*****/
CREATE TABLE [Category] (
    [CategoryId] INTEGER NOT NULL,
    [Name] VARCHAR(255) NOT NULL,
    [ReturnDays] INTEGER NOT NULL,
    [Condition] VARCHAR (255),
    CONSTRAINT [PK_Category] PRIMARY KEY ([CategoryId])
);

CREATE TABLE [Product] (
    [ProductId] INTEGER NOT NULL,
    [Name] VARCHAR(255) NOT NULL,
    [Description] TEXT,
    [Price] DECIMAL(10,2) DEFAULT 0.0 NOT NULL,
    [CategoryId] INTEGER NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY ([ProductId]),
    FOREIGN KEY ([CategoryId]) REFERENCES [Category]([CategoryId])
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);


/*****
    INSERT DATA
*****/

INSERT INTO [Category] ([Name], [ReturnDays], [Condition])
VALUES
    ('Electronics', 30, 'Must be in original packaging and unused'),
    ('Clothing', 15, 'Must be unworn and unwashed with tags attached'),
    ('Home & Kitchen', 30, 'Must be in original packaging and unused'),
    ('Beauty', 30, 'Must be unopened and unused'),
    ('Books & Media', 30, 'Must be in original packaging and unused');

INSERT INTO [Product] ([Name], [Description], [Price], [CategoryId])
VALUES
    ('iPhone 13 Pro', 'The iPhone 13 Pro is a powerful smartphone with a 6.1-inch Super Retina XDR display, A15 Bionic chip, and advanced camera system.', 999, 1),
    ('MacBook Pro', 'The MacBook Pro is a powerful laptop with a 16-inch Retina display, A14 Bionic chip, and a solid build quality.', 1299, 2),
    ('Samsung Galaxy S21', 'The Samsung Galaxy S21 is a powerful smartphone with a 6.2-inch Dynamic AMOLED 2X display, S Pen, and a long-lasting battery.', 1099, 1),
    ('Dell XPS 13', 'The Dell XPS 13 is a powerful laptop with a 13-inch FHD display, Intel Core i7 processor, and a solid build quality.', 1399, 2),
    ('Sony WH-1000XM4', 'The Sony WH-1000XM4 is a wireless headphones with a noise-cancellation feature, a 40-hour battery life, and a long-lasting battery.', 299, 3),
    ('Nike Air Max 270', 'The Nike Air Max 270 is a comfortable sneaker with a high-top design and a responsive midsole.', 89, 4),
    ('Levi 501', 'The Levi 501 is a classic dress shirt with a high-quality cotton blend and a classic cut.', 19, 5);