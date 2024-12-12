CREATE VIEW ViewPelangganJanjiTemuTerakhir AS
SELECT 
    p.id_pelanggan AS IDPelanggan, 
    p.nama AS Nama, 
    MAX(jt.tanggal) AS TanggalJanjiTemuTerakhir
FROM Pelanggan p
LEFT JOIN JanjiTemu jt ON p.id_pelanggan = jt.id_pelanggan
GROUP BY p.id_pelanggan, p.nama;
 SELECT * FROM ViewPelangganJanjiTemu;