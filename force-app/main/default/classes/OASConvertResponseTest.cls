@isTest
private class OASConvertResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASConvertResponse convertResponse1 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse2 = convertResponse1;
        OASConvertResponse convertResponse3 = new OASConvertResponse();
        OASConvertResponse convertResponse4 = convertResponse3;

        System.assert(convertResponse1.equals(convertResponse2));
        System.assert(convertResponse2.equals(convertResponse1));
        System.assert(convertResponse1.equals(convertResponse1));
        System.assert(convertResponse3.equals(convertResponse4));
        System.assert(convertResponse4.equals(convertResponse3));
        System.assert(convertResponse3.equals(convertResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConvertResponse convertResponse1 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse2 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse3 = new OASConvertResponse();
        OASConvertResponse convertResponse4 = new OASConvertResponse();

        System.assert(convertResponse1.equals(convertResponse2));
        System.assert(convertResponse2.equals(convertResponse1));
        System.assert(convertResponse3.equals(convertResponse4));
        System.assert(convertResponse4.equals(convertResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConvertResponse convertResponse1 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse2 = new OASConvertResponse();

        System.assertEquals(false, convertResponse1.equals('foo'));
        System.assertEquals(false, convertResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConvertResponse convertResponse1 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse2 = new OASConvertResponse();
        OASConvertResponse convertResponse3;

        System.assertEquals(false, convertResponse1.equals(convertResponse3));
        System.assertEquals(false, convertResponse2.equals(convertResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConvertResponse convertResponse1 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse2 = new OASConvertResponse();

        System.assertEquals(convertResponse1.hashCode(), convertResponse1.hashCode());
        System.assertEquals(convertResponse2.hashCode(), convertResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConvertResponse convertResponse1 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse2 = OASConvertResponse.getExample();
        OASConvertResponse convertResponse3 = new OASConvertResponse();
        OASConvertResponse convertResponse4 = new OASConvertResponse();

        System.assert(convertResponse1.equals(convertResponse2));
        System.assert(convertResponse3.equals(convertResponse4));
        System.assertEquals(convertResponse1.hashCode(), convertResponse2.hashCode());
        System.assertEquals(convertResponse3.hashCode(), convertResponse4.hashCode());
    }
}
