package util;

import model.Address;

import java.util.ArrayList;

public class BillingUtil {
    private static ArrayList<Address> billingArrayList;

    public BillingUtil() {
    }

    public static ArrayList<Address> getBillingArrayList() {
        return billingArrayList;
    }

    public static void setAddressArrayList(Address address) {
        if(billingArrayList==null)
            billingArrayList=new ArrayList<Address>();
        billingArrayList.add(address);
    }

    public  String toString() {
        StringBuffer stringBuffer=new StringBuffer();
        for(Address address: billingArrayList){
            stringBuffer.append(address.getAddress()+address.getFirstName()+address.getLastName()+"\n");
        }
        return stringBuffer.toString();
    }
}
