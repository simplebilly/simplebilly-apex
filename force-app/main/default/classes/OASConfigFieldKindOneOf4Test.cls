@isTest
private class OASConfigFieldKindOneOf4Test {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldKindOneOf4 configFieldKindOneOf41 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf42 = configFieldKindOneOf41;
        OASConfigFieldKindOneOf4 configFieldKindOneOf43 = new OASConfigFieldKindOneOf4();
        OASConfigFieldKindOneOf4 configFieldKindOneOf44 = configFieldKindOneOf43;

        System.assert(configFieldKindOneOf41.equals(configFieldKindOneOf42));
        System.assert(configFieldKindOneOf42.equals(configFieldKindOneOf41));
        System.assert(configFieldKindOneOf41.equals(configFieldKindOneOf41));
        System.assert(configFieldKindOneOf43.equals(configFieldKindOneOf44));
        System.assert(configFieldKindOneOf44.equals(configFieldKindOneOf43));
        System.assert(configFieldKindOneOf43.equals(configFieldKindOneOf43));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldKindOneOf4 configFieldKindOneOf41 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf42 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf43 = new OASConfigFieldKindOneOf4();
        OASConfigFieldKindOneOf4 configFieldKindOneOf44 = new OASConfigFieldKindOneOf4();

        System.assert(configFieldKindOneOf41.equals(configFieldKindOneOf42));
        System.assert(configFieldKindOneOf42.equals(configFieldKindOneOf41));
        System.assert(configFieldKindOneOf43.equals(configFieldKindOneOf44));
        System.assert(configFieldKindOneOf44.equals(configFieldKindOneOf43));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldKindOneOf4 configFieldKindOneOf41 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf42 = new OASConfigFieldKindOneOf4();

        System.assertEquals(false, configFieldKindOneOf41.equals('foo'));
        System.assertEquals(false, configFieldKindOneOf42.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldKindOneOf4 configFieldKindOneOf41 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf42 = new OASConfigFieldKindOneOf4();
        OASConfigFieldKindOneOf4 configFieldKindOneOf43;

        System.assertEquals(false, configFieldKindOneOf41.equals(configFieldKindOneOf43));
        System.assertEquals(false, configFieldKindOneOf42.equals(configFieldKindOneOf43));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldKindOneOf4 configFieldKindOneOf41 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf42 = new OASConfigFieldKindOneOf4();

        System.assertEquals(configFieldKindOneOf41.hashCode(), configFieldKindOneOf41.hashCode());
        System.assertEquals(configFieldKindOneOf42.hashCode(), configFieldKindOneOf42.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldKindOneOf4 configFieldKindOneOf41 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf42 = OASConfigFieldKindOneOf4.getExample();
        OASConfigFieldKindOneOf4 configFieldKindOneOf43 = new OASConfigFieldKindOneOf4();
        OASConfigFieldKindOneOf4 configFieldKindOneOf44 = new OASConfigFieldKindOneOf4();

        System.assert(configFieldKindOneOf41.equals(configFieldKindOneOf42));
        System.assert(configFieldKindOneOf43.equals(configFieldKindOneOf44));
        System.assertEquals(configFieldKindOneOf41.hashCode(), configFieldKindOneOf42.hashCode());
        System.assertEquals(configFieldKindOneOf43.hashCode(), configFieldKindOneOf44.hashCode());
    }
}
