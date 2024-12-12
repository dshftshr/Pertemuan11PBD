CREATE VIEW ViewPelangganJanjiTemu AS
SELECT 
    p.id_pelanggan AS IDPelanggan, 
    p.nama AS Nama, 
    COUNT(jt.id_janji_temu) AS TotalJanjiTemu
FROM Pelanggan p
LEFT JOIN JanjiTemu jt ON p.id_pelanggan = jt.id_pelanggan
GROUP BY p.id_pelanggan, p.nama;