package com.example.servlet;

import javax.servlet.*;
import java.io.IOException;

public class InputFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        String username = request.getParameter("username");

        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("message", "Tên người dùng không được để trống!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            chain.doFilter(request, response);
        }
    }

    public void init(FilterConfig config) {}
    public void destroy() {}
}