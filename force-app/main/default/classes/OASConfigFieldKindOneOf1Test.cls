@isTest
private class OASConfigFieldKindOneOf1Test {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldKindOneOf1 configFieldKindOneOf11 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf12 = configFieldKindOneOf11;
        OASConfigFieldKindOneOf1 configFieldKindOneOf13 = new OASConfigFieldKindOneOf1();
        OASConfigFieldKindOneOf1 configFieldKindOneOf14 = configFieldKindOneOf13;

        System.assert(configFieldKindOneOf11.equals(configFieldKindOneOf12));
        System.assert(configFieldKindOneOf12.equals(configFieldKindOneOf11));
        System.assert(configFieldKindOneOf11.equals(configFieldKindOneOf11));
        System.assert(configFieldKindOneOf13.equals(configFieldKindOneOf14));
        System.assert(configFieldKindOneOf14.equals(configFieldKindOneOf13));
        System.assert(configFieldKindOneOf13.equals(configFieldKindOneOf13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldKindOneOf1 configFieldKindOneOf11 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf12 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf13 = new OASConfigFieldKindOneOf1();
        OASConfigFieldKindOneOf1 configFieldKindOneOf14 = new OASConfigFieldKindOneOf1();

        System.assert(configFieldKindOneOf11.equals(configFieldKindOneOf12));
        System.assert(configFieldKindOneOf12.equals(configFieldKindOneOf11));
        System.assert(configFieldKindOneOf13.equals(configFieldKindOneOf14));
        System.assert(configFieldKindOneOf14.equals(configFieldKindOneOf13));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldKindOneOf1 configFieldKindOneOf11 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf12 = new OASConfigFieldKindOneOf1();

        System.assertEquals(false, configFieldKindOneOf11.equals('foo'));
        System.assertEquals(false, configFieldKindOneOf12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldKindOneOf1 configFieldKindOneOf11 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf12 = new OASConfigFieldKindOneOf1();
        OASConfigFieldKindOneOf1 configFieldKindOneOf13;

        System.assertEquals(false, configFieldKindOneOf11.equals(configFieldKindOneOf13));
        System.assertEquals(false, configFieldKindOneOf12.equals(configFieldKindOneOf13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldKindOneOf1 configFieldKindOneOf11 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf12 = new OASConfigFieldKindOneOf1();

        System.assertEquals(configFieldKindOneOf11.hashCode(), configFieldKindOneOf11.hashCode());
        System.assertEquals(configFieldKindOneOf12.hashCode(), configFieldKindOneOf12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldKindOneOf1 configFieldKindOneOf11 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf12 = OASConfigFieldKindOneOf1.getExample();
        OASConfigFieldKindOneOf1 configFieldKindOneOf13 = new OASConfigFieldKindOneOf1();
        OASConfigFieldKindOneOf1 configFieldKindOneOf14 = new OASConfigFieldKindOneOf1();

        System.assert(configFieldKindOneOf11.equals(configFieldKindOneOf12));
        System.assert(configFieldKindOneOf13.equals(configFieldKindOneOf14));
        System.assertEquals(configFieldKindOneOf11.hashCode(), configFieldKindOneOf12.hashCode());
        System.assertEquals(configFieldKindOneOf13.hashCode(), configFieldKindOneOf14.hashCode());
    }
}
