@isTest
private class OASConfigFieldKindOneOf2Test {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldKindOneOf2 configFieldKindOneOf21 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf22 = configFieldKindOneOf21;
        OASConfigFieldKindOneOf2 configFieldKindOneOf23 = new OASConfigFieldKindOneOf2();
        OASConfigFieldKindOneOf2 configFieldKindOneOf24 = configFieldKindOneOf23;

        System.assert(configFieldKindOneOf21.equals(configFieldKindOneOf22));
        System.assert(configFieldKindOneOf22.equals(configFieldKindOneOf21));
        System.assert(configFieldKindOneOf21.equals(configFieldKindOneOf21));
        System.assert(configFieldKindOneOf23.equals(configFieldKindOneOf24));
        System.assert(configFieldKindOneOf24.equals(configFieldKindOneOf23));
        System.assert(configFieldKindOneOf23.equals(configFieldKindOneOf23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldKindOneOf2 configFieldKindOneOf21 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf22 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf23 = new OASConfigFieldKindOneOf2();
        OASConfigFieldKindOneOf2 configFieldKindOneOf24 = new OASConfigFieldKindOneOf2();

        System.assert(configFieldKindOneOf21.equals(configFieldKindOneOf22));
        System.assert(configFieldKindOneOf22.equals(configFieldKindOneOf21));
        System.assert(configFieldKindOneOf23.equals(configFieldKindOneOf24));
        System.assert(configFieldKindOneOf24.equals(configFieldKindOneOf23));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldKindOneOf2 configFieldKindOneOf21 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf22 = new OASConfigFieldKindOneOf2();

        System.assertEquals(false, configFieldKindOneOf21.equals('foo'));
        System.assertEquals(false, configFieldKindOneOf22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldKindOneOf2 configFieldKindOneOf21 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf22 = new OASConfigFieldKindOneOf2();
        OASConfigFieldKindOneOf2 configFieldKindOneOf23;

        System.assertEquals(false, configFieldKindOneOf21.equals(configFieldKindOneOf23));
        System.assertEquals(false, configFieldKindOneOf22.equals(configFieldKindOneOf23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldKindOneOf2 configFieldKindOneOf21 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf22 = new OASConfigFieldKindOneOf2();

        System.assertEquals(configFieldKindOneOf21.hashCode(), configFieldKindOneOf21.hashCode());
        System.assertEquals(configFieldKindOneOf22.hashCode(), configFieldKindOneOf22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldKindOneOf2 configFieldKindOneOf21 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf22 = OASConfigFieldKindOneOf2.getExample();
        OASConfigFieldKindOneOf2 configFieldKindOneOf23 = new OASConfigFieldKindOneOf2();
        OASConfigFieldKindOneOf2 configFieldKindOneOf24 = new OASConfigFieldKindOneOf2();

        System.assert(configFieldKindOneOf21.equals(configFieldKindOneOf22));
        System.assert(configFieldKindOneOf23.equals(configFieldKindOneOf24));
        System.assertEquals(configFieldKindOneOf21.hashCode(), configFieldKindOneOf22.hashCode());
        System.assertEquals(configFieldKindOneOf23.hashCode(), configFieldKindOneOf24.hashCode());
    }
}
