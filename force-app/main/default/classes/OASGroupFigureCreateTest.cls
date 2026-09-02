@isTest
private class OASGroupFigureCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupFigureCreate groupFigureCreate1 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate2 = groupFigureCreate1;
        OASGroupFigureCreate groupFigureCreate3 = new OASGroupFigureCreate();
        OASGroupFigureCreate groupFigureCreate4 = groupFigureCreate3;

        System.assert(groupFigureCreate1.equals(groupFigureCreate2));
        System.assert(groupFigureCreate2.equals(groupFigureCreate1));
        System.assert(groupFigureCreate1.equals(groupFigureCreate1));
        System.assert(groupFigureCreate3.equals(groupFigureCreate4));
        System.assert(groupFigureCreate4.equals(groupFigureCreate3));
        System.assert(groupFigureCreate3.equals(groupFigureCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupFigureCreate groupFigureCreate1 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate2 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate3 = new OASGroupFigureCreate();
        OASGroupFigureCreate groupFigureCreate4 = new OASGroupFigureCreate();

        System.assert(groupFigureCreate1.equals(groupFigureCreate2));
        System.assert(groupFigureCreate2.equals(groupFigureCreate1));
        System.assert(groupFigureCreate3.equals(groupFigureCreate4));
        System.assert(groupFigureCreate4.equals(groupFigureCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupFigureCreate groupFigureCreate1 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate2 = new OASGroupFigureCreate();

        System.assertEquals(false, groupFigureCreate1.equals('foo'));
        System.assertEquals(false, groupFigureCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupFigureCreate groupFigureCreate1 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate2 = new OASGroupFigureCreate();
        OASGroupFigureCreate groupFigureCreate3;

        System.assertEquals(false, groupFigureCreate1.equals(groupFigureCreate3));
        System.assertEquals(false, groupFigureCreate2.equals(groupFigureCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupFigureCreate groupFigureCreate1 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate2 = new OASGroupFigureCreate();

        System.assertEquals(groupFigureCreate1.hashCode(), groupFigureCreate1.hashCode());
        System.assertEquals(groupFigureCreate2.hashCode(), groupFigureCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupFigureCreate groupFigureCreate1 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate2 = OASGroupFigureCreate.getExample();
        OASGroupFigureCreate groupFigureCreate3 = new OASGroupFigureCreate();
        OASGroupFigureCreate groupFigureCreate4 = new OASGroupFigureCreate();

        System.assert(groupFigureCreate1.equals(groupFigureCreate2));
        System.assert(groupFigureCreate3.equals(groupFigureCreate4));
        System.assertEquals(groupFigureCreate1.hashCode(), groupFigureCreate2.hashCode());
        System.assertEquals(groupFigureCreate3.hashCode(), groupFigureCreate4.hashCode());
    }
}
