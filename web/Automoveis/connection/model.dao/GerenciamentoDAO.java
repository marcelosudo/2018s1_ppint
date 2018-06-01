package Automoveis.connection.model;

import Automoveis.connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Marcus Vinicius
 */
public class GerenciamentoDAO {

    /**
     *
     * @param v
     */
    public void create(Veiculo v) {
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO veiculo(ano,km,cor,cambio,finalPlaca,portas,carroceria,descricao,valor,novo)VALUES(?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, v.getAno());
            stmt.setInt(2, v.getKm());
            stmt.setString(3, v.getCor());
            stmt.setString(4, v.getCambio());
            stmt.setInt(5, v.getFinalPlaca());
            stmt.setInt(6, v.getPortas());
            stmt.setByte(7, (byte) v.getCarroceria());
            stmt.setString(8, v.getDescricao());
            stmt.setFloat(9, v.getValor());
            stmt.setByte(10, (byte) v.getNovo());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Salvo com Sucesso! ");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Salvar: " + ex);
        } finally {
            ConnectionFactory.claseConnection(con, stmt);
        }

    }

    public List<Veiculo> read() {
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<Veiculo> veiculos = new ArrayList<>();
        try {
            stmt = con.prepareStatement("SELECT*FROM veculo");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Veiculo veiculo = new Veiculo();

                veiculo.setId(rs.getInt("idVeiculo"));
                veiculo.setAno(rs.getInt("Ano"));
                veiculo.setKm(rs.getInt("Km"));
                veiculo.setCor(rs.getString("Cor"));
                veiculo.setCambio(rs.getString("Cambio"));
                veiculo.setFinalPlaca(rs.getInt("FinalPlaca"));
                veiculo.setPortas(rs.getInt("Portas"));
                veiculo.setCarroceria(rs.getByte("Carroceria"));
                veiculo.setDescricao(rs.getString("Descricao"));
                veiculo.setValor(rs.getFloat("Valor"));
                veiculo.setNovo(rs.getByte("Novo"));
                veiculos.add(veiculo);

            }

        } catch (SQLException ex) {
            Logger.getLogger(GerenciamentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnectton(con, stmt, rs);
        }

        return veiculos;
    }

    public void update(Veiculo v) {
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("UPDATE veiculo SET ano = ?,km = ?,cor = ?,cambio = ?,finalPlaca = ?,portas = ?,carroceria = ?,descricao = ?,valor = ?,novo = ?)WHERE idVeiculo = ?");
            stmt.setInt(1, v.getAno());
            stmt.setInt(2, v.getKm());
            stmt.setString(3, v.getCor());
            stmt.setString(4, v.getCambio());
            stmt.setInt(5, v.getFinalPlaca());
            stmt.setInt(6, v.getPortas());
            stmt.setByte(7, (byte) v.getCarroceria());
            stmt.setString(8, v.getDescricao());
            stmt.setFloat(9, v.getValor());
            stmt.setByte(10, (byte) v.getNovo());
            stmt.setInt(11, v.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Atualizado com Sucesso! ");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Atualizar: " + ex);
        } finally {
            ConnectionFactory.claseConnection(con, stmt);
        }

    }

}
