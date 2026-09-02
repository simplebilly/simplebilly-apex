@isTest
private class OASSalesVolumeItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASSalesVolumeItem salesVolumeItem1 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem2 = salesVolumeItem1;
        OASSalesVolumeItem salesVolumeItem3 = new OASSalesVolumeItem();
        OASSalesVolumeItem salesVolumeItem4 = salesVolumeItem3;

        System.assert(salesVolumeItem1.equals(salesVolumeItem2));
        System.assert(salesVolumeItem2.equals(salesVolumeItem1));
        System.assert(salesVolumeItem1.equals(salesVolumeItem1));
        System.assert(salesVolumeItem3.equals(salesVolumeItem4));
        System.assert(salesVolumeItem4.equals(salesVolumeItem3));
        System.assert(salesVolumeItem3.equals(salesVolumeItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSalesVolumeItem salesVolumeItem1 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem2 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem3 = new OASSalesVolumeItem();
        OASSalesVolumeItem salesVolumeItem4 = new OASSalesVolumeItem();

        System.assert(salesVolumeItem1.equals(salesVolumeItem2));
        System.assert(salesVolumeItem2.equals(salesVolumeItem1));
        System.assert(salesVolumeItem3.equals(salesVolumeItem4));
        System.assert(salesVolumeItem4.equals(salesVolumeItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSalesVolumeItem salesVolumeItem1 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem2 = new OASSalesVolumeItem();

        System.assertEquals(false, salesVolumeItem1.equals('foo'));
        System.assertEquals(false, salesVolumeItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSalesVolumeItem salesVolumeItem1 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem2 = new OASSalesVolumeItem();
        OASSalesVolumeItem salesVolumeItem3;

        System.assertEquals(false, salesVolumeItem1.equals(salesVolumeItem3));
        System.assertEquals(false, salesVolumeItem2.equals(salesVolumeItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSalesVolumeItem salesVolumeItem1 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem2 = new OASSalesVolumeItem();

        System.assertEquals(salesVolumeItem1.hashCode(), salesVolumeItem1.hashCode());
        System.assertEquals(salesVolumeItem2.hashCode(), salesVolumeItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSalesVolumeItem salesVolumeItem1 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem2 = OASSalesVolumeItem.getExample();
        OASSalesVolumeItem salesVolumeItem3 = new OASSalesVolumeItem();
        OASSalesVolumeItem salesVolumeItem4 = new OASSalesVolumeItem();

        System.assert(salesVolumeItem1.equals(salesVolumeItem2));
        System.assert(salesVolumeItem3.equals(salesVolumeItem4));
        System.assertEquals(salesVolumeItem1.hashCode(), salesVolumeItem2.hashCode());
        System.assertEquals(salesVolumeItem3.hashCode(), salesVolumeItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSalesVolumeItem salesVolumeItem = new OASSalesVolumeItem();
        Map<String, String> x-property-mappings = salesVolumeItem.getx-property-mappings();
        System.assertEquals('contactId', x-property-mappings.get('contact_id'));
        System.assertEquals('contactType', x-property-mappings.get('contact_type'));
        System.assertEquals('lastPurchaseDate', x-property-mappings.get('last_purchase_date'));
        System.assertEquals('totalInvoices', x-property-mappings.get('total_invoices'));
        System.assertEquals('totalRevenue', x-property-mappings.get('total_revenue'));
    }
}
