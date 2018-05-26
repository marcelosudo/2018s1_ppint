/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beauty.dao;

import beauty.model.Produto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author joaom
 */
public class ProdutoDAO extends DAO {
    
public List<Produto> getList() throws SQLException {

        //Conexão com banco de dados
        start();

        //Cria um statement para podermos mandar um SQL para o banco
        Statement stmt = conn.createStatement();

        //Mandamos o SQL para o banco e obtemos um ResultSet
        String sql = "SELECT * FROM CadastroProdutoBeleza";
        ResultSet rs = stmt.executeQuery(sql);

        // Lista dos objetos de retorno
        List<Produto> data = new ArrayList<Produto>();
        //Percorrendo o ResultSet e obtendo os valores do banco
        while (rs.next()) {
            Produto produto = new Produto();
            produto.setCod(rs.getInt("cod"));
            produto.setNome(rs.getString("nome"));
            produto.setValor(rs.getDouble("valor"));
            data.add(produto);
        }

        stop();
        return data;
    }
}