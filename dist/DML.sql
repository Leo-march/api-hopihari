{   
    "first_name":"Leonardo",
    "last_name":"Marcheti",
    "email":"leo@gmail.com",
    "password":"12345",
    "birth_date":"2009-02-10",
    "phone":"14999999999"
}

{
    "first_name": "Sarah",
    "last_name": "de Jesus",
    "email": "sarah@gmail.com",
    "password": "12345",
    "birth_date": "2009-02-17",
    "phone": "14999999999"
}

{
    "first_name": "Thalisson",
    "last_name": "Douglas",
    "email": "tales@gmail.com",
    "password": "12345",
    "birth_date": "2009-06-17",
    "phone": "14999999999"
}

INSERT INTO areas (name) VALUES
("Mistieri"),
("Kaminda Mundi"),
("Aribabiba"),
("Infantasia"),
("Wild West");

INSERT INTO rides (name, waiting_time, status, id_areas) VALUES
('Montanha Mágica', 35, 'Muito Movimentado',1),
('Carrossel Encantado', 15, 'Normal',2),
('Roda Gigante Celestial', 32, 'Normal',3);

INSERT INTO `lines`(id_user, id_ride) VALUES
('7','7'),
('8','7'),
('8','8'),
('9','8'),
('7','9'),
('9','9');

			SELECT rides.name AS nome_do_brinquedo,
				   `lines`.*
			  FROM `lines`
		INNER JOIN rides
				ON rides.id =`lines`.id_ride;
                
			SELECT rides.name AS nome_do_brinquedo,
				   users.first_name AS nome,
				   `lines`.*
			  FROM `lines` 
		INNER JOIN rides
				ON rides.id =`lines`.id_ride
		INNER JOIN users
				ON users.id =`lines`.id_user
             WHERE `lines`.id_ride = 7;

-- Cine 180 - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Cine 180", 2, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Espetáculo de Rua - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Espetáculo de Rua", 0, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Infocentro - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Infocentro", 0, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Ghosti Hotel - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Ghosti Hotel", 4, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Saloon Show - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Saloon Show", 0, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Carrossel di Billie - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Carrossel di Billie", 2, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Hora do Horror Kids - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Hora do Horror Kids", 1, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Super Heroi Show - Aribabiba
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Super Herói Show", 0, "Aberto", "Aribabiba", (SELECT id FROM areas WHERE nome = "Aribabiba"));

-- The Looney Tunes Show - Aribabiba (antigo show temático)
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("The Looney Tunes Show", 0, "Fechado", "Aribabiba", (SELECT id FROM areas WHERE nome = "Aribabiba"));

-- Cine 180 - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Cine 180", 2, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Espetáculo de Rua - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Espetáculo de Rua", 0, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Infocentro - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Infocentro", 0, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Ghosti Hotel - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Ghosti Hotel", 4, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Saloon Show - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Saloon Show", 0, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Carrossel di Billie - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Carrossel di Billie", 2, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Hora do Horror Kids - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Hora do Horror Kids", 1, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Cine 180 - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Cine 180", 2, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Espetáculo de Rua - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Espetáculo de Rua", 0, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Infocentro - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Infocentro", 0, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Ghosti Hotel - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Ghosti Hotel", 4, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Saloon Show - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Saloon Show", 0, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Evolution - Mistieri
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Evolution", 6, "Aberto", "Mistieri", (SELECT id FROM areas WHERE nome = "Mistieri"));

-- Simulákron - Mistieri
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Simulákron", 4, "Aberto", "Mistieri", (SELECT id FROM areas WHERE nome = "Mistieri"));

-- Theatro di Kaminda - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Theatro di Kaminda", 2, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Eléktron - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Eléktron", 5, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Trukes di Kaminda - Kaminda
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Trukes di Kaminda", 3, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Kastel di Lendas - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Kastel di Lendas", 4, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Minimontanha - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Minimontanha", 2, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Trenzinho - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Trenzinho", 1, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Crazy Wagon - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Crazy Wagon", 6, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Old West - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Old West", 2, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- Vambatê - Aribabiba
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Vambatê", 3, "Aberto", "Aribabiba", (SELECT id FROM areas WHERE nome = "Aribabiba"));

-- Toka di Urso - Aribabiba
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Toka di Urso", 2, "Aberto", "Aribabiba", (SELECT id FROM areas WHERE nome = "Aribabiba"));
 use hopi_hari_db;

-- Montezum - Mistieri
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Montezum", 5, "Aberto", "Mistieri", (SELECT id FROM areas WHERE nome = "Mistieri"));

-- Ekatomb - Mistieri
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Ekatomb", 10, "Aberto", "Mistieri", (SELECT id FROM areas WHERE nome = "Mistieri"));

-- Katakumb - Mistieri
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Katakumb", 7, "Aberto", "Mistieri", (SELECT id FROM areas WHERE nome = "Mistieri"));

-- Rio Bravo - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Rio Bravo", 15, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- West River Hotel - Wild West
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("West River Hotel", 3, "Aberto", "Wild West", (SELECT id FROM areas WHERE nome = "Wild West"));

-- La Tour Eiffel - Aribabiba
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("La Tour Eiffel", 12, "Aberto", "Aribabiba", (SELECT id FROM areas WHERE nome = "Aribabiba"));

-- Vurang - Mistieri
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Vurang", 8, "Aberto", "Mistieri", (SELECT id FROM areas WHERE nome = "Mistieri"));

-- Giranda Mundi - Kaminda (corrigido)
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Giranda Mundi", 5, "Aberto", "Kaminda", (SELECT id FROM areas WHERE nome = "Kaminda"));

-- Speedi Kid - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Speedi Kid", 2, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));

-- Doremí - Infantasia
INSERT INTO rides(name, waiting_time, status, area, id_areas)
VALUES ("Doremí", 3, "Aberto", "Infantasia", (SELECT id FROM areas WHERE nome = "Infantasia"));