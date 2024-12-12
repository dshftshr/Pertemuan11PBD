CREATE VIEW ViewDaftarPegawai AS
SELECT 
    id_pegawai AS IDPegawai, 
    nama AS Nama, 
    nomor_telepon AS NomorTelepon, 
    email AS Email, 
    posisi AS Posisi, 
    gaji AS Gaji, 
    tanggal_mulai_kerja AS TanggalMulaiKerja
FROM Pegawai;