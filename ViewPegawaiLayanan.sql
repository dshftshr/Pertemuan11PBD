CREATE VIEW ViewPegawaiLayanan AS
SELECT 
    pg.id_pegawai AS IDPegawai, 
    pg.nama AS NamaPegawai, 
    l.nama_layanan AS NamaLayanan, 
    COUNT(jt.id_layanan) AS TotalLayanan
FROM Pegawai pg
JOIN JanjiTemu jt ON pg.id_pegawai = jt.id_pegawai
JOIN Layanan l ON jt.id_layanan = l.id_layanan
GROUP BY pg.id_pegawai, pg.nama, l.nama_layanan;