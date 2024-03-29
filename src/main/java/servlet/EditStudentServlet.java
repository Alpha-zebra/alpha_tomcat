package servlet;

import jdbc.dao.StudentDao;
import jdbc.dao.StudentDaoImpl;
import jdbc.pojo.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        StudentDao dao=new StudentDaoImpl();
        Student student= null;
        try {
            student = dao.get(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("student",student);
        request.getRequestDispatcher("doEditStudent.jsp").forward(request,response);
    }
}
