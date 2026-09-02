@isTest
private class OASPurchaseOrderStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate1 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate2 = purchaseOrderStatusUpdate1;
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate3 = new OASPurchaseOrderStatusUpdate();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate4 = purchaseOrderStatusUpdate3;

        System.assert(purchaseOrderStatusUpdate1.equals(purchaseOrderStatusUpdate2));
        System.assert(purchaseOrderStatusUpdate2.equals(purchaseOrderStatusUpdate1));
        System.assert(purchaseOrderStatusUpdate1.equals(purchaseOrderStatusUpdate1));
        System.assert(purchaseOrderStatusUpdate3.equals(purchaseOrderStatusUpdate4));
        System.assert(purchaseOrderStatusUpdate4.equals(purchaseOrderStatusUpdate3));
        System.assert(purchaseOrderStatusUpdate3.equals(purchaseOrderStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate1 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate2 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate3 = new OASPurchaseOrderStatusUpdate();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate4 = new OASPurchaseOrderStatusUpdate();

        System.assert(purchaseOrderStatusUpdate1.equals(purchaseOrderStatusUpdate2));
        System.assert(purchaseOrderStatusUpdate2.equals(purchaseOrderStatusUpdate1));
        System.assert(purchaseOrderStatusUpdate3.equals(purchaseOrderStatusUpdate4));
        System.assert(purchaseOrderStatusUpdate4.equals(purchaseOrderStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate1 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate2 = new OASPurchaseOrderStatusUpdate();

        System.assertEquals(false, purchaseOrderStatusUpdate1.equals('foo'));
        System.assertEquals(false, purchaseOrderStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate1 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate2 = new OASPurchaseOrderStatusUpdate();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate3;

        System.assertEquals(false, purchaseOrderStatusUpdate1.equals(purchaseOrderStatusUpdate3));
        System.assertEquals(false, purchaseOrderStatusUpdate2.equals(purchaseOrderStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate1 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate2 = new OASPurchaseOrderStatusUpdate();

        System.assertEquals(purchaseOrderStatusUpdate1.hashCode(), purchaseOrderStatusUpdate1.hashCode());
        System.assertEquals(purchaseOrderStatusUpdate2.hashCode(), purchaseOrderStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate1 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate2 = OASPurchaseOrderStatusUpdate.getExample();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate3 = new OASPurchaseOrderStatusUpdate();
        OASPurchaseOrderStatusUpdate purchaseOrderStatusUpdate4 = new OASPurchaseOrderStatusUpdate();

        System.assert(purchaseOrderStatusUpdate1.equals(purchaseOrderStatusUpdate2));
        System.assert(purchaseOrderStatusUpdate3.equals(purchaseOrderStatusUpdate4));
        System.assertEquals(purchaseOrderStatusUpdate1.hashCode(), purchaseOrderStatusUpdate2.hashCode());
        System.assertEquals(purchaseOrderStatusUpdate3.hashCode(), purchaseOrderStatusUpdate4.hashCode());
    }
}
