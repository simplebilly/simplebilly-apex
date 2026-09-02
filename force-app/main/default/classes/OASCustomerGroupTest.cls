@isTest
private class OASCustomerGroupTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerGroup customerGroup1 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup2 = customerGroup1;
        OASCustomerGroup customerGroup3 = new OASCustomerGroup();
        OASCustomerGroup customerGroup4 = customerGroup3;

        System.assert(customerGroup1.equals(customerGroup2));
        System.assert(customerGroup2.equals(customerGroup1));
        System.assert(customerGroup1.equals(customerGroup1));
        System.assert(customerGroup3.equals(customerGroup4));
        System.assert(customerGroup4.equals(customerGroup3));
        System.assert(customerGroup3.equals(customerGroup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerGroup customerGroup1 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup2 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup3 = new OASCustomerGroup();
        OASCustomerGroup customerGroup4 = new OASCustomerGroup();

        System.assert(customerGroup1.equals(customerGroup2));
        System.assert(customerGroup2.equals(customerGroup1));
        System.assert(customerGroup3.equals(customerGroup4));
        System.assert(customerGroup4.equals(customerGroup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerGroup customerGroup1 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup2 = new OASCustomerGroup();

        System.assertEquals(false, customerGroup1.equals('foo'));
        System.assertEquals(false, customerGroup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerGroup customerGroup1 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup2 = new OASCustomerGroup();
        OASCustomerGroup customerGroup3;

        System.assertEquals(false, customerGroup1.equals(customerGroup3));
        System.assertEquals(false, customerGroup2.equals(customerGroup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerGroup customerGroup1 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup2 = new OASCustomerGroup();

        System.assertEquals(customerGroup1.hashCode(), customerGroup1.hashCode());
        System.assertEquals(customerGroup2.hashCode(), customerGroup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerGroup customerGroup1 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup2 = OASCustomerGroup.getExample();
        OASCustomerGroup customerGroup3 = new OASCustomerGroup();
        OASCustomerGroup customerGroup4 = new OASCustomerGroup();

        System.assert(customerGroup1.equals(customerGroup2));
        System.assert(customerGroup3.equals(customerGroup4));
        System.assertEquals(customerGroup1.hashCode(), customerGroup2.hashCode());
        System.assertEquals(customerGroup3.hashCode(), customerGroup4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCustomerGroup customerGroup = new OASCustomerGroup();
        System.assertEquals(new List<String>(), customerGroup.memberIds);
        System.assertEquals(null, customerGroup.description);
        System.assertEquals(null, customerGroup.membershipFilter);
        System.assertEquals(null, customerGroup.name);
    }
}
