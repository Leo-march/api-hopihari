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

INSERT INTO rides (name, waiting_time, status, area) VALUES
('Montanha Mágica', 35, 'Muito Movimentado', 'A'),
('Carrossel Encantado', 15, 'Normal', 'B'),
('Roda Gigante Celestial', 32, 'Normal', 'C');

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