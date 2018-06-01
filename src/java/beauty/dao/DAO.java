/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beauty.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author marcelo.sudo
 */
public class DAO {
    String driver = "com.mysql.jdbc.Driver"; //Classe do driver JDBC
    String banco = "auladosudo"; //Nome do Banco criado
    String host = "auladosudo.mysql.dbaas.com.br"; //Maquina onde está o banco
    String str_conn = "jdbc:mysql://" + host + ":3306/" + banco; //URL de conexão hibernate.connection.url	
    String usuario = "auladosudo"; //Usuário do banco
    String senha = "etep123"; //Senha de conexão
    Connection conn = null;

    protected void start() {
        try {
            Class.forName(driver); //Carrega o driver

            //Obtém a conexão com o banco
            conn = DriverManager.getConnection(str_conn, usuario, senha);

        } catch (ClassNotFoundException ex) {
            System.out.println("Não foi possível carregar o driver: " + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Problema com o SQL");
            System.out.println("SQLException: " + ex.getMessage());
        }
    }

    protected void stop() throws SQLException {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            String errorMsg = "Nao foi possivel fechar a conexao com o banco";
            System.err.print(errorMsg + e.getMessage());
        }
    }

}
