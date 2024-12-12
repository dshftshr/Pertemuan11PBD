
CREATE VIEW ViewPendapatanPegawai AS
SELECT 
    pg.id_pegawai AS IDPegawai, 
    pg.nama AS Nama, 
    SUM(pm.jumlah) AS TotalPendapatan
FROM Pegawai pg
JOIN JanjiTemu jt ON pg.id_pegawai = jt.id_pegawai
JOIN Pembayaran pm ON jt.id_janji_temu = pm.id_janji_temu
GROUP BY pg.id_pegawai, pg.nama;
