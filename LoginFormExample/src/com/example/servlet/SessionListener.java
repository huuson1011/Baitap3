package com.example.servlet;

import javax.servlet.http.*;
import javax.servlet.annotation.WebListener;

@WebListener
public class SessionListener implements HttpSessionListener {
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println("Session Created: " + se.getSession().getId());
    }

    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("Session Destroyed: " + se.getSession().getId());
    }
}