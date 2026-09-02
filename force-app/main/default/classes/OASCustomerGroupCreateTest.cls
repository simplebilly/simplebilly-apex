@isTest
private class OASCustomerGroupCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerGroupCreate customerGroupCreate1 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate2 = customerGroupCreate1;
        OASCustomerGroupCreate customerGroupCreate3 = new OASCustomerGroupCreate();
        OASCustomerGroupCreate customerGroupCreate4 = customerGroupCreate3;

        System.assert(customerGroupCreate1.equals(customerGroupCreate2));
        System.assert(customerGroupCreate2.equals(customerGroupCreate1));
        System.assert(customerGroupCreate1.equals(customerGroupCreate1));
        System.assert(customerGroupCreate3.equals(customerGroupCreate4));
        System.assert(customerGroupCreate4.equals(customerGroupCreate3));
        System.assert(customerGroupCreate3.equals(customerGroupCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerGroupCreate customerGroupCreate1 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate2 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate3 = new OASCustomerGroupCreate();
        OASCustomerGroupCreate customerGroupCreate4 = new OASCustomerGroupCreate();

        System.assert(customerGroupCreate1.equals(customerGroupCreate2));
        System.assert(customerGroupCreate2.equals(customerGroupCreate1));
        System.assert(customerGroupCreate3.equals(customerGroupCreate4));
        System.assert(customerGroupCreate4.equals(customerGroupCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerGroupCreate customerGroupCreate1 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate2 = new OASCustomerGroupCreate();

        System.assertEquals(false, customerGroupCreate1.equals('foo'));
        System.assertEquals(false, customerGroupCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerGroupCreate customerGroupCreate1 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate2 = new OASCustomerGroupCreate();
        OASCustomerGroupCreate customerGroupCreate3;

        System.assertEquals(false, customerGroupCreate1.equals(customerGroupCreate3));
        System.assertEquals(false, customerGroupCreate2.equals(customerGroupCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerGroupCreate customerGroupCreate1 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate2 = new OASCustomerGroupCreate();

        System.assertEquals(customerGroupCreate1.hashCode(), customerGroupCreate1.hashCode());
        System.assertEquals(customerGroupCreate2.hashCode(), customerGroupCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerGroupCreate customerGroupCreate1 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate2 = OASCustomerGroupCreate.getExample();
        OASCustomerGroupCreate customerGroupCreate3 = new OASCustomerGroupCreate();
        OASCustomerGroupCreate customerGroupCreate4 = new OASCustomerGroupCreate();

        System.assert(customerGroupCreate1.equals(customerGroupCreate2));
        System.assert(customerGroupCreate3.equals(customerGroupCreate4));
        System.assertEquals(customerGroupCreate1.hashCode(), customerGroupCreate2.hashCode());
        System.assertEquals(customerGroupCreate3.hashCode(), customerGroupCreate4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCustomerGroupCreate customerGroupCreate = new OASCustomerGroupCreate();
        System.assertEquals(new List<String>(), customerGroupCreate.memberIds);
        System.assertEquals(null, customerGroupCreate.description);
        System.assertEquals(null, customerGroupCreate.membershipFilter);
        System.assertEquals(null, customerGroupCreate.name);
    }
}
