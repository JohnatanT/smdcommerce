/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package smdcommerce.produto.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import smdcommerce.categoria.modelo.Categoria;

/**
 *
 * @author johnatan.cavalcante
 */
public class ProdutoDAO {
    
    public void inserir(String descricao, String foto_url, Integer quantidade, Double preco) throws Exception {
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO produto (descricao, foto_url, quantidade, preco) VALUES (?, ?, ?, ?)");
        preparedStatement.setString(1, descricao);
        preparedStatement.setString(2, foto_url);
        preparedStatement.setInt(3, quantidade);
        preparedStatement.setDouble(4, preco);
        int resultado = preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
        if (resultado != 1) {
            throw new Exception("Não foi possível inserir o produto");
        }
    }
    
    public void deletar(Integer id) throws Exception {
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM produto WHERE produto_id = ?");
        preparedStatement.setInt(1, id);
        int resultado = preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
        if (resultado != 1) {
            throw new Exception("Não foi possível deletar o produto");
        }
    }
    
    public List<Produto> obterTodos() throws Exception {
        List<Produto> produtos = new ArrayList<>();
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://queenie.db.elephantsql.com:5432/eawaxnxs", "eawaxnxs", "VfKLeEcneJ3a_f0y3PbwDlQC3W67vlSN");
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT produto_id, descricao, quantidade, preco, foto_url FROM produto ORDER BY produto_id ASC");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Produto produto = new Produto();
            produto.setId(resultSet.getInt("produto_id"));
            produto.setDescricao(resultSet.getString("descricao"));
            produto.setQuantidade(resultSet.getInt("quantidade"));
            produto.setPreco(resultSet.getDouble("preco"));
            produto.setFotoUrl(resultSet.getString("foto_url"));
            produtos.add(produto);
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
      
        return produtos;
    }
}
