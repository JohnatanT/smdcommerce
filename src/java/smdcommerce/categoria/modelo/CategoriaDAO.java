/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package smdcommerce.categoria.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import smdcommerce.usuario.modelo.Usuario;

/**
 *
 * @author johnatan.cavalcante
 */
public class CategoriaDAO {
    
    
    public void inserir(String descricao) throws Exception {
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO categoria (descricao) VALUES (?)");
        preparedStatement.setString(1, descricao);
        int resultado = preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
        if (resultado != 1) {
            throw new Exception("Não foi possível inserir a categoria");
        }
    }
    
    public Categoria obter(int id) throws Exception {
        Categoria categoria = null;
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT categoria_id, descricao FROM categoria WHERE categoria_id = ?");
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            categoria = new Categoria();
            categoria.setId(resultSet.getInt("categoria_id"));
            categoria.setDescricao(resultSet.getString("descricao"));
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
        if (categoria == null) {
            throw new Exception("Categoria não encontrada");
        }
        return categoria;
    }
    
    public List<Categoria> obterTodos() throws Exception {
        List<Categoria> categorias = new ArrayList<>();
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT categoria_id, descricao FROM categoria ORDER BY categoria_id ASC");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Categoria categoria = new Categoria();
            categoria.setId(resultSet.getInt("categoria_id"));
            categoria.setDescricao(resultSet.getString("descricao"));
            categorias.add(categoria);
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
      
        return categorias;
    }
    
    public void deletar(Integer id) throws Exception {
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM categoria WHERE categoria_id = ?");
        preparedStatement.setInt(1, id);
        int resultado = preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
        if (resultado != 1) {
            throw new Exception("Não foi possível deletar a categoria!");
        }
    }
    
    public void atualizar(Integer id, String descricao) throws Exception {
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("UPDATE categoria SET descricao = ? WHERE categoria_id = ?");
        preparedStatement.setString(1, descricao);
        preparedStatement.setInt(2, id);
        int resultado = preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
        if (resultado != 1) {
            throw new Exception("Não foi atualizar a categoria");
        }
    }
}
