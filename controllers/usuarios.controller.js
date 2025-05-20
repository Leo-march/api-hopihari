const mysql = require("../mysql");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");


exports.atualizarUsuario = async (req, res) => {
    try {
        const idUsuario = Number(req.params.id);

        // Criptografa a senha antes de armazená-la
        const hash = await bcrypt.hash(req.body.password, 10);

        const resultados = await mysql.execute(
            `UPDATE users
                SET name        = ?,
                    email     = ?,
                    password   = ?
                where id = ?;`,
            [
                req.body.name,
                req.body.email,
                hash,
                idUsuario
            ]
        );
        return res.status(201).send({
            "Mensagem": "Usuário atualizado com sucesso!",
            "Resultado": resultados
        })
    } catch (error) {
        return res.status(500).send({error})
    }
}

exports.criarUsuario = async (req, res) => {
    try {
        // Criptografa a senha antes de armazená-la
        const hash = await bcrypt.hash(req.body.password, 10);

        const resultados = await mysql.execute(
            `INSERT INTO users(first_name, last_name, email, password, birth_date, phone)
        VALUES(?,?,?,?,?,?)`,
            [
                req.body.first_name,
                req.body.last_name,
                req.body.email,
                hash,
                req.body.birth_date,
                req.body.phone
            ]
        );
        return res.status(201).send({
            "Mensagem": "Usuário criado com sucesso!",
            "Resultado": resultados
        })
    } catch (error) {
        return res.status(500).send({error})
    }
}

exports.login = async (req, res) => {
    try {
        const usuario = await mysql.execute(
            `SELECT * FROM users WHERE email = ?`,
            [req.body.email]);

        if (usuario.length == 0) {
            return res.status(401).send({ "Mensagem": "Usuário não cadastrado" })
        }

        console.log(req.body.password, usuario[0].password)

        // Comparação correta com bcrypt - compara senha em texto puro com o hash armazenado
        const match = await bcrypt.compare(req.body.password, usuario[0].password);
        
        if (!match) {
            return res.status(401).send({ "Mensagem": "Email ou senha inválidos!" })
        }

        const token = jwt.sign({
            id: usuario[0].id,
            first_name: usuario[0].first_name,
            last_name: usuario[0].last_name,
            email: usuario[0].email,
            birth_date: usuario[0].birth_date,
            phone: usuario[0].phone,
            admin: usuario[0].admin
        }, "senhadojwt"
        )
        return res.status(200).send({
            "Mensagem": "Login realizado com sucesso!",
            "Token": token
        })

    } catch (error) {
        console.error(error);
        return res.status(500).send({error})
    }
}