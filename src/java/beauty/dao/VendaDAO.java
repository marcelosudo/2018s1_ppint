/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beauty.dao;

import beauty.model.Venda;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joaom
 */
public class VendaDAO extends DAO {
    public Boolean saveNew(Venda venda) throws SQLException {
        start();
        Statement stmt = conn.createStatement();

        StringBuilder sql = new StringBuilder();
        sql.append("insert into VendaProdutoBeleza (`CadastroProdutoBeleza_cod`, `valor`, `forma_pagamento`, `parcelas`) values (");
        sql.append(venda.getProduto().getCod());
        sql.append(",");
        sql.append(venda.getProduto().getValor());
        sql.append(",");
        sql.append(venda.getFormaPagamento());
        sql.append(",");
        sql.append(venda.getParcelas());
        sql.append(")");
        
        System.out.println(sql.toString());
        
        Boolean result = stmt.execute(sql.toString());

        stop();
        
        return result;
    }
}
