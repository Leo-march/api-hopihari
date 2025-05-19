const mysql = require('../mysql');

exports.getNotificacoes = async (req, res) => {
    try{
        const resultado = await mysql.execute(`
            SELECT * FROM notifications WHERE users_id = ? and status = TRUE;`,
        [res.locals.idUsuario]);
            return res.status(201).send({
                "Mensagem": "Você esta cadastrado em",
                "Resultado": resultado
            })
        
    }catch{
       return res.status(500).send({"Mensagem": error})
    }
}

exports.putNotificacoes = async (req, res, next) => {
    try{
        const resultado = await mysql.execute(
            `UPDATE notifications
SET status = FALSE
WHERE status = TRUE;
`, [req.params.idNot]
        )
        res.status(201).send({
            "Resultado": resultado
        })
    }catch (error) {
        return res.status(500).send(error)
}}