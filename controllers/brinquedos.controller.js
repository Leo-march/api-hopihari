const mysql = require('../mysql');

exports.cadastrarBrinquedo = async (req, res) => {
    try{
        const resultados = await mysql.execute(`
            INSERT INTO rides (name,waiting_time, status, id_areas)
            VALUES (?,?,?,?)
            `,[
                req.body.name,
                req.body.waiting_time,
                req.body.status,
                req.body.id_areas
            ]
        );
    return res.status(201).send({
        "Mensagem": "Brinquedo cadastrado com sucesso",
        "resultados": resultados
    })
    }catch (error){
        return res.status(500).send(error)
    }
}

exports.getBrinquedosByAreaName = async (req, res) => {
    try {
        const resultados = await mysql.execute(`
            SELECT * FROM rides WHERE id_areas = (
                SELECT id FROM areas WHERE name = ?
            );`, [req.params.areaName]);
        if (resultados.length === 0) {
            return res.status(404).send({
                "Mensagem": "Área do parque não existente."
            });
        }
        return res.status(200).send({
            "Mensagem": "Brinquedos encontrados com sucesso",
            "resultados": resultados
        });
    } catch (error) {
        return res.status(500).send(error);
    }
}