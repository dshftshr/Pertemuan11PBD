CREATE VIEW ViewPelangganRatingTertinggi AS
SELECT 
    p.id_pelanggan AS IDPelanggan, 
    p.nama AS Nama, 
    MAX(u.rating) AS RatingTertinggi
FROM Pelanggan p
JOIN JanjiTemu jt ON p.id_pelanggan = jt.id_pelanggan
JOIN Ulasan u ON jt.id_janji_temu = u.id_janji_temu
GROUP BY p.id_pelanggan, p.nama;