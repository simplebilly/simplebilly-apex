@isTest
private class OASCustomerCommunicationTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerCommunication customerCommunication1 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication2 = customerCommunication1;
        OASCustomerCommunication customerCommunication3 = new OASCustomerCommunication();
        OASCustomerCommunication customerCommunication4 = customerCommunication3;

        System.assert(customerCommunication1.equals(customerCommunication2));
        System.assert(customerCommunication2.equals(customerCommunication1));
        System.assert(customerCommunication1.equals(customerCommunication1));
        System.assert(customerCommunication3.equals(customerCommunication4));
        System.assert(customerCommunication4.equals(customerCommunication3));
        System.assert(customerCommunication3.equals(customerCommunication3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerCommunication customerCommunication1 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication2 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication3 = new OASCustomerCommunication();
        OASCustomerCommunication customerCommunication4 = new OASCustomerCommunication();

        System.assert(customerCommunication1.equals(customerCommunication2));
        System.assert(customerCommunication2.equals(customerCommunication1));
        System.assert(customerCommunication3.equals(customerCommunication4));
        System.assert(customerCommunication4.equals(customerCommunication3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerCommunication customerCommunication1 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication2 = new OASCustomerCommunication();

        System.assertEquals(false, customerCommunication1.equals('foo'));
        System.assertEquals(false, customerCommunication2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerCommunication customerCommunication1 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication2 = new OASCustomerCommunication();
        OASCustomerCommunication customerCommunication3;

        System.assertEquals(false, customerCommunication1.equals(customerCommunication3));
        System.assertEquals(false, customerCommunication2.equals(customerCommunication3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerCommunication customerCommunication1 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication2 = new OASCustomerCommunication();

        System.assertEquals(customerCommunication1.hashCode(), customerCommunication1.hashCode());
        System.assertEquals(customerCommunication2.hashCode(), customerCommunication2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerCommunication customerCommunication1 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication2 = OASCustomerCommunication.getExample();
        OASCustomerCommunication customerCommunication3 = new OASCustomerCommunication();
        OASCustomerCommunication customerCommunication4 = new OASCustomerCommunication();

        System.assert(customerCommunication1.equals(customerCommunication2));
        System.assert(customerCommunication3.equals(customerCommunication4));
        System.assertEquals(customerCommunication1.hashCode(), customerCommunication2.hashCode());
        System.assertEquals(customerCommunication3.hashCode(), customerCommunication4.hashCode());
    }
}
