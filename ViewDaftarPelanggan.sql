CREATE VIEW ViewDaftarPelanggan AS
SELECT 
    id_pelanggan AS IDPelanggan, 
    nama AS Nama, 
    nomor_telepon AS NomorTelepon, 
    email AS Email, 
    alamat AS Alamat
FROM Pelanggan;