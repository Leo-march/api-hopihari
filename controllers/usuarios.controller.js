const mysql = require("../mysql");

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
            `INSERT INTO users(name, email, password) VALUES
        (?, ?, ?)`,
            [
                req.body.name,
                req.body.email,
                req.body.password
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