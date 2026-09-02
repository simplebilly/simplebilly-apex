@isTest
private class OASPosRegisterTest {
    @isTest
    private static void equalsSameInstance() {
        OASPosRegister posRegister1 = OASPosRegister.getExample();
        OASPosRegister posRegister2 = posRegister1;
        OASPosRegister posRegister3 = new OASPosRegister();
        OASPosRegister posRegister4 = posRegister3;

        System.assert(posRegister1.equals(posRegister2));
        System.assert(posRegister2.equals(posRegister1));
        System.assert(posRegister1.equals(posRegister1));
        System.assert(posRegister3.equals(posRegister4));
        System.assert(posRegister4.equals(posRegister3));
        System.assert(posRegister3.equals(posRegister3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPosRegister posRegister1 = OASPosRegister.getExample();
        OASPosRegister posRegister2 = OASPosRegister.getExample();
        OASPosRegister posRegister3 = new OASPosRegister();
        OASPosRegister posRegister4 = new OASPosRegister();

        System.assert(posRegister1.equals(posRegister2));
        System.assert(posRegister2.equals(posRegister1));
        System.assert(posRegister3.equals(posRegister4));
        System.assert(posRegister4.equals(posRegister3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPosRegister posRegister1 = OASPosRegister.getExample();
        OASPosRegister posRegister2 = new OASPosRegister();

        System.assertEquals(false, posRegister1.equals('foo'));
        System.assertEquals(false, posRegister2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPosRegister posRegister1 = OASPosRegister.getExample();
        OASPosRegister posRegister2 = new OASPosRegister();
        OASPosRegister posRegister3;

        System.assertEquals(false, posRegister1.equals(posRegister3));
        System.assertEquals(false, posRegister2.equals(posRegister3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPosRegister posRegister1 = OASPosRegister.getExample();
        OASPosRegister posRegister2 = new OASPosRegister();

        System.assertEquals(posRegister1.hashCode(), posRegister1.hashCode());
        System.assertEquals(posRegister2.hashCode(), posRegister2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPosRegister posRegister1 = OASPosRegister.getExample();
        OASPosRegister posRegister2 = OASPosRegister.getExample();
        OASPosRegister posRegister3 = new OASPosRegister();
        OASPosRegister posRegister4 = new OASPosRegister();

        System.assert(posRegister1.equals(posRegister2));
        System.assert(posRegister3.equals(posRegister4));
        System.assertEquals(posRegister1.hashCode(), posRegister2.hashCode());
        System.assertEquals(posRegister3.hashCode(), posRegister4.hashCode());
    }
}
