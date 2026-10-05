USE praktikum_web_2401020163;

INSERT INTO program_studi (nama_prodi) VALUES
  ('Sistem Komputer'),
  ('Teknologi Informasi');

INSERT INTO mahasiswa
  (nim, nama, email, usia, program_studi_id)
VALUES
  ('2401020001', 'Khaerul', 'khaerul@example.com', 20, 1),
  ('2401020002', 'Ikhsan', 'ikhsan@example.com', 21, 1),
  ('2401020003', 'Midoriya', 'midoriya@example.com', 20, 2),
  ('2401020004', 'Asta', 'asta@example.com', 19, 2);

UPDATE mahasiswa
SET email = 'khaerul.update@example.com'
WHERE nim = '2401020001';

DELETE FROM mahasiswa
WHERE nim = '2401020004';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
  ON p.id = m.program_studi_id
ORDER BY m.nim;