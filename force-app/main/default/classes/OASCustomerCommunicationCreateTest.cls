@isTest
private class OASCustomerCommunicationCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerCommunicationCreate customerCommunicationCreate1 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate2 = customerCommunicationCreate1;
        OASCustomerCommunicationCreate customerCommunicationCreate3 = new OASCustomerCommunicationCreate();
        OASCustomerCommunicationCreate customerCommunicationCreate4 = customerCommunicationCreate3;

        System.assert(customerCommunicationCreate1.equals(customerCommunicationCreate2));
        System.assert(customerCommunicationCreate2.equals(customerCommunicationCreate1));
        System.assert(customerCommunicationCreate1.equals(customerCommunicationCreate1));
        System.assert(customerCommunicationCreate3.equals(customerCommunicationCreate4));
        System.assert(customerCommunicationCreate4.equals(customerCommunicationCreate3));
        System.assert(customerCommunicationCreate3.equals(customerCommunicationCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerCommunicationCreate customerCommunicationCreate1 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate2 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate3 = new OASCustomerCommunicationCreate();
        OASCustomerCommunicationCreate customerCommunicationCreate4 = new OASCustomerCommunicationCreate();

        System.assert(customerCommunicationCreate1.equals(customerCommunicationCreate2));
        System.assert(customerCommunicationCreate2.equals(customerCommunicationCreate1));
        System.assert(customerCommunicationCreate3.equals(customerCommunicationCreate4));
        System.assert(customerCommunicationCreate4.equals(customerCommunicationCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerCommunicationCreate customerCommunicationCreate1 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate2 = new OASCustomerCommunicationCreate();

        System.assertEquals(false, customerCommunicationCreate1.equals('foo'));
        System.assertEquals(false, customerCommunicationCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerCommunicationCreate customerCommunicationCreate1 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate2 = new OASCustomerCommunicationCreate();
        OASCustomerCommunicationCreate customerCommunicationCreate3;

        System.assertEquals(false, customerCommunicationCreate1.equals(customerCommunicationCreate3));
        System.assertEquals(false, customerCommunicationCreate2.equals(customerCommunicationCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerCommunicationCreate customerCommunicationCreate1 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate2 = new OASCustomerCommunicationCreate();

        System.assertEquals(customerCommunicationCreate1.hashCode(), customerCommunicationCreate1.hashCode());
        System.assertEquals(customerCommunicationCreate2.hashCode(), customerCommunicationCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerCommunicationCreate customerCommunicationCreate1 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate2 = OASCustomerCommunicationCreate.getExample();
        OASCustomerCommunicationCreate customerCommunicationCreate3 = new OASCustomerCommunicationCreate();
        OASCustomerCommunicationCreate customerCommunicationCreate4 = new OASCustomerCommunicationCreate();

        System.assert(customerCommunicationCreate1.equals(customerCommunicationCreate2));
        System.assert(customerCommunicationCreate3.equals(customerCommunicationCreate4));
        System.assertEquals(customerCommunicationCreate1.hashCode(), customerCommunicationCreate2.hashCode());
        System.assertEquals(customerCommunicationCreate3.hashCode(), customerCommunicationCreate4.hashCode());
    }
}
