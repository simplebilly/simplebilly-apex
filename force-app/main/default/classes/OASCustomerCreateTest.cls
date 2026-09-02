@isTest
private class OASCustomerCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerCreate customerCreate1 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate2 = customerCreate1;
        OASCustomerCreate customerCreate3 = new OASCustomerCreate();
        OASCustomerCreate customerCreate4 = customerCreate3;

        System.assert(customerCreate1.equals(customerCreate2));
        System.assert(customerCreate2.equals(customerCreate1));
        System.assert(customerCreate1.equals(customerCreate1));
        System.assert(customerCreate3.equals(customerCreate4));
        System.assert(customerCreate4.equals(customerCreate3));
        System.assert(customerCreate3.equals(customerCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerCreate customerCreate1 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate2 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate3 = new OASCustomerCreate();
        OASCustomerCreate customerCreate4 = new OASCustomerCreate();

        System.assert(customerCreate1.equals(customerCreate2));
        System.assert(customerCreate2.equals(customerCreate1));
        System.assert(customerCreate3.equals(customerCreate4));
        System.assert(customerCreate4.equals(customerCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerCreate customerCreate1 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate2 = new OASCustomerCreate();

        System.assertEquals(false, customerCreate1.equals('foo'));
        System.assertEquals(false, customerCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerCreate customerCreate1 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate2 = new OASCustomerCreate();
        OASCustomerCreate customerCreate3;

        System.assertEquals(false, customerCreate1.equals(customerCreate3));
        System.assertEquals(false, customerCreate2.equals(customerCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerCreate customerCreate1 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate2 = new OASCustomerCreate();

        System.assertEquals(customerCreate1.hashCode(), customerCreate1.hashCode());
        System.assertEquals(customerCreate2.hashCode(), customerCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerCreate customerCreate1 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate2 = OASCustomerCreate.getExample();
        OASCustomerCreate customerCreate3 = new OASCustomerCreate();
        OASCustomerCreate customerCreate4 = new OASCustomerCreate();

        System.assert(customerCreate1.equals(customerCreate2));
        System.assert(customerCreate3.equals(customerCreate4));
        System.assertEquals(customerCreate1.hashCode(), customerCreate2.hashCode());
        System.assertEquals(customerCreate3.hashCode(), customerCreate4.hashCode());
    }
}
