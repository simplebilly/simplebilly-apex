@isTest
private class OASPosTableCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPosTableCreate posTableCreate1 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate2 = posTableCreate1;
        OASPosTableCreate posTableCreate3 = new OASPosTableCreate();
        OASPosTableCreate posTableCreate4 = posTableCreate3;

        System.assert(posTableCreate1.equals(posTableCreate2));
        System.assert(posTableCreate2.equals(posTableCreate1));
        System.assert(posTableCreate1.equals(posTableCreate1));
        System.assert(posTableCreate3.equals(posTableCreate4));
        System.assert(posTableCreate4.equals(posTableCreate3));
        System.assert(posTableCreate3.equals(posTableCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPosTableCreate posTableCreate1 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate2 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate3 = new OASPosTableCreate();
        OASPosTableCreate posTableCreate4 = new OASPosTableCreate();

        System.assert(posTableCreate1.equals(posTableCreate2));
        System.assert(posTableCreate2.equals(posTableCreate1));
        System.assert(posTableCreate3.equals(posTableCreate4));
        System.assert(posTableCreate4.equals(posTableCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPosTableCreate posTableCreate1 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate2 = new OASPosTableCreate();

        System.assertEquals(false, posTableCreate1.equals('foo'));
        System.assertEquals(false, posTableCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPosTableCreate posTableCreate1 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate2 = new OASPosTableCreate();
        OASPosTableCreate posTableCreate3;

        System.assertEquals(false, posTableCreate1.equals(posTableCreate3));
        System.assertEquals(false, posTableCreate2.equals(posTableCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPosTableCreate posTableCreate1 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate2 = new OASPosTableCreate();

        System.assertEquals(posTableCreate1.hashCode(), posTableCreate1.hashCode());
        System.assertEquals(posTableCreate2.hashCode(), posTableCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPosTableCreate posTableCreate1 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate2 = OASPosTableCreate.getExample();
        OASPosTableCreate posTableCreate3 = new OASPosTableCreate();
        OASPosTableCreate posTableCreate4 = new OASPosTableCreate();

        System.assert(posTableCreate1.equals(posTableCreate2));
        System.assert(posTableCreate3.equals(posTableCreate4));
        System.assertEquals(posTableCreate1.hashCode(), posTableCreate2.hashCode());
        System.assertEquals(posTableCreate3.hashCode(), posTableCreate4.hashCode());
    }
}
