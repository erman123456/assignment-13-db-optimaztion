-- Hapus baris dengan email atau username NULL
DELETE FROM users WHERE email IS NULL OR username IS NULL;

-- Hapus baris dengan email tidak valid (tidak mengandung '@')
DELETE FROM users WHERE email NOT LIKE '%@%';

-- Hapus duplikat email, simpan baris dengan id terkecil
DELETE FROM users a
USING users b
WHERE a.email = b.email AND a.id > b.id; 