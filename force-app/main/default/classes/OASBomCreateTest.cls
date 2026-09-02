@isTest
private class OASBomCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASBomCreate bomCreate1 = OASBomCreate.getExample();
        OASBomCreate bomCreate2 = bomCreate1;
        OASBomCreate bomCreate3 = new OASBomCreate();
        OASBomCreate bomCreate4 = bomCreate3;

        System.assert(bomCreate1.equals(bomCreate2));
        System.assert(bomCreate2.equals(bomCreate1));
        System.assert(bomCreate1.equals(bomCreate1));
        System.assert(bomCreate3.equals(bomCreate4));
        System.assert(bomCreate4.equals(bomCreate3));
        System.assert(bomCreate3.equals(bomCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBomCreate bomCreate1 = OASBomCreate.getExample();
        OASBomCreate bomCreate2 = OASBomCreate.getExample();
        OASBomCreate bomCreate3 = new OASBomCreate();
        OASBomCreate bomCreate4 = new OASBomCreate();

        System.assert(bomCreate1.equals(bomCreate2));
        System.assert(bomCreate2.equals(bomCreate1));
        System.assert(bomCreate3.equals(bomCreate4));
        System.assert(bomCreate4.equals(bomCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBomCreate bomCreate1 = OASBomCreate.getExample();
        OASBomCreate bomCreate2 = new OASBomCreate();

        System.assertEquals(false, bomCreate1.equals('foo'));
        System.assertEquals(false, bomCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBomCreate bomCreate1 = OASBomCreate.getExample();
        OASBomCreate bomCreate2 = new OASBomCreate();
        OASBomCreate bomCreate3;

        System.assertEquals(false, bomCreate1.equals(bomCreate3));
        System.assertEquals(false, bomCreate2.equals(bomCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBomCreate bomCreate1 = OASBomCreate.getExample();
        OASBomCreate bomCreate2 = new OASBomCreate();

        System.assertEquals(bomCreate1.hashCode(), bomCreate1.hashCode());
        System.assertEquals(bomCreate2.hashCode(), bomCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBomCreate bomCreate1 = OASBomCreate.getExample();
        OASBomCreate bomCreate2 = OASBomCreate.getExample();
        OASBomCreate bomCreate3 = new OASBomCreate();
        OASBomCreate bomCreate4 = new OASBomCreate();

        System.assert(bomCreate1.equals(bomCreate2));
        System.assert(bomCreate3.equals(bomCreate4));
        System.assertEquals(bomCreate1.hashCode(), bomCreate2.hashCode());
        System.assertEquals(bomCreate3.hashCode(), bomCreate4.hashCode());
    }
}
