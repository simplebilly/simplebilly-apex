@isTest
private class OASCustomerCommunicationUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerCommunicationUpdate customerCommunicationUpdate1 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate2 = customerCommunicationUpdate1;
        OASCustomerCommunicationUpdate customerCommunicationUpdate3 = new OASCustomerCommunicationUpdate();
        OASCustomerCommunicationUpdate customerCommunicationUpdate4 = customerCommunicationUpdate3;

        System.assert(customerCommunicationUpdate1.equals(customerCommunicationUpdate2));
        System.assert(customerCommunicationUpdate2.equals(customerCommunicationUpdate1));
        System.assert(customerCommunicationUpdate1.equals(customerCommunicationUpdate1));
        System.assert(customerCommunicationUpdate3.equals(customerCommunicationUpdate4));
        System.assert(customerCommunicationUpdate4.equals(customerCommunicationUpdate3));
        System.assert(customerCommunicationUpdate3.equals(customerCommunicationUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerCommunicationUpdate customerCommunicationUpdate1 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate2 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate3 = new OASCustomerCommunicationUpdate();
        OASCustomerCommunicationUpdate customerCommunicationUpdate4 = new OASCustomerCommunicationUpdate();

        System.assert(customerCommunicationUpdate1.equals(customerCommunicationUpdate2));
        System.assert(customerCommunicationUpdate2.equals(customerCommunicationUpdate1));
        System.assert(customerCommunicationUpdate3.equals(customerCommunicationUpdate4));
        System.assert(customerCommunicationUpdate4.equals(customerCommunicationUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerCommunicationUpdate customerCommunicationUpdate1 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate2 = new OASCustomerCommunicationUpdate();

        System.assertEquals(false, customerCommunicationUpdate1.equals('foo'));
        System.assertEquals(false, customerCommunicationUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerCommunicationUpdate customerCommunicationUpdate1 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate2 = new OASCustomerCommunicationUpdate();
        OASCustomerCommunicationUpdate customerCommunicationUpdate3;

        System.assertEquals(false, customerCommunicationUpdate1.equals(customerCommunicationUpdate3));
        System.assertEquals(false, customerCommunicationUpdate2.equals(customerCommunicationUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerCommunicationUpdate customerCommunicationUpdate1 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate2 = new OASCustomerCommunicationUpdate();

        System.assertEquals(customerCommunicationUpdate1.hashCode(), customerCommunicationUpdate1.hashCode());
        System.assertEquals(customerCommunicationUpdate2.hashCode(), customerCommunicationUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerCommunicationUpdate customerCommunicationUpdate1 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate2 = OASCustomerCommunicationUpdate.getExample();
        OASCustomerCommunicationUpdate customerCommunicationUpdate3 = new OASCustomerCommunicationUpdate();
        OASCustomerCommunicationUpdate customerCommunicationUpdate4 = new OASCustomerCommunicationUpdate();

        System.assert(customerCommunicationUpdate1.equals(customerCommunicationUpdate2));
        System.assert(customerCommunicationUpdate3.equals(customerCommunicationUpdate4));
        System.assertEquals(customerCommunicationUpdate1.hashCode(), customerCommunicationUpdate2.hashCode());
        System.assertEquals(customerCommunicationUpdate3.hashCode(), customerCommunicationUpdate4.hashCode());
    }
}
