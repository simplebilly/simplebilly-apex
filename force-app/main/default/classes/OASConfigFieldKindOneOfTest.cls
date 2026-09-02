@isTest
private class OASConfigFieldKindOneOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASConfigFieldKindOneOf configFieldKindOneOf1 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf2 = configFieldKindOneOf1;
        OASConfigFieldKindOneOf configFieldKindOneOf3 = new OASConfigFieldKindOneOf();
        OASConfigFieldKindOneOf configFieldKindOneOf4 = configFieldKindOneOf3;

        System.assert(configFieldKindOneOf1.equals(configFieldKindOneOf2));
        System.assert(configFieldKindOneOf2.equals(configFieldKindOneOf1));
        System.assert(configFieldKindOneOf1.equals(configFieldKindOneOf1));
        System.assert(configFieldKindOneOf3.equals(configFieldKindOneOf4));
        System.assert(configFieldKindOneOf4.equals(configFieldKindOneOf3));
        System.assert(configFieldKindOneOf3.equals(configFieldKindOneOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConfigFieldKindOneOf configFieldKindOneOf1 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf2 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf3 = new OASConfigFieldKindOneOf();
        OASConfigFieldKindOneOf configFieldKindOneOf4 = new OASConfigFieldKindOneOf();

        System.assert(configFieldKindOneOf1.equals(configFieldKindOneOf2));
        System.assert(configFieldKindOneOf2.equals(configFieldKindOneOf1));
        System.assert(configFieldKindOneOf3.equals(configFieldKindOneOf4));
        System.assert(configFieldKindOneOf4.equals(configFieldKindOneOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConfigFieldKindOneOf configFieldKindOneOf1 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf2 = new OASConfigFieldKindOneOf();

        System.assertEquals(false, configFieldKindOneOf1.equals('foo'));
        System.assertEquals(false, configFieldKindOneOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConfigFieldKindOneOf configFieldKindOneOf1 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf2 = new OASConfigFieldKindOneOf();
        OASConfigFieldKindOneOf configFieldKindOneOf3;

        System.assertEquals(false, configFieldKindOneOf1.equals(configFieldKindOneOf3));
        System.assertEquals(false, configFieldKindOneOf2.equals(configFieldKindOneOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConfigFieldKindOneOf configFieldKindOneOf1 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf2 = new OASConfigFieldKindOneOf();

        System.assertEquals(configFieldKindOneOf1.hashCode(), configFieldKindOneOf1.hashCode());
        System.assertEquals(configFieldKindOneOf2.hashCode(), configFieldKindOneOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConfigFieldKindOneOf configFieldKindOneOf1 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf2 = OASConfigFieldKindOneOf.getExample();
        OASConfigFieldKindOneOf configFieldKindOneOf3 = new OASConfigFieldKindOneOf();
        OASConfigFieldKindOneOf configFieldKindOneOf4 = new OASConfigFieldKindOneOf();

        System.assert(configFieldKindOneOf1.equals(configFieldKindOneOf2));
        System.assert(configFieldKindOneOf3.equals(configFieldKindOneOf4));
        System.assertEquals(configFieldKindOneOf1.hashCode(), configFieldKindOneOf2.hashCode());
        System.assertEquals(configFieldKindOneOf3.hashCode(), configFieldKindOneOf4.hashCode());
    }
}
