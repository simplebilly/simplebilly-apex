@isTest
private class OASGuVItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASGuVItem guVItem1 = OASGuVItem.getExample();
        OASGuVItem guVItem2 = guVItem1;
        OASGuVItem guVItem3 = new OASGuVItem();
        OASGuVItem guVItem4 = guVItem3;

        System.assert(guVItem1.equals(guVItem2));
        System.assert(guVItem2.equals(guVItem1));
        System.assert(guVItem1.equals(guVItem1));
        System.assert(guVItem3.equals(guVItem4));
        System.assert(guVItem4.equals(guVItem3));
        System.assert(guVItem3.equals(guVItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGuVItem guVItem1 = OASGuVItem.getExample();
        OASGuVItem guVItem2 = OASGuVItem.getExample();
        OASGuVItem guVItem3 = new OASGuVItem();
        OASGuVItem guVItem4 = new OASGuVItem();

        System.assert(guVItem1.equals(guVItem2));
        System.assert(guVItem2.equals(guVItem1));
        System.assert(guVItem3.equals(guVItem4));
        System.assert(guVItem4.equals(guVItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGuVItem guVItem1 = OASGuVItem.getExample();
        OASGuVItem guVItem2 = new OASGuVItem();

        System.assertEquals(false, guVItem1.equals('foo'));
        System.assertEquals(false, guVItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGuVItem guVItem1 = OASGuVItem.getExample();
        OASGuVItem guVItem2 = new OASGuVItem();
        OASGuVItem guVItem3;

        System.assertEquals(false, guVItem1.equals(guVItem3));
        System.assertEquals(false, guVItem2.equals(guVItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGuVItem guVItem1 = OASGuVItem.getExample();
        OASGuVItem guVItem2 = new OASGuVItem();

        System.assertEquals(guVItem1.hashCode(), guVItem1.hashCode());
        System.assertEquals(guVItem2.hashCode(), guVItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGuVItem guVItem1 = OASGuVItem.getExample();
        OASGuVItem guVItem2 = OASGuVItem.getExample();
        OASGuVItem guVItem3 = new OASGuVItem();
        OASGuVItem guVItem4 = new OASGuVItem();

        System.assert(guVItem1.equals(guVItem2));
        System.assert(guVItem3.equals(guVItem4));
        System.assertEquals(guVItem1.hashCode(), guVItem2.hashCode());
        System.assertEquals(guVItem3.hashCode(), guVItem4.hashCode());
    }
}
