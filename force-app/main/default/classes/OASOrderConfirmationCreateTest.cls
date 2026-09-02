@isTest
private class OASOrderConfirmationCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderConfirmationCreate orderConfirmationCreate1 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate2 = orderConfirmationCreate1;
        OASOrderConfirmationCreate orderConfirmationCreate3 = new OASOrderConfirmationCreate();
        OASOrderConfirmationCreate orderConfirmationCreate4 = orderConfirmationCreate3;

        System.assert(orderConfirmationCreate1.equals(orderConfirmationCreate2));
        System.assert(orderConfirmationCreate2.equals(orderConfirmationCreate1));
        System.assert(orderConfirmationCreate1.equals(orderConfirmationCreate1));
        System.assert(orderConfirmationCreate3.equals(orderConfirmationCreate4));
        System.assert(orderConfirmationCreate4.equals(orderConfirmationCreate3));
        System.assert(orderConfirmationCreate3.equals(orderConfirmationCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderConfirmationCreate orderConfirmationCreate1 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate2 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate3 = new OASOrderConfirmationCreate();
        OASOrderConfirmationCreate orderConfirmationCreate4 = new OASOrderConfirmationCreate();

        System.assert(orderConfirmationCreate1.equals(orderConfirmationCreate2));
        System.assert(orderConfirmationCreate2.equals(orderConfirmationCreate1));
        System.assert(orderConfirmationCreate3.equals(orderConfirmationCreate4));
        System.assert(orderConfirmationCreate4.equals(orderConfirmationCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderConfirmationCreate orderConfirmationCreate1 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate2 = new OASOrderConfirmationCreate();

        System.assertEquals(false, orderConfirmationCreate1.equals('foo'));
        System.assertEquals(false, orderConfirmationCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderConfirmationCreate orderConfirmationCreate1 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate2 = new OASOrderConfirmationCreate();
        OASOrderConfirmationCreate orderConfirmationCreate3;

        System.assertEquals(false, orderConfirmationCreate1.equals(orderConfirmationCreate3));
        System.assertEquals(false, orderConfirmationCreate2.equals(orderConfirmationCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderConfirmationCreate orderConfirmationCreate1 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate2 = new OASOrderConfirmationCreate();

        System.assertEquals(orderConfirmationCreate1.hashCode(), orderConfirmationCreate1.hashCode());
        System.assertEquals(orderConfirmationCreate2.hashCode(), orderConfirmationCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderConfirmationCreate orderConfirmationCreate1 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate2 = OASOrderConfirmationCreate.getExample();
        OASOrderConfirmationCreate orderConfirmationCreate3 = new OASOrderConfirmationCreate();
        OASOrderConfirmationCreate orderConfirmationCreate4 = new OASOrderConfirmationCreate();

        System.assert(orderConfirmationCreate1.equals(orderConfirmationCreate2));
        System.assert(orderConfirmationCreate3.equals(orderConfirmationCreate4));
        System.assertEquals(orderConfirmationCreate1.hashCode(), orderConfirmationCreate2.hashCode());
        System.assertEquals(orderConfirmationCreate3.hashCode(), orderConfirmationCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderConfirmationCreate orderConfirmationCreate = new OASOrderConfirmationCreate();
        Map<String, String> x-property-mappings = orderConfirmationCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
