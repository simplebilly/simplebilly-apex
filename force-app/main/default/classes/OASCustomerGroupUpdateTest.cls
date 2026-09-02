@isTest
private class OASCustomerGroupUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerGroupUpdate customerGroupUpdate1 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate2 = customerGroupUpdate1;
        OASCustomerGroupUpdate customerGroupUpdate3 = new OASCustomerGroupUpdate();
        OASCustomerGroupUpdate customerGroupUpdate4 = customerGroupUpdate3;

        System.assert(customerGroupUpdate1.equals(customerGroupUpdate2));
        System.assert(customerGroupUpdate2.equals(customerGroupUpdate1));
        System.assert(customerGroupUpdate1.equals(customerGroupUpdate1));
        System.assert(customerGroupUpdate3.equals(customerGroupUpdate4));
        System.assert(customerGroupUpdate4.equals(customerGroupUpdate3));
        System.assert(customerGroupUpdate3.equals(customerGroupUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerGroupUpdate customerGroupUpdate1 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate2 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate3 = new OASCustomerGroupUpdate();
        OASCustomerGroupUpdate customerGroupUpdate4 = new OASCustomerGroupUpdate();

        System.assert(customerGroupUpdate1.equals(customerGroupUpdate2));
        System.assert(customerGroupUpdate2.equals(customerGroupUpdate1));
        System.assert(customerGroupUpdate3.equals(customerGroupUpdate4));
        System.assert(customerGroupUpdate4.equals(customerGroupUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerGroupUpdate customerGroupUpdate1 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate2 = new OASCustomerGroupUpdate();

        System.assertEquals(false, customerGroupUpdate1.equals('foo'));
        System.assertEquals(false, customerGroupUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerGroupUpdate customerGroupUpdate1 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate2 = new OASCustomerGroupUpdate();
        OASCustomerGroupUpdate customerGroupUpdate3;

        System.assertEquals(false, customerGroupUpdate1.equals(customerGroupUpdate3));
        System.assertEquals(false, customerGroupUpdate2.equals(customerGroupUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerGroupUpdate customerGroupUpdate1 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate2 = new OASCustomerGroupUpdate();

        System.assertEquals(customerGroupUpdate1.hashCode(), customerGroupUpdate1.hashCode());
        System.assertEquals(customerGroupUpdate2.hashCode(), customerGroupUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerGroupUpdate customerGroupUpdate1 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate2 = OASCustomerGroupUpdate.getExample();
        OASCustomerGroupUpdate customerGroupUpdate3 = new OASCustomerGroupUpdate();
        OASCustomerGroupUpdate customerGroupUpdate4 = new OASCustomerGroupUpdate();

        System.assert(customerGroupUpdate1.equals(customerGroupUpdate2));
        System.assert(customerGroupUpdate3.equals(customerGroupUpdate4));
        System.assertEquals(customerGroupUpdate1.hashCode(), customerGroupUpdate2.hashCode());
        System.assertEquals(customerGroupUpdate3.hashCode(), customerGroupUpdate4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCustomerGroupUpdate customerGroupUpdate = new OASCustomerGroupUpdate();
        System.assertEquals(new List<String>(), customerGroupUpdate.memberIds);
        System.assertEquals(null, customerGroupUpdate.description);
        System.assertEquals(null, customerGroupUpdate.membershipFilter);
        System.assertEquals(null, customerGroupUpdate.name);
    }
}
