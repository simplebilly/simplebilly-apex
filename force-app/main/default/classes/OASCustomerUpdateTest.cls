@isTest
private class OASCustomerUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerUpdate customerUpdate1 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate2 = customerUpdate1;
        OASCustomerUpdate customerUpdate3 = new OASCustomerUpdate();
        OASCustomerUpdate customerUpdate4 = customerUpdate3;

        System.assert(customerUpdate1.equals(customerUpdate2));
        System.assert(customerUpdate2.equals(customerUpdate1));
        System.assert(customerUpdate1.equals(customerUpdate1));
        System.assert(customerUpdate3.equals(customerUpdate4));
        System.assert(customerUpdate4.equals(customerUpdate3));
        System.assert(customerUpdate3.equals(customerUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerUpdate customerUpdate1 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate2 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate3 = new OASCustomerUpdate();
        OASCustomerUpdate customerUpdate4 = new OASCustomerUpdate();

        System.assert(customerUpdate1.equals(customerUpdate2));
        System.assert(customerUpdate2.equals(customerUpdate1));
        System.assert(customerUpdate3.equals(customerUpdate4));
        System.assert(customerUpdate4.equals(customerUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerUpdate customerUpdate1 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate2 = new OASCustomerUpdate();

        System.assertEquals(false, customerUpdate1.equals('foo'));
        System.assertEquals(false, customerUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerUpdate customerUpdate1 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate2 = new OASCustomerUpdate();
        OASCustomerUpdate customerUpdate3;

        System.assertEquals(false, customerUpdate1.equals(customerUpdate3));
        System.assertEquals(false, customerUpdate2.equals(customerUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerUpdate customerUpdate1 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate2 = new OASCustomerUpdate();

        System.assertEquals(customerUpdate1.hashCode(), customerUpdate1.hashCode());
        System.assertEquals(customerUpdate2.hashCode(), customerUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerUpdate customerUpdate1 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate2 = OASCustomerUpdate.getExample();
        OASCustomerUpdate customerUpdate3 = new OASCustomerUpdate();
        OASCustomerUpdate customerUpdate4 = new OASCustomerUpdate();

        System.assert(customerUpdate1.equals(customerUpdate2));
        System.assert(customerUpdate3.equals(customerUpdate4));
        System.assertEquals(customerUpdate1.hashCode(), customerUpdate2.hashCode());
        System.assertEquals(customerUpdate3.hashCode(), customerUpdate4.hashCode());
    }
}
