@isTest
private class OASCustomerTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomer customer1 = OASCustomer.getExample();
        OASCustomer customer2 = customer1;
        OASCustomer customer3 = new OASCustomer();
        OASCustomer customer4 = customer3;

        System.assert(customer1.equals(customer2));
        System.assert(customer2.equals(customer1));
        System.assert(customer1.equals(customer1));
        System.assert(customer3.equals(customer4));
        System.assert(customer4.equals(customer3));
        System.assert(customer3.equals(customer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomer customer1 = OASCustomer.getExample();
        OASCustomer customer2 = OASCustomer.getExample();
        OASCustomer customer3 = new OASCustomer();
        OASCustomer customer4 = new OASCustomer();

        System.assert(customer1.equals(customer2));
        System.assert(customer2.equals(customer1));
        System.assert(customer3.equals(customer4));
        System.assert(customer4.equals(customer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomer customer1 = OASCustomer.getExample();
        OASCustomer customer2 = new OASCustomer();

        System.assertEquals(false, customer1.equals('foo'));
        System.assertEquals(false, customer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomer customer1 = OASCustomer.getExample();
        OASCustomer customer2 = new OASCustomer();
        OASCustomer customer3;

        System.assertEquals(false, customer1.equals(customer3));
        System.assertEquals(false, customer2.equals(customer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomer customer1 = OASCustomer.getExample();
        OASCustomer customer2 = new OASCustomer();

        System.assertEquals(customer1.hashCode(), customer1.hashCode());
        System.assertEquals(customer2.hashCode(), customer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomer customer1 = OASCustomer.getExample();
        OASCustomer customer2 = OASCustomer.getExample();
        OASCustomer customer3 = new OASCustomer();
        OASCustomer customer4 = new OASCustomer();

        System.assert(customer1.equals(customer2));
        System.assert(customer3.equals(customer4));
        System.assertEquals(customer1.hashCode(), customer2.hashCode());
        System.assertEquals(customer3.hashCode(), customer4.hashCode());
    }
}
