-- Hapus baris dengan email atau username NULL
DELETE FROM worshop WHERE email IS NULL OR username IS NULL;

-- Hapus baris dengan email tidak valid (tidak mengandung '@')
DELETE FROM worshop WHERE email NOT LIKE '%@%';

-- Hapus duplikat email, simpan baris dengan id terkecil
DELETE FROM worshop a
USING worshop b
WHERE a.email = b.email AND a.id > b.id; 