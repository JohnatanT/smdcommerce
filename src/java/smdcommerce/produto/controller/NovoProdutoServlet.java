/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package smdcommerce.produto.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import smdcommerce.produto.modelo.ProdutoDAO;

/**
 *
 * @author johnatan.cavalcante
 */
public class NovoProdutoServlet extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ProdutoDAO produto = new ProdutoDAO();
        String mensagem = null;
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            try {
                String descricao = null;
                String fotoUrl = null;
                Double preco = null;
                Integer quantidade = null;
                DiskFileItemFactory factory = new DiskFileItemFactory();
                factory.setRepository(new File("C:/Users/johnatan.cavalcante/workspace/smdcommerce_upload/"));
                ServletFileUpload upload = new ServletFileUpload(factory);
                List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));
                Iterator<FileItem> iter = items.iterator();
                while(iter.hasNext()) {
                    FileItem item = iter.next();
                    if (!item.isFormField() && item.getFieldName().equals("foto")) {
                        fotoUrl = "C:/Users/johnatan.cavalcante/workspace/smdcommerce_upload/" + item.getName();
                        item.write(new File("C:/Users/johnatan.cavalcante/workspace/smdcommerce_upload/" + item.getName()));
                    }
                    if (item.isFormField() && item.getFieldName().equals("descricao")) {
                       descricao = item.getString();
                    }
                    
                    if (item.isFormField() && item.getFieldName().equals("preco")) {
                        preco = Double.parseDouble(item.getString());
                    }
                    
                    if (item.isFormField() && item.getFieldName().equals("quantidade")) {
                        quantidade = Integer.valueOf(item.getString());
                    }
                    
                    if (item.isFormField() && item.getFieldName().equals("categoria")) {
                        
                    }
                    
                    
                }
                
                produto.inserir(descricao, fotoUrl, quantidade, preco);
                mensagem = "Produto inserido com sucesso!!";
            } catch (Exception ex) {
                mensagem = ex.getMessage();
            }
            
            /* saída */
            request.setAttribute("mensagem", mensagem);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }
    }

   

}
