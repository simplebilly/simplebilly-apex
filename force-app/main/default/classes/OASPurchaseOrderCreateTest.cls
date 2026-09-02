@isTest
private class OASPurchaseOrderCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPurchaseOrderCreate purchaseOrderCreate1 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate2 = purchaseOrderCreate1;
        OASPurchaseOrderCreate purchaseOrderCreate3 = new OASPurchaseOrderCreate();
        OASPurchaseOrderCreate purchaseOrderCreate4 = purchaseOrderCreate3;

        System.assert(purchaseOrderCreate1.equals(purchaseOrderCreate2));
        System.assert(purchaseOrderCreate2.equals(purchaseOrderCreate1));
        System.assert(purchaseOrderCreate1.equals(purchaseOrderCreate1));
        System.assert(purchaseOrderCreate3.equals(purchaseOrderCreate4));
        System.assert(purchaseOrderCreate4.equals(purchaseOrderCreate3));
        System.assert(purchaseOrderCreate3.equals(purchaseOrderCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPurchaseOrderCreate purchaseOrderCreate1 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate2 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate3 = new OASPurchaseOrderCreate();
        OASPurchaseOrderCreate purchaseOrderCreate4 = new OASPurchaseOrderCreate();

        System.assert(purchaseOrderCreate1.equals(purchaseOrderCreate2));
        System.assert(purchaseOrderCreate2.equals(purchaseOrderCreate1));
        System.assert(purchaseOrderCreate3.equals(purchaseOrderCreate4));
        System.assert(purchaseOrderCreate4.equals(purchaseOrderCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPurchaseOrderCreate purchaseOrderCreate1 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate2 = new OASPurchaseOrderCreate();

        System.assertEquals(false, purchaseOrderCreate1.equals('foo'));
        System.assertEquals(false, purchaseOrderCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPurchaseOrderCreate purchaseOrderCreate1 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate2 = new OASPurchaseOrderCreate();
        OASPurchaseOrderCreate purchaseOrderCreate3;

        System.assertEquals(false, purchaseOrderCreate1.equals(purchaseOrderCreate3));
        System.assertEquals(false, purchaseOrderCreate2.equals(purchaseOrderCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPurchaseOrderCreate purchaseOrderCreate1 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate2 = new OASPurchaseOrderCreate();

        System.assertEquals(purchaseOrderCreate1.hashCode(), purchaseOrderCreate1.hashCode());
        System.assertEquals(purchaseOrderCreate2.hashCode(), purchaseOrderCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPurchaseOrderCreate purchaseOrderCreate1 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate2 = OASPurchaseOrderCreate.getExample();
        OASPurchaseOrderCreate purchaseOrderCreate3 = new OASPurchaseOrderCreate();
        OASPurchaseOrderCreate purchaseOrderCreate4 = new OASPurchaseOrderCreate();

        System.assert(purchaseOrderCreate1.equals(purchaseOrderCreate2));
        System.assert(purchaseOrderCreate3.equals(purchaseOrderCreate4));
        System.assertEquals(purchaseOrderCreate1.hashCode(), purchaseOrderCreate2.hashCode());
        System.assertEquals(purchaseOrderCreate3.hashCode(), purchaseOrderCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPurchaseOrderCreate purchaseOrderCreate = new OASPurchaseOrderCreate();
        Map<String, String> x-property-mappings = purchaseOrderCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
