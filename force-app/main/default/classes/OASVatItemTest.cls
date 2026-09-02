@isTest
private class OASVatItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASVatItem vatItem1 = OASVatItem.getExample();
        OASVatItem vatItem2 = vatItem1;
        OASVatItem vatItem3 = new OASVatItem();
        OASVatItem vatItem4 = vatItem3;

        System.assert(vatItem1.equals(vatItem2));
        System.assert(vatItem2.equals(vatItem1));
        System.assert(vatItem1.equals(vatItem1));
        System.assert(vatItem3.equals(vatItem4));
        System.assert(vatItem4.equals(vatItem3));
        System.assert(vatItem3.equals(vatItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVatItem vatItem1 = OASVatItem.getExample();
        OASVatItem vatItem2 = OASVatItem.getExample();
        OASVatItem vatItem3 = new OASVatItem();
        OASVatItem vatItem4 = new OASVatItem();

        System.assert(vatItem1.equals(vatItem2));
        System.assert(vatItem2.equals(vatItem1));
        System.assert(vatItem3.equals(vatItem4));
        System.assert(vatItem4.equals(vatItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVatItem vatItem1 = OASVatItem.getExample();
        OASVatItem vatItem2 = new OASVatItem();

        System.assertEquals(false, vatItem1.equals('foo'));
        System.assertEquals(false, vatItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVatItem vatItem1 = OASVatItem.getExample();
        OASVatItem vatItem2 = new OASVatItem();
        OASVatItem vatItem3;

        System.assertEquals(false, vatItem1.equals(vatItem3));
        System.assertEquals(false, vatItem2.equals(vatItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVatItem vatItem1 = OASVatItem.getExample();
        OASVatItem vatItem2 = new OASVatItem();

        System.assertEquals(vatItem1.hashCode(), vatItem1.hashCode());
        System.assertEquals(vatItem2.hashCode(), vatItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVatItem vatItem1 = OASVatItem.getExample();
        OASVatItem vatItem2 = OASVatItem.getExample();
        OASVatItem vatItem3 = new OASVatItem();
        OASVatItem vatItem4 = new OASVatItem();

        System.assert(vatItem1.equals(vatItem2));
        System.assert(vatItem3.equals(vatItem4));
        System.assertEquals(vatItem1.hashCode(), vatItem2.hashCode());
        System.assertEquals(vatItem3.hashCode(), vatItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASVatItem vatItem = new OASVatItem();
        Map<String, String> x-property-mappings = vatItem.getx-property-mappings();
        System.assertEquals('netAmount', x-property-mappings.get('net_amount'));
        System.assertEquals('taxAmount', x-property-mappings.get('tax_amount'));
        System.assertEquals('taxRate', x-property-mappings.get('tax_rate'));
    }
}
