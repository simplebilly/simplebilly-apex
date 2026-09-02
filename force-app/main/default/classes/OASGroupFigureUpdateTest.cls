@isTest
private class OASGroupFigureUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupFigureUpdate groupFigureUpdate1 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate2 = groupFigureUpdate1;
        OASGroupFigureUpdate groupFigureUpdate3 = new OASGroupFigureUpdate();
        OASGroupFigureUpdate groupFigureUpdate4 = groupFigureUpdate3;

        System.assert(groupFigureUpdate1.equals(groupFigureUpdate2));
        System.assert(groupFigureUpdate2.equals(groupFigureUpdate1));
        System.assert(groupFigureUpdate1.equals(groupFigureUpdate1));
        System.assert(groupFigureUpdate3.equals(groupFigureUpdate4));
        System.assert(groupFigureUpdate4.equals(groupFigureUpdate3));
        System.assert(groupFigureUpdate3.equals(groupFigureUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupFigureUpdate groupFigureUpdate1 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate2 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate3 = new OASGroupFigureUpdate();
        OASGroupFigureUpdate groupFigureUpdate4 = new OASGroupFigureUpdate();

        System.assert(groupFigureUpdate1.equals(groupFigureUpdate2));
        System.assert(groupFigureUpdate2.equals(groupFigureUpdate1));
        System.assert(groupFigureUpdate3.equals(groupFigureUpdate4));
        System.assert(groupFigureUpdate4.equals(groupFigureUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupFigureUpdate groupFigureUpdate1 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate2 = new OASGroupFigureUpdate();

        System.assertEquals(false, groupFigureUpdate1.equals('foo'));
        System.assertEquals(false, groupFigureUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupFigureUpdate groupFigureUpdate1 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate2 = new OASGroupFigureUpdate();
        OASGroupFigureUpdate groupFigureUpdate3;

        System.assertEquals(false, groupFigureUpdate1.equals(groupFigureUpdate3));
        System.assertEquals(false, groupFigureUpdate2.equals(groupFigureUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupFigureUpdate groupFigureUpdate1 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate2 = new OASGroupFigureUpdate();

        System.assertEquals(groupFigureUpdate1.hashCode(), groupFigureUpdate1.hashCode());
        System.assertEquals(groupFigureUpdate2.hashCode(), groupFigureUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupFigureUpdate groupFigureUpdate1 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate2 = OASGroupFigureUpdate.getExample();
        OASGroupFigureUpdate groupFigureUpdate3 = new OASGroupFigureUpdate();
        OASGroupFigureUpdate groupFigureUpdate4 = new OASGroupFigureUpdate();

        System.assert(groupFigureUpdate1.equals(groupFigureUpdate2));
        System.assert(groupFigureUpdate3.equals(groupFigureUpdate4));
        System.assertEquals(groupFigureUpdate1.hashCode(), groupFigureUpdate2.hashCode());
        System.assertEquals(groupFigureUpdate3.hashCode(), groupFigureUpdate4.hashCode());
    }
}
