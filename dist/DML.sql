use hopi_hari_db;
INSERT INTO areas (name) VALUES 
("Kaminda"),
("Wild West"),
("Infantasia"),
("Aribabiba"),
("Mistieri");


-- Cine 180 - Kaminda
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Cine 180", 2, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));

-- Espetáculo de Rua - Kaminda
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Espetáculo de Rua", 0, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));

-- Infocentro - Kaminda
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Infocentro", 0, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));

-- Ghosti Hotel - Wild West
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Ghosti Hotel", 4, "Aberto", (SELECT id FROM areas WHERE name = "Wild West"));

-- Saloon Show - Wild West
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Saloon Show", 0, "Aberto", (SELECT id FROM areas WHERE name = "Wild West"));

-- Evolution - Mistieri
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Evolution", 6, "Aberto", (SELECT id FROM areas WHERE name = "Mistieri"));

-- Simulákron - Mistieri
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Simulákron", 4, "Aberto", (SELECT id FROM areas WHERE name = "Mistieri"));

-- Theatro di Kaminda - Kaminda
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Theatro di Kaminda", 2, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));

-- Eléktron - Kaminda
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Eléktron", 5, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));

-- Kastel di Lendas - Infantasia
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Kastel di Lendas", 4, "Aberto", (SELECT id FROM areas WHERE name = "Infantasia"));

-- Crazy Wagon - Wild West
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Crazy Wagon", 6, "Aberto", (SELECT id FROM areas WHERE name = "Wild West"));

-- Vambatê - Aribabiba
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Vambatê", 3, "Aberto", (SELECT id FROM areas WHERE name = "Aribabiba"));

-- Toka do Uga - Kaminda
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Toka do Uga", 2, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));
 use hopi_hari_db;

-- Montezum - Mistieri
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Montezum", 5, "Aberto", (SELECT id FROM areas WHERE name = "Mistieri"));

-- Ekatomb - Mistieri
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Ekatomb", 10, "Aberto", (SELECT id FROM areas WHERE name = "Mistieri"));

-- Katakumb - Mistieri
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Katakumb", 7, "Aberto", (SELECT id FROM areas WHERE name = "Mistieri"));

-- Rio Bravo - Wild West
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Rio Bravo", 15, "Aberto", (SELECT id FROM areas WHERE name = "Wild West"));

-- West River Hotel - Wild West
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("West River Hotel", 3, "Aberto", (SELECT id FROM areas WHERE name = "Wild West"));

-- La Tour Eiffel - Aribabiba
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("La Tour Eiffel", 12, "Aberto", (SELECT id FROM areas WHERE name = "Aribabiba"));

-- Vurang - Mistieri
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Vurang", 8, "Aberto", (SELECT id FROM areas WHERE name = "Mistieri"));

-- Giranda Mundi - Kaminda (corrigido)
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Giranda Mundi", 5, "Aberto", (SELECT id FROM areas WHERE name = "Kaminda"));

-- Speedi 64 - Infantasia
INSERT INTO rides(name, waiting_time, status, id_areas)
VALUES ("Speedi 64", 2, "Aberto", (SELECT id FROM areas WHERE name = "Infantasia"));


-- Queries UPDATE para definir imagens das atrações
UPDATE rides SET image = "crazywsagon.jpg" WHERE name = "Crazy Wagon";
UPDATE rides SET image = "ekatomb.jpg" WHERE name = "Ekatomb";
UPDATE rides SET image = "elektron.jpg" WHERE name = "Elektron";
UPDATE rides SET image = "espetaculoderua.jpg" WHERE name = "Espetáculo de Rua";
UPDATE rides SET image = "evolution.jpg" WHERE name = "Evolution";
UPDATE rides SET image = "ghostihotel.jpg" WHERE name = "Ghosti Hotel";
UPDATE rides SET image = "girandamundi.jpg" WHERE name = "Giranda Mund";
UPDATE rides SET image = "infocentro.jpg" WHERE name = "InfoCentro";
UPDATE rides SET image = "kasteldilendas.jpg" WHERE name = "Kastel di Lendas";
UPDATE rides SET image = "katakumb.jpg" WHERE name = "Katakumb";
UPDATE rides SET image = "montanha russa torre eiffel.jpg" WHERE name = "La Tour Eiffel";
UPDATE rides SET image = "montezum.webp" WHERE name = "Montezum";
UPDATE rides SET image = "riobravo.png" WHERE name = "Rio Bravo";
UPDATE rides SET image = "saloonshow.webp" WHERE name = "Saloon Show";
UPDATE rides SET image = "simulakron.jpg" WHERE name = "Simulakron";
UPDATE rides SET image = "speed64.jpg" WHERE name = "Speedi 64";
UPDATE rides SET image = "theatrodikaminda.jpg" WHERE name = "Theatro di Kaminda";
UPDATE rides SET image = "tokadouga.jpg" WHERE name = "Toka do Uga";
UPDATE rides SET image = "vambate.avif" WHERE name = "Vambatê";
UPDATE rides SET image = "vurang.jpg" WHERE name = "Vurang";
UPDATE rides SET image = "westriverhotel.jpg" WHERE name = "West River Hotel";  