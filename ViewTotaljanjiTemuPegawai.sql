CREATE VIEW ViewTotalJanjiTemuPegawai AS
SELECT 
    pg.id_pegawai AS IDPegawai, 
    pg.nama AS Nama, 
    COUNT(jt.id_janji_temu) AS TotalJanjiTemu
FROM Pegawai pg
LEFT JOIN JanjiTemu jt ON pg.id_pegawai = jt.id_pegawai
GROUP BY pg.id_pegawai, pg.nama;
