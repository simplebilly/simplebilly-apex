@isTest
private class OASInventoryValuePointTest {
    @isTest
    private static void equalsSameInstance() {
        OASInventoryValuePoint inventoryValuePoint1 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint2 = inventoryValuePoint1;
        OASInventoryValuePoint inventoryValuePoint3 = new OASInventoryValuePoint();
        OASInventoryValuePoint inventoryValuePoint4 = inventoryValuePoint3;

        System.assert(inventoryValuePoint1.equals(inventoryValuePoint2));
        System.assert(inventoryValuePoint2.equals(inventoryValuePoint1));
        System.assert(inventoryValuePoint1.equals(inventoryValuePoint1));
        System.assert(inventoryValuePoint3.equals(inventoryValuePoint4));
        System.assert(inventoryValuePoint4.equals(inventoryValuePoint3));
        System.assert(inventoryValuePoint3.equals(inventoryValuePoint3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInventoryValuePoint inventoryValuePoint1 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint2 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint3 = new OASInventoryValuePoint();
        OASInventoryValuePoint inventoryValuePoint4 = new OASInventoryValuePoint();

        System.assert(inventoryValuePoint1.equals(inventoryValuePoint2));
        System.assert(inventoryValuePoint2.equals(inventoryValuePoint1));
        System.assert(inventoryValuePoint3.equals(inventoryValuePoint4));
        System.assert(inventoryValuePoint4.equals(inventoryValuePoint3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInventoryValuePoint inventoryValuePoint1 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint2 = new OASInventoryValuePoint();

        System.assertEquals(false, inventoryValuePoint1.equals('foo'));
        System.assertEquals(false, inventoryValuePoint2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInventoryValuePoint inventoryValuePoint1 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint2 = new OASInventoryValuePoint();
        OASInventoryValuePoint inventoryValuePoint3;

        System.assertEquals(false, inventoryValuePoint1.equals(inventoryValuePoint3));
        System.assertEquals(false, inventoryValuePoint2.equals(inventoryValuePoint3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInventoryValuePoint inventoryValuePoint1 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint2 = new OASInventoryValuePoint();

        System.assertEquals(inventoryValuePoint1.hashCode(), inventoryValuePoint1.hashCode());
        System.assertEquals(inventoryValuePoint2.hashCode(), inventoryValuePoint2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInventoryValuePoint inventoryValuePoint1 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint2 = OASInventoryValuePoint.getExample();
        OASInventoryValuePoint inventoryValuePoint3 = new OASInventoryValuePoint();
        OASInventoryValuePoint inventoryValuePoint4 = new OASInventoryValuePoint();

        System.assert(inventoryValuePoint1.equals(inventoryValuePoint2));
        System.assert(inventoryValuePoint3.equals(inventoryValuePoint4));
        System.assertEquals(inventoryValuePoint1.hashCode(), inventoryValuePoint2.hashCode());
        System.assertEquals(inventoryValuePoint3.hashCode(), inventoryValuePoint4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInventoryValuePoint inventoryValuePoint = new OASInventoryValuePoint();
        Map<String, String> x-property-mappings = inventoryValuePoint.getx-property-mappings();
        System.assertEquals('productCount', x-property-mappings.get('product_count'));
        System.assertEquals('recordedAt', x-property-mappings.get('recorded_at'));
        System.assertEquals('totalPurchaseValue', x-property-mappings.get('total_purchase_value'));
        System.assertEquals('totalSalesValue', x-property-mappings.get('total_sales_value'));
    }
}
