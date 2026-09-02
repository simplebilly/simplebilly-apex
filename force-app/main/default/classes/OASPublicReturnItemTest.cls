@isTest
private class OASPublicReturnItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicReturnItem publicReturnItem1 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem2 = publicReturnItem1;
        OASPublicReturnItem publicReturnItem3 = new OASPublicReturnItem();
        OASPublicReturnItem publicReturnItem4 = publicReturnItem3;

        System.assert(publicReturnItem1.equals(publicReturnItem2));
        System.assert(publicReturnItem2.equals(publicReturnItem1));
        System.assert(publicReturnItem1.equals(publicReturnItem1));
        System.assert(publicReturnItem3.equals(publicReturnItem4));
        System.assert(publicReturnItem4.equals(publicReturnItem3));
        System.assert(publicReturnItem3.equals(publicReturnItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicReturnItem publicReturnItem1 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem2 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem3 = new OASPublicReturnItem();
        OASPublicReturnItem publicReturnItem4 = new OASPublicReturnItem();

        System.assert(publicReturnItem1.equals(publicReturnItem2));
        System.assert(publicReturnItem2.equals(publicReturnItem1));
        System.assert(publicReturnItem3.equals(publicReturnItem4));
        System.assert(publicReturnItem4.equals(publicReturnItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicReturnItem publicReturnItem1 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem2 = new OASPublicReturnItem();

        System.assertEquals(false, publicReturnItem1.equals('foo'));
        System.assertEquals(false, publicReturnItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicReturnItem publicReturnItem1 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem2 = new OASPublicReturnItem();
        OASPublicReturnItem publicReturnItem3;

        System.assertEquals(false, publicReturnItem1.equals(publicReturnItem3));
        System.assertEquals(false, publicReturnItem2.equals(publicReturnItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicReturnItem publicReturnItem1 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem2 = new OASPublicReturnItem();

        System.assertEquals(publicReturnItem1.hashCode(), publicReturnItem1.hashCode());
        System.assertEquals(publicReturnItem2.hashCode(), publicReturnItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicReturnItem publicReturnItem1 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem2 = OASPublicReturnItem.getExample();
        OASPublicReturnItem publicReturnItem3 = new OASPublicReturnItem();
        OASPublicReturnItem publicReturnItem4 = new OASPublicReturnItem();

        System.assert(publicReturnItem1.equals(publicReturnItem2));
        System.assert(publicReturnItem3.equals(publicReturnItem4));
        System.assertEquals(publicReturnItem1.hashCode(), publicReturnItem2.hashCode());
        System.assertEquals(publicReturnItem3.hashCode(), publicReturnItem4.hashCode());
    }
}
