/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smdcommerce.usuario.modelo.Usuario;

/**
 *
 * @author frcavalc
 */
public class ValidaLogin {
    
    public HashMap<String, Object> validar(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        
        HashMap<String, Object> resultado = new HashMap<>();
        resultado.put("usuario", usuario);
        resultado.put("session", session);
        
        if (usuario != null) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/" + page);
            requestDispatcher.forward(request, response);
        } else {
            request.setAttribute("mensagem", "Você precisa estar logado para acessar essa pagina!");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }
        
        return resultado;
    }
}
