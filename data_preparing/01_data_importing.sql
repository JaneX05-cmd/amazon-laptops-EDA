01_data_importing.sql-- Tworzenie tabeli  (surowe dane z Amazona)
CREATE TABLE amazon_laptops_staging (
    id TEXT,                     -- numer porz
    product_title TEXT,          -- Nazwa produktu
    rating TEXT,                 -- Ocena 
    total_rating TEXT,           -- Liczba opinii (np. "(63)")
    price TEXT,                  -- Cena z przecinkami i kropkami (np. "85,990.")
    next_month_bought TEXT,      -- Informacja o zakupach
    offer TEXT,                  -- Zniżka (np. "-28%")
    mrp TEXT,                    -- Cena sugerowana z symbolem waluty (np. "₹81,990")
    product_details_dict TEXT,   -- Słownik ze szczegółami w formie tekstu
    brand TEXT,                  -- Marka
    model_name TEXT,             -- Nazwa modelu
    screen_size TEXT,            -- Rozmiar ekranu
    colour TEXT,                 -- Kolor
    hard_disk_size TEXT,         -- Dysk ()
    cpu_model TEXT,              -- Procesor
    ram TEXT,                    -- RAM (np. "16 GB")
    os TEXT,                     -- System operacyjny
    special_features TEXT,       -- Funkcje specjalne (długi tekst)
    graphics_card TEXT,          -- Karta graficzna
    about TEXT,					 -- Opis marketingowy produktu
);

COPY amazon_laptops_staging
FROM '/Users/janek/Documents/Data Analysis Learning/EDA Project/csv_laptop_clean.csv'
IF NU
WITH (FORMAT CSV, HEADER, DELIMITER ',');