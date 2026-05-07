-- Buat database dulu
CREATE DATABASE IF NOT EXISTS db_inventaris;
USE db_inventaris;

-- Tabel untuk menyimpan produk
CREATE TABLE produk (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100),
    tipe VARCHAR(20),
    merek VARCHAR(50),
    harga INT,
    stok INT
);

-- Tabel untuk menyimpan transaksi
CREATE TABLE transaksi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_produk INT,
    jumlah INT,
    keterangan VARCHAR(200),
    tanggal DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_produk) REFERENCES produk(id)
);

-- Data awal
INSERT INTO produk (nama_produk, tipe, merek, harga, stok) VALUES
('ThinkPad X1', 'Laptop', 'Lenovo', 15000000, 10),
('MacBook Air', 'Laptop', 'Apple', 18000000, 6),
('Acer Aspire 5', 'Laptop', 'Acer', 8500000, 3),
('iPhone 15', 'Smartphone', 'Apple', 16000000, 4),
('Samsung S24', 'Smartphone', 'Samsung', 12000000, 8),
('Xiaomi 14', 'Smartphone', 'Xiaomi', 7500000, 2);
