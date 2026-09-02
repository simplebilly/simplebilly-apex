@isTest
private class OASOffenlegungItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASOffenlegungItem offenlegungItem1 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem2 = offenlegungItem1;
        OASOffenlegungItem offenlegungItem3 = new OASOffenlegungItem();
        OASOffenlegungItem offenlegungItem4 = offenlegungItem3;

        System.assert(offenlegungItem1.equals(offenlegungItem2));
        System.assert(offenlegungItem2.equals(offenlegungItem1));
        System.assert(offenlegungItem1.equals(offenlegungItem1));
        System.assert(offenlegungItem3.equals(offenlegungItem4));
        System.assert(offenlegungItem4.equals(offenlegungItem3));
        System.assert(offenlegungItem3.equals(offenlegungItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOffenlegungItem offenlegungItem1 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem2 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem3 = new OASOffenlegungItem();
        OASOffenlegungItem offenlegungItem4 = new OASOffenlegungItem();

        System.assert(offenlegungItem1.equals(offenlegungItem2));
        System.assert(offenlegungItem2.equals(offenlegungItem1));
        System.assert(offenlegungItem3.equals(offenlegungItem4));
        System.assert(offenlegungItem4.equals(offenlegungItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOffenlegungItem offenlegungItem1 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem2 = new OASOffenlegungItem();

        System.assertEquals(false, offenlegungItem1.equals('foo'));
        System.assertEquals(false, offenlegungItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOffenlegungItem offenlegungItem1 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem2 = new OASOffenlegungItem();
        OASOffenlegungItem offenlegungItem3;

        System.assertEquals(false, offenlegungItem1.equals(offenlegungItem3));
        System.assertEquals(false, offenlegungItem2.equals(offenlegungItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOffenlegungItem offenlegungItem1 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem2 = new OASOffenlegungItem();

        System.assertEquals(offenlegungItem1.hashCode(), offenlegungItem1.hashCode());
        System.assertEquals(offenlegungItem2.hashCode(), offenlegungItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOffenlegungItem offenlegungItem1 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem2 = OASOffenlegungItem.getExample();
        OASOffenlegungItem offenlegungItem3 = new OASOffenlegungItem();
        OASOffenlegungItem offenlegungItem4 = new OASOffenlegungItem();

        System.assert(offenlegungItem1.equals(offenlegungItem2));
        System.assert(offenlegungItem3.equals(offenlegungItem4));
        System.assertEquals(offenlegungItem1.hashCode(), offenlegungItem2.hashCode());
        System.assertEquals(offenlegungItem3.hashCode(), offenlegungItem4.hashCode());
    }
}
