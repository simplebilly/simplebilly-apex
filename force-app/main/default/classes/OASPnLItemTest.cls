@isTest
private class OASPnLItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASPnLItem pnLItem1 = OASPnLItem.getExample();
        OASPnLItem pnLItem2 = pnLItem1;
        OASPnLItem pnLItem3 = new OASPnLItem();
        OASPnLItem pnLItem4 = pnLItem3;

        System.assert(pnLItem1.equals(pnLItem2));
        System.assert(pnLItem2.equals(pnLItem1));
        System.assert(pnLItem1.equals(pnLItem1));
        System.assert(pnLItem3.equals(pnLItem4));
        System.assert(pnLItem4.equals(pnLItem3));
        System.assert(pnLItem3.equals(pnLItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPnLItem pnLItem1 = OASPnLItem.getExample();
        OASPnLItem pnLItem2 = OASPnLItem.getExample();
        OASPnLItem pnLItem3 = new OASPnLItem();
        OASPnLItem pnLItem4 = new OASPnLItem();

        System.assert(pnLItem1.equals(pnLItem2));
        System.assert(pnLItem2.equals(pnLItem1));
        System.assert(pnLItem3.equals(pnLItem4));
        System.assert(pnLItem4.equals(pnLItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPnLItem pnLItem1 = OASPnLItem.getExample();
        OASPnLItem pnLItem2 = new OASPnLItem();

        System.assertEquals(false, pnLItem1.equals('foo'));
        System.assertEquals(false, pnLItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPnLItem pnLItem1 = OASPnLItem.getExample();
        OASPnLItem pnLItem2 = new OASPnLItem();
        OASPnLItem pnLItem3;

        System.assertEquals(false, pnLItem1.equals(pnLItem3));
        System.assertEquals(false, pnLItem2.equals(pnLItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPnLItem pnLItem1 = OASPnLItem.getExample();
        OASPnLItem pnLItem2 = new OASPnLItem();

        System.assertEquals(pnLItem1.hashCode(), pnLItem1.hashCode());
        System.assertEquals(pnLItem2.hashCode(), pnLItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPnLItem pnLItem1 = OASPnLItem.getExample();
        OASPnLItem pnLItem2 = OASPnLItem.getExample();
        OASPnLItem pnLItem3 = new OASPnLItem();
        OASPnLItem pnLItem4 = new OASPnLItem();

        System.assert(pnLItem1.equals(pnLItem2));
        System.assert(pnLItem3.equals(pnLItem4));
        System.assertEquals(pnLItem1.hashCode(), pnLItem2.hashCode());
        System.assertEquals(pnLItem3.hashCode(), pnLItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPnLItem pnLItem = new OASPnLItem();
        Map<String, String> x-property-mappings = pnLItem.getx-property-mappings();
        System.assertEquals('accountName', x-property-mappings.get('account_name'));
    }
}
