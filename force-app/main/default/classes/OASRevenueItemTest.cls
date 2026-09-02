@isTest
private class OASRevenueItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASRevenueItem revenueItem1 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem2 = revenueItem1;
        OASRevenueItem revenueItem3 = new OASRevenueItem();
        OASRevenueItem revenueItem4 = revenueItem3;

        System.assert(revenueItem1.equals(revenueItem2));
        System.assert(revenueItem2.equals(revenueItem1));
        System.assert(revenueItem1.equals(revenueItem1));
        System.assert(revenueItem3.equals(revenueItem4));
        System.assert(revenueItem4.equals(revenueItem3));
        System.assert(revenueItem3.equals(revenueItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRevenueItem revenueItem1 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem2 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem3 = new OASRevenueItem();
        OASRevenueItem revenueItem4 = new OASRevenueItem();

        System.assert(revenueItem1.equals(revenueItem2));
        System.assert(revenueItem2.equals(revenueItem1));
        System.assert(revenueItem3.equals(revenueItem4));
        System.assert(revenueItem4.equals(revenueItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRevenueItem revenueItem1 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem2 = new OASRevenueItem();

        System.assertEquals(false, revenueItem1.equals('foo'));
        System.assertEquals(false, revenueItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRevenueItem revenueItem1 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem2 = new OASRevenueItem();
        OASRevenueItem revenueItem3;

        System.assertEquals(false, revenueItem1.equals(revenueItem3));
        System.assertEquals(false, revenueItem2.equals(revenueItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRevenueItem revenueItem1 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem2 = new OASRevenueItem();

        System.assertEquals(revenueItem1.hashCode(), revenueItem1.hashCode());
        System.assertEquals(revenueItem2.hashCode(), revenueItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRevenueItem revenueItem1 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem2 = OASRevenueItem.getExample();
        OASRevenueItem revenueItem3 = new OASRevenueItem();
        OASRevenueItem revenueItem4 = new OASRevenueItem();

        System.assert(revenueItem1.equals(revenueItem2));
        System.assert(revenueItem3.equals(revenueItem4));
        System.assertEquals(revenueItem1.hashCode(), revenueItem2.hashCode());
        System.assertEquals(revenueItem3.hashCode(), revenueItem4.hashCode());
    }
}
