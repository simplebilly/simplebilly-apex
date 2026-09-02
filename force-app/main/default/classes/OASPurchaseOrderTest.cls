@isTest
private class OASPurchaseOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASPurchaseOrder purchaseOrder1 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder2 = purchaseOrder1;
        OASPurchaseOrder purchaseOrder3 = new OASPurchaseOrder();
        OASPurchaseOrder purchaseOrder4 = purchaseOrder3;

        System.assert(purchaseOrder1.equals(purchaseOrder2));
        System.assert(purchaseOrder2.equals(purchaseOrder1));
        System.assert(purchaseOrder1.equals(purchaseOrder1));
        System.assert(purchaseOrder3.equals(purchaseOrder4));
        System.assert(purchaseOrder4.equals(purchaseOrder3));
        System.assert(purchaseOrder3.equals(purchaseOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPurchaseOrder purchaseOrder1 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder2 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder3 = new OASPurchaseOrder();
        OASPurchaseOrder purchaseOrder4 = new OASPurchaseOrder();

        System.assert(purchaseOrder1.equals(purchaseOrder2));
        System.assert(purchaseOrder2.equals(purchaseOrder1));
        System.assert(purchaseOrder3.equals(purchaseOrder4));
        System.assert(purchaseOrder4.equals(purchaseOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPurchaseOrder purchaseOrder1 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder2 = new OASPurchaseOrder();

        System.assertEquals(false, purchaseOrder1.equals('foo'));
        System.assertEquals(false, purchaseOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPurchaseOrder purchaseOrder1 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder2 = new OASPurchaseOrder();
        OASPurchaseOrder purchaseOrder3;

        System.assertEquals(false, purchaseOrder1.equals(purchaseOrder3));
        System.assertEquals(false, purchaseOrder2.equals(purchaseOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPurchaseOrder purchaseOrder1 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder2 = new OASPurchaseOrder();

        System.assertEquals(purchaseOrder1.hashCode(), purchaseOrder1.hashCode());
        System.assertEquals(purchaseOrder2.hashCode(), purchaseOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPurchaseOrder purchaseOrder1 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder2 = OASPurchaseOrder.getExample();
        OASPurchaseOrder purchaseOrder3 = new OASPurchaseOrder();
        OASPurchaseOrder purchaseOrder4 = new OASPurchaseOrder();

        System.assert(purchaseOrder1.equals(purchaseOrder2));
        System.assert(purchaseOrder3.equals(purchaseOrder4));
        System.assertEquals(purchaseOrder1.hashCode(), purchaseOrder2.hashCode());
        System.assertEquals(purchaseOrder3.hashCode(), purchaseOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPurchaseOrder purchaseOrder = new OASPurchaseOrder();
        Map<String, String> x-property-mappings = purchaseOrder.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
