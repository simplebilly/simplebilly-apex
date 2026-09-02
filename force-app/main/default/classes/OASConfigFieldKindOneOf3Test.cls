@isTest
private class OASConfigFieldKindOneOf3Test {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf31 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf32 = configFieldKindOneOf31;
        OASConfigFieldKindOneOf3 configFieldKindOneOf33 = new OASConfigFieldKindOneOf3();
        OASConfigFieldKindOneOf3 configFieldKindOneOf34 = configFieldKindOneOf33;

        System.assert(configFieldKindOneOf31.equals(configFieldKindOneOf32));
        System.assert(configFieldKindOneOf32.equals(configFieldKindOneOf31));
        System.assert(configFieldKindOneOf31.equals(configFieldKindOneOf31));
        System.assert(configFieldKindOneOf33.equals(configFieldKindOneOf34));
        System.assert(configFieldKindOneOf34.equals(configFieldKindOneOf33));
        System.assert(configFieldKindOneOf33.equals(configFieldKindOneOf33));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf31 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf32 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf33 = new OASConfigFieldKindOneOf3();
        OASConfigFieldKindOneOf3 configFieldKindOneOf34 = new OASConfigFieldKindOneOf3();

        System.assert(configFieldKindOneOf31.equals(configFieldKindOneOf32));
        System.assert(configFieldKindOneOf32.equals(configFieldKindOneOf31));
        System.assert(configFieldKindOneOf33.equals(configFieldKindOneOf34));
        System.assert(configFieldKindOneOf34.equals(configFieldKindOneOf33));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf31 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf32 = new OASConfigFieldKindOneOf3();

        System.assertEquals(false, configFieldKindOneOf31.equals('foo'));
        System.assertEquals(false, configFieldKindOneOf32.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf31 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf32 = new OASConfigFieldKindOneOf3();
        OASConfigFieldKindOneOf3 configFieldKindOneOf33;

        System.assertEquals(false, configFieldKindOneOf31.equals(configFieldKindOneOf33));
        System.assertEquals(false, configFieldKindOneOf32.equals(configFieldKindOneOf33));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf31 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf32 = new OASConfigFieldKindOneOf3();

        System.assertEquals(configFieldKindOneOf31.hashCode(), configFieldKindOneOf31.hashCode());
        System.assertEquals(configFieldKindOneOf32.hashCode(), configFieldKindOneOf32.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf31 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf32 = OASConfigFieldKindOneOf3.getExample();
        OASConfigFieldKindOneOf3 configFieldKindOneOf33 = new OASConfigFieldKindOneOf3();
        OASConfigFieldKindOneOf3 configFieldKindOneOf34 = new OASConfigFieldKindOneOf3();

        System.assert(configFieldKindOneOf31.equals(configFieldKindOneOf32));
        System.assert(configFieldKindOneOf33.equals(configFieldKindOneOf34));
        System.assertEquals(configFieldKindOneOf31.hashCode(), configFieldKindOneOf32.hashCode());
        System.assertEquals(configFieldKindOneOf33.hashCode(), configFieldKindOneOf34.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASConfigFieldKindOneOf3 configFieldKindOneOf3 = new OASConfigFieldKindOneOf3();
        System.assertEquals(new List<String>(), configFieldKindOneOf3.options);
        System.assertEquals(null, configFieldKindOneOf3.type);
    }
}
