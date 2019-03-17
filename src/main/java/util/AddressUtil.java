package util;

import model.Address;
import model.Product;


import java.util.ArrayList;

public class AddressUtil {
    private static ArrayList<Address> addressArrayList;

    public AddressUtil() {
    }

    public static ArrayList<Address> getAddressArrayList() {
        return addressArrayList;
    }

    public static void setAddressArrayList(Address address) {
        if(addressArrayList==null)
            addressArrayList=new ArrayList<Address>();
        addressArrayList.add(address);
    }

    public  String toString() {
        StringBuffer stringBuffer=new StringBuffer();
        for(Address address: addressArrayList){
            stringBuffer.append(address.getAddress()+address.getFirstName()+address.getLastName()+"\n");
        }
        return stringBuffer.toString();
    }
}
