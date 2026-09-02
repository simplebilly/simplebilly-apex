@isTest
private class OASPosRegisterCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPosRegisterCreate posRegisterCreate1 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate2 = posRegisterCreate1;
        OASPosRegisterCreate posRegisterCreate3 = new OASPosRegisterCreate();
        OASPosRegisterCreate posRegisterCreate4 = posRegisterCreate3;

        System.assert(posRegisterCreate1.equals(posRegisterCreate2));
        System.assert(posRegisterCreate2.equals(posRegisterCreate1));
        System.assert(posRegisterCreate1.equals(posRegisterCreate1));
        System.assert(posRegisterCreate3.equals(posRegisterCreate4));
        System.assert(posRegisterCreate4.equals(posRegisterCreate3));
        System.assert(posRegisterCreate3.equals(posRegisterCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPosRegisterCreate posRegisterCreate1 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate2 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate3 = new OASPosRegisterCreate();
        OASPosRegisterCreate posRegisterCreate4 = new OASPosRegisterCreate();

        System.assert(posRegisterCreate1.equals(posRegisterCreate2));
        System.assert(posRegisterCreate2.equals(posRegisterCreate1));
        System.assert(posRegisterCreate3.equals(posRegisterCreate4));
        System.assert(posRegisterCreate4.equals(posRegisterCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPosRegisterCreate posRegisterCreate1 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate2 = new OASPosRegisterCreate();

        System.assertEquals(false, posRegisterCreate1.equals('foo'));
        System.assertEquals(false, posRegisterCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPosRegisterCreate posRegisterCreate1 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate2 = new OASPosRegisterCreate();
        OASPosRegisterCreate posRegisterCreate3;

        System.assertEquals(false, posRegisterCreate1.equals(posRegisterCreate3));
        System.assertEquals(false, posRegisterCreate2.equals(posRegisterCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPosRegisterCreate posRegisterCreate1 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate2 = new OASPosRegisterCreate();

        System.assertEquals(posRegisterCreate1.hashCode(), posRegisterCreate1.hashCode());
        System.assertEquals(posRegisterCreate2.hashCode(), posRegisterCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPosRegisterCreate posRegisterCreate1 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate2 = OASPosRegisterCreate.getExample();
        OASPosRegisterCreate posRegisterCreate3 = new OASPosRegisterCreate();
        OASPosRegisterCreate posRegisterCreate4 = new OASPosRegisterCreate();

        System.assert(posRegisterCreate1.equals(posRegisterCreate2));
        System.assert(posRegisterCreate3.equals(posRegisterCreate4));
        System.assertEquals(posRegisterCreate1.hashCode(), posRegisterCreate2.hashCode());
        System.assertEquals(posRegisterCreate3.hashCode(), posRegisterCreate4.hashCode());
    }
}
