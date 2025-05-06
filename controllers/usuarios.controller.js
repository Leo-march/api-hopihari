const mysql = require("../mysql");
const bcrpt = require("bcrypt");
const jwt = require("jsonwebtoken");


exports.atualizarUsuario = async (req, res) => {
    try {
        const idUsuario = Number(req.params.id);

        const resultados = await mysql.execute(
            `UPDATE users
      SET name 		= ?,
		  email 	= ?,
          password 	= ?
	   where id = ?;`,
            [
                req.body.name,
                req.body.email,
                req.body.password,
                idUsuario
            ]
        );
        return res.status(201).send({
            "Mensagem": "Usuario atualizado com sucesso!",
            "Resultado": resultados
        })
    } catch (error) {
        return res.status(500).send({ "Mensagem": error })
    }
}

exports.criarUsuario = async (req, res) => {
    try {
        const resultados = await mysql.execute(
            `INSERT INTO users(first_name, last_name, email, password, birth_date, phone)
        VALUES(?,?,?,?,?,?)`,
            [
                req.body.first_name,
                req.body.last_name,
                req.body.email,
                req.body.password,
                req.body.birth_date,
                req.body.phone
            ]
        );
        return res.status(201).send({
            "Mensagem": "Usuário criado com sucesso com sucesso!",
            "Resultado": resultados
        })
    } catch (error) {
        return res.status(500).send({ "Mensagem": error })
    }
}

exports.login = async (req, res) => {
    try {
        const usuario = await mysql.execute(
            `SELECT * FROM users WHERE email = ?`,
            [req.body.email]);
        console.log(usuario);

        if (usuario.length == 0) {
            return res.status(401).send({ "Mensagem": "Usuário não cadastrado" })
        }

        const hash = await bcrpt.hashSync(req.body.password, 10);
        console.log(hash)
        const match = await bcrpt.compare(usuario[0].password, req.body.password);
        if (!match) {
            return res.status(401).send({ "Mensagem": "Email ou senha inválidos!" })
        }
        console.log(match, req.body.password, usuario[0].password);

        const token = jwt.sign({
            id: usuario[0].id,
            first_name: usuario[0].first_name,
            last_name: usuario[0].last_name,
            email: usuario[0].email,
            birth_date: usuario[0].birth_date,
            phone: usuario[0].phone,
        }, "senhadojwt"
        )
        return res.status(200).send({
            "Mensagem": "Login realizado com sucesso!",
            "Token": token
        })


    } catch (error) {
        return res.status(500).send({ "Error": error })
    }
}