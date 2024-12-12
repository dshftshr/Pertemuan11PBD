CREATE VIEW ViewJadwalPegawai AS
SELECT 
    pg.id_pegawai AS IDPegawai, 
    pg.nama AS Nama, 
    j.hari AS Hari, 
    j.jam_mulai AS JamMulai, 
    j.jam_selesai AS JamSelesai
FROM Pegawai pg
JOIN Jadwal j ON pg.id_pegawai = j.id_pegawai;
