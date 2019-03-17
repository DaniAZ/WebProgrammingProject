package controller;

import model.Address;
import util.AddressUtil;
import util.BillingUtil;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/billing")
public class BillingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc=this.getServletContext();
        String supportemail=sc.getInitParameter("support-email");
        long Support_ticket_id=(long)(Math.random()*1000);
            String firstName=request.getParameter("firstName");
            String lastName=request.getParameter("lastName");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String country=request.getParameter("country");
        BillingUtil.setAddressArrayList(new Address(firstName,lastName,address,city,country));
        System.out.println(BillingUtil.getBillingArrayList());
        if("off".equals(request.getParameter("checkbox"))){
            String firstNameShipping=request.getParameter("firstNameShipping");
            String lastNameShipping=request.getParameter("lastNameShipping");
            String addressShipping=request.getParameter("addressShipping");
            String cityShipping=request.getParameter("cityShipping");
            String countryShipping=request.getParameter("countryShipping");
            AddressUtil.setAddressArrayList(new Address(firstNameShipping,lastNameShipping,addressShipping,cityShipping,countryShipping));
            System.out.println(AddressUtil.getAddressArrayList());
        }
        System.out.println(AddressUtil.getAddressArrayList());
        request.getSession().setAttribute("AddressUtil",BillingUtil.getBillingArrayList());
        request.getSession().setAttribute("Mail",supportemail);
        request.getSession().setAttribute("Support_ticket_id",Support_ticket_id);
        request.getRequestDispatcher("/WEB-INF/jsp/confirmation.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.getRequestDispatcher("/WEB-INF/jsp/billing.jsp").forward(request,response);
    }
}
