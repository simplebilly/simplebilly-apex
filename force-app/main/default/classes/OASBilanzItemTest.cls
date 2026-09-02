@isTest
private class OASBilanzItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASBilanzItem bilanzItem1 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem2 = bilanzItem1;
        OASBilanzItem bilanzItem3 = new OASBilanzItem();
        OASBilanzItem bilanzItem4 = bilanzItem3;

        System.assert(bilanzItem1.equals(bilanzItem2));
        System.assert(bilanzItem2.equals(bilanzItem1));
        System.assert(bilanzItem1.equals(bilanzItem1));
        System.assert(bilanzItem3.equals(bilanzItem4));
        System.assert(bilanzItem4.equals(bilanzItem3));
        System.assert(bilanzItem3.equals(bilanzItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBilanzItem bilanzItem1 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem2 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem3 = new OASBilanzItem();
        OASBilanzItem bilanzItem4 = new OASBilanzItem();

        System.assert(bilanzItem1.equals(bilanzItem2));
        System.assert(bilanzItem2.equals(bilanzItem1));
        System.assert(bilanzItem3.equals(bilanzItem4));
        System.assert(bilanzItem4.equals(bilanzItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBilanzItem bilanzItem1 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem2 = new OASBilanzItem();

        System.assertEquals(false, bilanzItem1.equals('foo'));
        System.assertEquals(false, bilanzItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBilanzItem bilanzItem1 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem2 = new OASBilanzItem();
        OASBilanzItem bilanzItem3;

        System.assertEquals(false, bilanzItem1.equals(bilanzItem3));
        System.assertEquals(false, bilanzItem2.equals(bilanzItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBilanzItem bilanzItem1 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem2 = new OASBilanzItem();

        System.assertEquals(bilanzItem1.hashCode(), bilanzItem1.hashCode());
        System.assertEquals(bilanzItem2.hashCode(), bilanzItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBilanzItem bilanzItem1 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem2 = OASBilanzItem.getExample();
        OASBilanzItem bilanzItem3 = new OASBilanzItem();
        OASBilanzItem bilanzItem4 = new OASBilanzItem();

        System.assert(bilanzItem1.equals(bilanzItem2));
        System.assert(bilanzItem3.equals(bilanzItem4));
        System.assertEquals(bilanzItem1.hashCode(), bilanzItem2.hashCode());
        System.assertEquals(bilanzItem3.hashCode(), bilanzItem4.hashCode());
    }
}
