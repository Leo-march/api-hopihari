const mysql = require('../mysql')

exports.verificarBrinquedo = async (req, res, next) => {
    try{
        const resultado = await mysql.execute(`
            SELECT * FROM rides
            WHERE id = ?;
        `, [req.params.idRide])
        if(resultado.length == 0){
            return res.status(404).send({
                "Mensagem": "Brinquedo não encontrado."
            })
        }
        next()
    }catch (error){

    }
}



exports.entrarFila = async (req, res) => {
    try{
        const resultados = await mysql.execute(`
            INSERT INTO hopi_hari_dc.lines (id_user, id_rides) VALUES(?,?)
            `, [res.locals.idUsuario, Number(req.params.idRide)])

        return res.status(200).send({
            "Mensagem": "Usuário adicionado a fila com sucesso!",
            "Resultado": resultados
        })
    }catch (error){
        return res.status(500).send(error)

    }
}