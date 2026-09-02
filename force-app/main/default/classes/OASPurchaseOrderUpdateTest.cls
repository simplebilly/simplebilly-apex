@isTest
private class OASPurchaseOrderUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPurchaseOrderUpdate purchaseOrderUpdate1 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate2 = purchaseOrderUpdate1;
        OASPurchaseOrderUpdate purchaseOrderUpdate3 = new OASPurchaseOrderUpdate();
        OASPurchaseOrderUpdate purchaseOrderUpdate4 = purchaseOrderUpdate3;

        System.assert(purchaseOrderUpdate1.equals(purchaseOrderUpdate2));
        System.assert(purchaseOrderUpdate2.equals(purchaseOrderUpdate1));
        System.assert(purchaseOrderUpdate1.equals(purchaseOrderUpdate1));
        System.assert(purchaseOrderUpdate3.equals(purchaseOrderUpdate4));
        System.assert(purchaseOrderUpdate4.equals(purchaseOrderUpdate3));
        System.assert(purchaseOrderUpdate3.equals(purchaseOrderUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPurchaseOrderUpdate purchaseOrderUpdate1 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate2 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate3 = new OASPurchaseOrderUpdate();
        OASPurchaseOrderUpdate purchaseOrderUpdate4 = new OASPurchaseOrderUpdate();

        System.assert(purchaseOrderUpdate1.equals(purchaseOrderUpdate2));
        System.assert(purchaseOrderUpdate2.equals(purchaseOrderUpdate1));
        System.assert(purchaseOrderUpdate3.equals(purchaseOrderUpdate4));
        System.assert(purchaseOrderUpdate4.equals(purchaseOrderUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPurchaseOrderUpdate purchaseOrderUpdate1 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate2 = new OASPurchaseOrderUpdate();

        System.assertEquals(false, purchaseOrderUpdate1.equals('foo'));
        System.assertEquals(false, purchaseOrderUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPurchaseOrderUpdate purchaseOrderUpdate1 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate2 = new OASPurchaseOrderUpdate();
        OASPurchaseOrderUpdate purchaseOrderUpdate3;

        System.assertEquals(false, purchaseOrderUpdate1.equals(purchaseOrderUpdate3));
        System.assertEquals(false, purchaseOrderUpdate2.equals(purchaseOrderUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPurchaseOrderUpdate purchaseOrderUpdate1 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate2 = new OASPurchaseOrderUpdate();

        System.assertEquals(purchaseOrderUpdate1.hashCode(), purchaseOrderUpdate1.hashCode());
        System.assertEquals(purchaseOrderUpdate2.hashCode(), purchaseOrderUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPurchaseOrderUpdate purchaseOrderUpdate1 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate2 = OASPurchaseOrderUpdate.getExample();
        OASPurchaseOrderUpdate purchaseOrderUpdate3 = new OASPurchaseOrderUpdate();
        OASPurchaseOrderUpdate purchaseOrderUpdate4 = new OASPurchaseOrderUpdate();

        System.assert(purchaseOrderUpdate1.equals(purchaseOrderUpdate2));
        System.assert(purchaseOrderUpdate3.equals(purchaseOrderUpdate4));
        System.assertEquals(purchaseOrderUpdate1.hashCode(), purchaseOrderUpdate2.hashCode());
        System.assertEquals(purchaseOrderUpdate3.hashCode(), purchaseOrderUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPurchaseOrderUpdate purchaseOrderUpdate = new OASPurchaseOrderUpdate();
        Map<String, String> x-property-mappings = purchaseOrderUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
