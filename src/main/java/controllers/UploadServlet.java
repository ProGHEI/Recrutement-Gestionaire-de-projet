package controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upload.MultipartMap;

@MultipartConfig(location = "/upload", maxFileSize = 10485760L) // 10MB.
public class UploadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        request.getRequestDispatcher("/WEB-INF/pages/upload.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        MultipartMap map = new MultipartMap(request, this);
        File file = map.getFile("file");

        // Now do your thing with the obtained input.
        System.out.println("File: " + file);

        request.getRequestDispatcher("/WEB-INF/pages/upload.jsp").forward(request, response);
    }

}