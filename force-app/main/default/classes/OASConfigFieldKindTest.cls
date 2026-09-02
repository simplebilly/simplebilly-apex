@isTest
private class OASConfigFieldKindTest {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldKind configFieldKind1 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind2 = configFieldKind1;
        OASConfigFieldKind configFieldKind3 = new OASConfigFieldKind();
        OASConfigFieldKind configFieldKind4 = configFieldKind3;

        System.assert(configFieldKind1.equals(configFieldKind2));
        System.assert(configFieldKind2.equals(configFieldKind1));
        System.assert(configFieldKind1.equals(configFieldKind1));
        System.assert(configFieldKind3.equals(configFieldKind4));
        System.assert(configFieldKind4.equals(configFieldKind3));
        System.assert(configFieldKind3.equals(configFieldKind3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldKind configFieldKind1 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind2 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind3 = new OASConfigFieldKind();
        OASConfigFieldKind configFieldKind4 = new OASConfigFieldKind();

        System.assert(configFieldKind1.equals(configFieldKind2));
        System.assert(configFieldKind2.equals(configFieldKind1));
        System.assert(configFieldKind3.equals(configFieldKind4));
        System.assert(configFieldKind4.equals(configFieldKind3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldKind configFieldKind1 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind2 = new OASConfigFieldKind();

        System.assertEquals(false, configFieldKind1.equals('foo'));
        System.assertEquals(false, configFieldKind2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldKind configFieldKind1 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind2 = new OASConfigFieldKind();
        OASConfigFieldKind configFieldKind3;

        System.assertEquals(false, configFieldKind1.equals(configFieldKind3));
        System.assertEquals(false, configFieldKind2.equals(configFieldKind3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldKind configFieldKind1 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind2 = new OASConfigFieldKind();

        System.assertEquals(configFieldKind1.hashCode(), configFieldKind1.hashCode());
        System.assertEquals(configFieldKind2.hashCode(), configFieldKind2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldKind configFieldKind1 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind2 = OASConfigFieldKind.getExample();
        OASConfigFieldKind configFieldKind3 = new OASConfigFieldKind();
        OASConfigFieldKind configFieldKind4 = new OASConfigFieldKind();

        System.assert(configFieldKind1.equals(configFieldKind2));
        System.assert(configFieldKind3.equals(configFieldKind4));
        System.assertEquals(configFieldKind1.hashCode(), configFieldKind2.hashCode());
        System.assertEquals(configFieldKind3.hashCode(), configFieldKind4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASConfigFieldKind configFieldKind = new OASConfigFieldKind();
        System.assertEquals(new List<String>(), configFieldKind.options);
        System.assertEquals(null, configFieldKind.type);
    }
}
