@isTest
private class OASOrderUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderUpdate orderUpdate1 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate2 = orderUpdate1;
        OASOrderUpdate orderUpdate3 = new OASOrderUpdate();
        OASOrderUpdate orderUpdate4 = orderUpdate3;

        System.assert(orderUpdate1.equals(orderUpdate2));
        System.assert(orderUpdate2.equals(orderUpdate1));
        System.assert(orderUpdate1.equals(orderUpdate1));
        System.assert(orderUpdate3.equals(orderUpdate4));
        System.assert(orderUpdate4.equals(orderUpdate3));
        System.assert(orderUpdate3.equals(orderUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderUpdate orderUpdate1 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate2 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate3 = new OASOrderUpdate();
        OASOrderUpdate orderUpdate4 = new OASOrderUpdate();

        System.assert(orderUpdate1.equals(orderUpdate2));
        System.assert(orderUpdate2.equals(orderUpdate1));
        System.assert(orderUpdate3.equals(orderUpdate4));
        System.assert(orderUpdate4.equals(orderUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderUpdate orderUpdate1 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate2 = new OASOrderUpdate();

        System.assertEquals(false, orderUpdate1.equals('foo'));
        System.assertEquals(false, orderUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderUpdate orderUpdate1 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate2 = new OASOrderUpdate();
        OASOrderUpdate orderUpdate3;

        System.assertEquals(false, orderUpdate1.equals(orderUpdate3));
        System.assertEquals(false, orderUpdate2.equals(orderUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderUpdate orderUpdate1 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate2 = new OASOrderUpdate();

        System.assertEquals(orderUpdate1.hashCode(), orderUpdate1.hashCode());
        System.assertEquals(orderUpdate2.hashCode(), orderUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderUpdate orderUpdate1 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate2 = OASOrderUpdate.getExample();
        OASOrderUpdate orderUpdate3 = new OASOrderUpdate();
        OASOrderUpdate orderUpdate4 = new OASOrderUpdate();

        System.assert(orderUpdate1.equals(orderUpdate2));
        System.assert(orderUpdate3.equals(orderUpdate4));
        System.assertEquals(orderUpdate1.hashCode(), orderUpdate2.hashCode());
        System.assertEquals(orderUpdate3.hashCode(), orderUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderUpdate orderUpdate = new OASOrderUpdate();
        Map<String, String> x-property-mappings = orderUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderUpdate orderUpdate = new OASOrderUpdate();
        System.assertEquals(new List<String>(), orderUpdate.tags);
        System.assertEquals(null, orderUpdate.auditLog);
        System.assertEquals(null, orderUpdate.r_currency);
        System.assertEquals(null, orderUpdate.customerId);
        System.assertEquals(null, orderUpdate.externalReference);
        System.assertEquals(null, orderUpdate.invoiceAddress);
        System.assertEquals(null, orderUpdate.items);
        System.assertEquals(null, orderUpdate.language);
        System.assertEquals(null, orderUpdate.orderStatus);
        System.assertEquals(null, orderUpdate.paymentMethod);
        System.assertEquals(null, orderUpdate.shippingAddress);
        System.assertEquals(null, orderUpdate.shippingCost);
        System.assertEquals(null, orderUpdate.shippingMethod);
        System.assertEquals(null, orderUpdate.shippingWeight);
        System.assertEquals(null, orderUpdate.totalCost);
    }
}
