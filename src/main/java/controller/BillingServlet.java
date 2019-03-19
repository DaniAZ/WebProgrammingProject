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
import java.io.PrintWriter;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@WebServlet(value = "/billing")
public class BillingServlet extends HttpServlet {
    public static final String ACCOUNT_SID ="AC478ad16ab36b6d9f4101a2607bdf50ee";
    public static final String AUTH_TOKEN = "50bcb5c63fd8e66bda1dde01a8ca717f";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc=this.getServletContext();
        String supportemail=sc.getInitParameter("support-email");
        long Support_ticket_id=(long)(Math.random()*1000);

            String firstName=request.getParameter("firstName");
            String lastName=request.getParameter("lastName");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String country=request.getParameter("country");
            int phoneNumber=Integer.parseInt(request.getParameter("phoneNumber"));
            Address addressBilling=new Address(firstName,lastName,address,city,country,phoneNumber);
        BillingUtil.setBilling(addressBilling);
           String checkBox=request.getParameter("checkbox");

        if(!"on".equals(checkBox)){
            String firstNameShipping=request.getParameter("firstNameShipping");
            String lastNameShipping=request.getParameter("lastNameShipping");
            String addressShipping=request.getParameter("addressShipping");
            String cityShipping=request.getParameter("cityShipping");
            String countryShipping=request.getParameter("countryShipping");
            int phoneNumberHome=Integer.parseInt(request.getParameter("phoneNumberHome"));
            AddressUtil.setAddress(new Address(firstNameShipping,lastNameShipping,addressShipping,cityShipping,countryShipping,phoneNumberHome));

        }

        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message.creator(new PhoneNumber(Integer.toString(phoneNumber)),
                new PhoneNumber("+12064832406"),
                "This is an email confirmation for product your order from habesha culture from Web Programming?").create();

        System.out.println("from twillio"+ message.getSid());

        request.getSession().setAttribute("Address",addressBilling);
        request.getSession().setAttribute("Mail",supportemail);
        request.getSession().setAttribute("Support_ticket_id",Support_ticket_id);
        request.getRequestDispatcher("/confirmation.jsp").forward(request,response);
        response.setContentType("text/plain");
           PrintWriter out= response.getWriter();
        try {
            out.println(addressBilling);
        } finally {
            out.close();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.getRequestDispatcher("/WEB-INF/jsp/billing.jsp").forward(request,response);
    }
}
