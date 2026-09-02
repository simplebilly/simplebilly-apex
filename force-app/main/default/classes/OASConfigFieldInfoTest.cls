@isTest
private class OASConfigFieldInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldInfo configFieldInfo1 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo2 = configFieldInfo1;
        OASConfigFieldInfo configFieldInfo3 = new OASConfigFieldInfo();
        OASConfigFieldInfo configFieldInfo4 = configFieldInfo3;

        System.assert(configFieldInfo1.equals(configFieldInfo2));
        System.assert(configFieldInfo2.equals(configFieldInfo1));
        System.assert(configFieldInfo1.equals(configFieldInfo1));
        System.assert(configFieldInfo3.equals(configFieldInfo4));
        System.assert(configFieldInfo4.equals(configFieldInfo3));
        System.assert(configFieldInfo3.equals(configFieldInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldInfo configFieldInfo1 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo2 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo3 = new OASConfigFieldInfo();
        OASConfigFieldInfo configFieldInfo4 = new OASConfigFieldInfo();

        System.assert(configFieldInfo1.equals(configFieldInfo2));
        System.assert(configFieldInfo2.equals(configFieldInfo1));
        System.assert(configFieldInfo3.equals(configFieldInfo4));
        System.assert(configFieldInfo4.equals(configFieldInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldInfo configFieldInfo1 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo2 = new OASConfigFieldInfo();

        System.assertEquals(false, configFieldInfo1.equals('foo'));
        System.assertEquals(false, configFieldInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldInfo configFieldInfo1 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo2 = new OASConfigFieldInfo();
        OASConfigFieldInfo configFieldInfo3;

        System.assertEquals(false, configFieldInfo1.equals(configFieldInfo3));
        System.assertEquals(false, configFieldInfo2.equals(configFieldInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldInfo configFieldInfo1 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo2 = new OASConfigFieldInfo();

        System.assertEquals(configFieldInfo1.hashCode(), configFieldInfo1.hashCode());
        System.assertEquals(configFieldInfo2.hashCode(), configFieldInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldInfo configFieldInfo1 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo2 = OASConfigFieldInfo.getExample();
        OASConfigFieldInfo configFieldInfo3 = new OASConfigFieldInfo();
        OASConfigFieldInfo configFieldInfo4 = new OASConfigFieldInfo();

        System.assert(configFieldInfo1.equals(configFieldInfo2));
        System.assert(configFieldInfo3.equals(configFieldInfo4));
        System.assertEquals(configFieldInfo1.hashCode(), configFieldInfo2.hashCode());
        System.assertEquals(configFieldInfo3.hashCode(), configFieldInfo4.hashCode());
    }
}
