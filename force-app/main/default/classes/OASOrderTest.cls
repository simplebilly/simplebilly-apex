@isTest
private class OASOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrder order1 = OASOrder.getExample();
        OASOrder order2 = order1;
        OASOrder order3 = new OASOrder();
        OASOrder order4 = order3;

        System.assert(order1.equals(order2));
        System.assert(order2.equals(order1));
        System.assert(order1.equals(order1));
        System.assert(order3.equals(order4));
        System.assert(order4.equals(order3));
        System.assert(order3.equals(order3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrder order1 = OASOrder.getExample();
        OASOrder order2 = OASOrder.getExample();
        OASOrder order3 = new OASOrder();
        OASOrder order4 = new OASOrder();

        System.assert(order1.equals(order2));
        System.assert(order2.equals(order1));
        System.assert(order3.equals(order4));
        System.assert(order4.equals(order3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrder order1 = OASOrder.getExample();
        OASOrder order2 = new OASOrder();

        System.assertEquals(false, order1.equals('foo'));
        System.assertEquals(false, order2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrder order1 = OASOrder.getExample();
        OASOrder order2 = new OASOrder();
        OASOrder order3;

        System.assertEquals(false, order1.equals(order3));
        System.assertEquals(false, order2.equals(order3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrder order1 = OASOrder.getExample();
        OASOrder order2 = new OASOrder();

        System.assertEquals(order1.hashCode(), order1.hashCode());
        System.assertEquals(order2.hashCode(), order2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrder order1 = OASOrder.getExample();
        OASOrder order2 = OASOrder.getExample();
        OASOrder order3 = new OASOrder();
        OASOrder order4 = new OASOrder();

        System.assert(order1.equals(order2));
        System.assert(order3.equals(order4));
        System.assertEquals(order1.hashCode(), order2.hashCode());
        System.assertEquals(order3.hashCode(), order4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrder order = new OASOrder();
        Map<String, String> x-property-mappings = order.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrder order = new OASOrder();
        System.assertEquals(new List<String>(), order.tags);
        System.assertEquals(null, order.auditLog);
        System.assertEquals(null, order.r_currency);
        System.assertEquals(null, order.customerId);
        System.assertEquals(null, order.externalReference);
        System.assertEquals(null, order.invoiceAddress);
        System.assertEquals(null, order.items);
        System.assertEquals(null, order.language);
        System.assertEquals(null, order.orderStatus);
        System.assertEquals(null, order.paymentMethod);
        System.assertEquals(null, order.shippingAddress);
        System.assertEquals(null, order.shippingCost);
        System.assertEquals(null, order.shippingMethod);
        System.assertEquals(null, order.shippingWeight);
        System.assertEquals(null, order.totalCost);
    }
}
