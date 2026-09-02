@isTest
private class OASCurrentInventoryValueTest {
    @isTest
    private static void equalsSameInstance() {
        OASCurrentInventoryValue currentInventoryValue1 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue2 = currentInventoryValue1;
        OASCurrentInventoryValue currentInventoryValue3 = new OASCurrentInventoryValue();
        OASCurrentInventoryValue currentInventoryValue4 = currentInventoryValue3;

        System.assert(currentInventoryValue1.equals(currentInventoryValue2));
        System.assert(currentInventoryValue2.equals(currentInventoryValue1));
        System.assert(currentInventoryValue1.equals(currentInventoryValue1));
        System.assert(currentInventoryValue3.equals(currentInventoryValue4));
        System.assert(currentInventoryValue4.equals(currentInventoryValue3));
        System.assert(currentInventoryValue3.equals(currentInventoryValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCurrentInventoryValue currentInventoryValue1 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue2 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue3 = new OASCurrentInventoryValue();
        OASCurrentInventoryValue currentInventoryValue4 = new OASCurrentInventoryValue();

        System.assert(currentInventoryValue1.equals(currentInventoryValue2));
        System.assert(currentInventoryValue2.equals(currentInventoryValue1));
        System.assert(currentInventoryValue3.equals(currentInventoryValue4));
        System.assert(currentInventoryValue4.equals(currentInventoryValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCurrentInventoryValue currentInventoryValue1 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue2 = new OASCurrentInventoryValue();

        System.assertEquals(false, currentInventoryValue1.equals('foo'));
        System.assertEquals(false, currentInventoryValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCurrentInventoryValue currentInventoryValue1 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue2 = new OASCurrentInventoryValue();
        OASCurrentInventoryValue currentInventoryValue3;

        System.assertEquals(false, currentInventoryValue1.equals(currentInventoryValue3));
        System.assertEquals(false, currentInventoryValue2.equals(currentInventoryValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCurrentInventoryValue currentInventoryValue1 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue2 = new OASCurrentInventoryValue();

        System.assertEquals(currentInventoryValue1.hashCode(), currentInventoryValue1.hashCode());
        System.assertEquals(currentInventoryValue2.hashCode(), currentInventoryValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCurrentInventoryValue currentInventoryValue1 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue2 = OASCurrentInventoryValue.getExample();
        OASCurrentInventoryValue currentInventoryValue3 = new OASCurrentInventoryValue();
        OASCurrentInventoryValue currentInventoryValue4 = new OASCurrentInventoryValue();

        System.assert(currentInventoryValue1.equals(currentInventoryValue2));
        System.assert(currentInventoryValue3.equals(currentInventoryValue4));
        System.assertEquals(currentInventoryValue1.hashCode(), currentInventoryValue2.hashCode());
        System.assertEquals(currentInventoryValue3.hashCode(), currentInventoryValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCurrentInventoryValue currentInventoryValue = new OASCurrentInventoryValue();
        Map<String, String> x-property-mappings = currentInventoryValue.getx-property-mappings();
        System.assertEquals('productCount', x-property-mappings.get('product_count'));
        System.assertEquals('totalPurchaseValue', x-property-mappings.get('total_purchase_value'));
        System.assertEquals('totalSalesValue', x-property-mappings.get('total_sales_value'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCurrentInventoryValue currentInventoryValue = new OASCurrentInventoryValue();
        System.assertEquals(new List<OASInventoryValuePoint>(), currentInventoryValue.history);
        System.assertEquals(null, currentInventoryValue.productCount);
        System.assertEquals(null, currentInventoryValue.totalPurchaseValue);
        System.assertEquals(null, currentInventoryValue.totalSalesValue);
    }
}
