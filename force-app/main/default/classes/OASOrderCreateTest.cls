@isTest
private class OASOrderCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderCreate orderCreate1 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate2 = orderCreate1;
        OASOrderCreate orderCreate3 = new OASOrderCreate();
        OASOrderCreate orderCreate4 = orderCreate3;

        System.assert(orderCreate1.equals(orderCreate2));
        System.assert(orderCreate2.equals(orderCreate1));
        System.assert(orderCreate1.equals(orderCreate1));
        System.assert(orderCreate3.equals(orderCreate4));
        System.assert(orderCreate4.equals(orderCreate3));
        System.assert(orderCreate3.equals(orderCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderCreate orderCreate1 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate2 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate3 = new OASOrderCreate();
        OASOrderCreate orderCreate4 = new OASOrderCreate();

        System.assert(orderCreate1.equals(orderCreate2));
        System.assert(orderCreate2.equals(orderCreate1));
        System.assert(orderCreate3.equals(orderCreate4));
        System.assert(orderCreate4.equals(orderCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderCreate orderCreate1 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate2 = new OASOrderCreate();

        System.assertEquals(false, orderCreate1.equals('foo'));
        System.assertEquals(false, orderCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderCreate orderCreate1 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate2 = new OASOrderCreate();
        OASOrderCreate orderCreate3;

        System.assertEquals(false, orderCreate1.equals(orderCreate3));
        System.assertEquals(false, orderCreate2.equals(orderCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderCreate orderCreate1 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate2 = new OASOrderCreate();

        System.assertEquals(orderCreate1.hashCode(), orderCreate1.hashCode());
        System.assertEquals(orderCreate2.hashCode(), orderCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderCreate orderCreate1 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate2 = OASOrderCreate.getExample();
        OASOrderCreate orderCreate3 = new OASOrderCreate();
        OASOrderCreate orderCreate4 = new OASOrderCreate();

        System.assert(orderCreate1.equals(orderCreate2));
        System.assert(orderCreate3.equals(orderCreate4));
        System.assertEquals(orderCreate1.hashCode(), orderCreate2.hashCode());
        System.assertEquals(orderCreate3.hashCode(), orderCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderCreate orderCreate = new OASOrderCreate();
        Map<String, String> x-property-mappings = orderCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderCreate orderCreate = new OASOrderCreate();
        System.assertEquals(new List<String>(), orderCreate.tags);
        System.assertEquals(null, orderCreate.auditLog);
        System.assertEquals(null, orderCreate.r_currency);
        System.assertEquals(null, orderCreate.customerId);
        System.assertEquals(null, orderCreate.externalReference);
        System.assertEquals(null, orderCreate.invoiceAddress);
        System.assertEquals(null, orderCreate.items);
        System.assertEquals(null, orderCreate.language);
        System.assertEquals(null, orderCreate.orderStatus);
        System.assertEquals(null, orderCreate.paymentMethod);
        System.assertEquals(null, orderCreate.shippingAddress);
        System.assertEquals(null, orderCreate.shippingCost);
        System.assertEquals(null, orderCreate.shippingMethod);
        System.assertEquals(null, orderCreate.shippingWeight);
        System.assertEquals(null, orderCreate.totalCost);
    }
}
