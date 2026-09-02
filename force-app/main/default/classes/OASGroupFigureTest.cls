@isTest
private class OASGroupFigureTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupFigure groupFigure1 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure2 = groupFigure1;
        OASGroupFigure groupFigure3 = new OASGroupFigure();
        OASGroupFigure groupFigure4 = groupFigure3;

        System.assert(groupFigure1.equals(groupFigure2));
        System.assert(groupFigure2.equals(groupFigure1));
        System.assert(groupFigure1.equals(groupFigure1));
        System.assert(groupFigure3.equals(groupFigure4));
        System.assert(groupFigure4.equals(groupFigure3));
        System.assert(groupFigure3.equals(groupFigure3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupFigure groupFigure1 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure2 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure3 = new OASGroupFigure();
        OASGroupFigure groupFigure4 = new OASGroupFigure();

        System.assert(groupFigure1.equals(groupFigure2));
        System.assert(groupFigure2.equals(groupFigure1));
        System.assert(groupFigure3.equals(groupFigure4));
        System.assert(groupFigure4.equals(groupFigure3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupFigure groupFigure1 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure2 = new OASGroupFigure();

        System.assertEquals(false, groupFigure1.equals('foo'));
        System.assertEquals(false, groupFigure2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupFigure groupFigure1 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure2 = new OASGroupFigure();
        OASGroupFigure groupFigure3;

        System.assertEquals(false, groupFigure1.equals(groupFigure3));
        System.assertEquals(false, groupFigure2.equals(groupFigure3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupFigure groupFigure1 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure2 = new OASGroupFigure();

        System.assertEquals(groupFigure1.hashCode(), groupFigure1.hashCode());
        System.assertEquals(groupFigure2.hashCode(), groupFigure2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupFigure groupFigure1 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure2 = OASGroupFigure.getExample();
        OASGroupFigure groupFigure3 = new OASGroupFigure();
        OASGroupFigure groupFigure4 = new OASGroupFigure();

        System.assert(groupFigure1.equals(groupFigure2));
        System.assert(groupFigure3.equals(groupFigure4));
        System.assertEquals(groupFigure1.hashCode(), groupFigure2.hashCode());
        System.assertEquals(groupFigure3.hashCode(), groupFigure4.hashCode());
    }
}
