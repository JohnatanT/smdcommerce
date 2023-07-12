/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package smdcommerce.venda.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author johnatan.cavalcante
 */
public class CompraDAO {
    
    public List<Compra> obterTodos() throws Exception {
        List<Compra> compras = new ArrayList<>();
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://ec2-44-206-89-185.compute-1.amazonaws.com:5432/d1lsn9pufl2bvo", "twvbtnootdixmh", "f08d7829db99533348d4d43e6ddd565e04d20186747e306efcdf7b1d83713419");
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT id, usuario_id, produto_id, data, quantidade FROM compras ORDER BY produto_id ASC");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Compra compra = new Compra();
            compra.setId(resultSet.getLong("id"));
            compra.setUsuarioId(resultSet.getInt("usuario_id"));
            compra.setProdutoId(resultSet.getInt("produto_id"));
            compra.setQuantidade(resultSet.getInt("quantidade"));
            compra.setData(resultSet.getObject("data", LocalDate.class));
            compras.add(compra);
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
      
        return compras;
    }
    
    public List<Compra> obterTodosDoCliente(int id) throws Exception {
        List<Compra> compras = new ArrayList<>();
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://ec2-44-206-89-185.compute-1.amazonaws.com:5432/d1lsn9pufl2bvo", "twvbtnootdixmh", "f08d7829db99533348d4d43e6ddd565e04d20186747e306efcdf7b1d83713419");
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT id, usuario_id, produto_id, data, quantidade FROM compras WHERE usuario_id = ? ORDER BY produto_id ASC");
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Compra compra = new Compra();
            compra.setId(resultSet.getLong("id"));
            compra.setUsuarioId(resultSet.getInt("usuario_id"));
            compra.setProdutoId(resultSet.getInt("produto_id"));
            compra.setQuantidade(resultSet.getInt("quantidade"));
            compra.setData(resultSet.getObject("data", LocalDate.class));
            compras.add(compra);
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
      
        return compras;
    }
    
    public void inserir(int usuario_id, int produto_id, int quantidade) throws ClassNotFoundException, SQLException, Exception {
         Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://ec2-44-206-89-185.compute-1.amazonaws.com:5432/d1lsn9pufl2bvo", "twvbtnootdixmh", "f08d7829db99533348d4d43e6ddd565e04d20186747e306efcdf7b1d83713419");
        PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO compras (id, usuario_id, produto_id, quantidade) VALUES (nextval('compras_id_seq'), ?, ?, ?)");
        preparedStatement.setInt(1, usuario_id);
        preparedStatement.setInt(2, produto_id);
        preparedStatement.setInt(3, quantidade);
        int resultado = preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
        if (resultado != 1) {
            throw new Exception("Não foi possível inserir a venda");
        }
    }


}
