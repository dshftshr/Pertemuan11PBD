CREATE VIEW ViewPelangganPembayaran AS
SELECT 
    p.id_pelanggan AS IDPelanggan, 
    p.nama AS Nama, 
    SUM(pm.jumlah) AS TotalPembayaran
FROM Pelanggan p
JOIN JanjiTemu jt ON p.id_pelanggan = jt.id_pelanggan
JOIN Pembayaran pm ON jt.id_janji_temu = pm.id_janji_temu
GROUP BY p.id_pelanggan, p.nama;