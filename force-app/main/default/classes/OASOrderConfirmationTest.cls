@isTest
private class OASOrderConfirmationTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderConfirmation orderConfirmation1 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation2 = orderConfirmation1;
        OASOrderConfirmation orderConfirmation3 = new OASOrderConfirmation();
        OASOrderConfirmation orderConfirmation4 = orderConfirmation3;

        System.assert(orderConfirmation1.equals(orderConfirmation2));
        System.assert(orderConfirmation2.equals(orderConfirmation1));
        System.assert(orderConfirmation1.equals(orderConfirmation1));
        System.assert(orderConfirmation3.equals(orderConfirmation4));
        System.assert(orderConfirmation4.equals(orderConfirmation3));
        System.assert(orderConfirmation3.equals(orderConfirmation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderConfirmation orderConfirmation1 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation2 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation3 = new OASOrderConfirmation();
        OASOrderConfirmation orderConfirmation4 = new OASOrderConfirmation();

        System.assert(orderConfirmation1.equals(orderConfirmation2));
        System.assert(orderConfirmation2.equals(orderConfirmation1));
        System.assert(orderConfirmation3.equals(orderConfirmation4));
        System.assert(orderConfirmation4.equals(orderConfirmation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderConfirmation orderConfirmation1 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation2 = new OASOrderConfirmation();

        System.assertEquals(false, orderConfirmation1.equals('foo'));
        System.assertEquals(false, orderConfirmation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderConfirmation orderConfirmation1 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation2 = new OASOrderConfirmation();
        OASOrderConfirmation orderConfirmation3;

        System.assertEquals(false, orderConfirmation1.equals(orderConfirmation3));
        System.assertEquals(false, orderConfirmation2.equals(orderConfirmation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderConfirmation orderConfirmation1 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation2 = new OASOrderConfirmation();

        System.assertEquals(orderConfirmation1.hashCode(), orderConfirmation1.hashCode());
        System.assertEquals(orderConfirmation2.hashCode(), orderConfirmation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderConfirmation orderConfirmation1 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation2 = OASOrderConfirmation.getExample();
        OASOrderConfirmation orderConfirmation3 = new OASOrderConfirmation();
        OASOrderConfirmation orderConfirmation4 = new OASOrderConfirmation();

        System.assert(orderConfirmation1.equals(orderConfirmation2));
        System.assert(orderConfirmation3.equals(orderConfirmation4));
        System.assertEquals(orderConfirmation1.hashCode(), orderConfirmation2.hashCode());
        System.assertEquals(orderConfirmation3.hashCode(), orderConfirmation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderConfirmation orderConfirmation = new OASOrderConfirmation();
        Map<String, String> x-property-mappings = orderConfirmation.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
