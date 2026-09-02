@isTest
private class OASGdprApiKeyTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprApiKey gdprApiKey1 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey2 = gdprApiKey1;
        OASGdprApiKey gdprApiKey3 = new OASGdprApiKey();
        OASGdprApiKey gdprApiKey4 = gdprApiKey3;

        System.assert(gdprApiKey1.equals(gdprApiKey2));
        System.assert(gdprApiKey2.equals(gdprApiKey1));
        System.assert(gdprApiKey1.equals(gdprApiKey1));
        System.assert(gdprApiKey3.equals(gdprApiKey4));
        System.assert(gdprApiKey4.equals(gdprApiKey3));
        System.assert(gdprApiKey3.equals(gdprApiKey3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprApiKey gdprApiKey1 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey2 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey3 = new OASGdprApiKey();
        OASGdprApiKey gdprApiKey4 = new OASGdprApiKey();

        System.assert(gdprApiKey1.equals(gdprApiKey2));
        System.assert(gdprApiKey2.equals(gdprApiKey1));
        System.assert(gdprApiKey3.equals(gdprApiKey4));
        System.assert(gdprApiKey4.equals(gdprApiKey3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprApiKey gdprApiKey1 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey2 = new OASGdprApiKey();

        System.assertEquals(false, gdprApiKey1.equals('foo'));
        System.assertEquals(false, gdprApiKey2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprApiKey gdprApiKey1 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey2 = new OASGdprApiKey();
        OASGdprApiKey gdprApiKey3;

        System.assertEquals(false, gdprApiKey1.equals(gdprApiKey3));
        System.assertEquals(false, gdprApiKey2.equals(gdprApiKey3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprApiKey gdprApiKey1 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey2 = new OASGdprApiKey();

        System.assertEquals(gdprApiKey1.hashCode(), gdprApiKey1.hashCode());
        System.assertEquals(gdprApiKey2.hashCode(), gdprApiKey2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprApiKey gdprApiKey1 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey2 = OASGdprApiKey.getExample();
        OASGdprApiKey gdprApiKey3 = new OASGdprApiKey();
        OASGdprApiKey gdprApiKey4 = new OASGdprApiKey();

        System.assert(gdprApiKey1.equals(gdprApiKey2));
        System.assert(gdprApiKey3.equals(gdprApiKey4));
        System.assertEquals(gdprApiKey1.hashCode(), gdprApiKey2.hashCode());
        System.assertEquals(gdprApiKey3.hashCode(), gdprApiKey4.hashCode());
    }
}
