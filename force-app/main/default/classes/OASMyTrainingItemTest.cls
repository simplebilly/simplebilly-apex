@isTest
private class OASMyTrainingItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASMyTrainingItem myTrainingItem1 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem2 = myTrainingItem1;
        OASMyTrainingItem myTrainingItem3 = new OASMyTrainingItem();
        OASMyTrainingItem myTrainingItem4 = myTrainingItem3;

        System.assert(myTrainingItem1.equals(myTrainingItem2));
        System.assert(myTrainingItem2.equals(myTrainingItem1));
        System.assert(myTrainingItem1.equals(myTrainingItem1));
        System.assert(myTrainingItem3.equals(myTrainingItem4));
        System.assert(myTrainingItem4.equals(myTrainingItem3));
        System.assert(myTrainingItem3.equals(myTrainingItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMyTrainingItem myTrainingItem1 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem2 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem3 = new OASMyTrainingItem();
        OASMyTrainingItem myTrainingItem4 = new OASMyTrainingItem();

        System.assert(myTrainingItem1.equals(myTrainingItem2));
        System.assert(myTrainingItem2.equals(myTrainingItem1));
        System.assert(myTrainingItem3.equals(myTrainingItem4));
        System.assert(myTrainingItem4.equals(myTrainingItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMyTrainingItem myTrainingItem1 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem2 = new OASMyTrainingItem();

        System.assertEquals(false, myTrainingItem1.equals('foo'));
        System.assertEquals(false, myTrainingItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMyTrainingItem myTrainingItem1 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem2 = new OASMyTrainingItem();
        OASMyTrainingItem myTrainingItem3;

        System.assertEquals(false, myTrainingItem1.equals(myTrainingItem3));
        System.assertEquals(false, myTrainingItem2.equals(myTrainingItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMyTrainingItem myTrainingItem1 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem2 = new OASMyTrainingItem();

        System.assertEquals(myTrainingItem1.hashCode(), myTrainingItem1.hashCode());
        System.assertEquals(myTrainingItem2.hashCode(), myTrainingItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMyTrainingItem myTrainingItem1 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem2 = OASMyTrainingItem.getExample();
        OASMyTrainingItem myTrainingItem3 = new OASMyTrainingItem();
        OASMyTrainingItem myTrainingItem4 = new OASMyTrainingItem();

        System.assert(myTrainingItem1.equals(myTrainingItem2));
        System.assert(myTrainingItem3.equals(myTrainingItem4));
        System.assertEquals(myTrainingItem1.hashCode(), myTrainingItem2.hashCode());
        System.assertEquals(myTrainingItem3.hashCode(), myTrainingItem4.hashCode());
    }
}
