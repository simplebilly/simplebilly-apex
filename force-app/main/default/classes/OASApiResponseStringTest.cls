@isTest
private class OASApiResponseStringTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseString apiResponseString1 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString2 = apiResponseString1;
        OASApiResponseString apiResponseString3 = new OASApiResponseString();
        OASApiResponseString apiResponseString4 = apiResponseString3;

        System.assert(apiResponseString1.equals(apiResponseString2));
        System.assert(apiResponseString2.equals(apiResponseString1));
        System.assert(apiResponseString1.equals(apiResponseString1));
        System.assert(apiResponseString3.equals(apiResponseString4));
        System.assert(apiResponseString4.equals(apiResponseString3));
        System.assert(apiResponseString3.equals(apiResponseString3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseString apiResponseString1 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString2 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString3 = new OASApiResponseString();
        OASApiResponseString apiResponseString4 = new OASApiResponseString();

        System.assert(apiResponseString1.equals(apiResponseString2));
        System.assert(apiResponseString2.equals(apiResponseString1));
        System.assert(apiResponseString3.equals(apiResponseString4));
        System.assert(apiResponseString4.equals(apiResponseString3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseString apiResponseString1 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString2 = new OASApiResponseString();

        System.assertEquals(false, apiResponseString1.equals('foo'));
        System.assertEquals(false, apiResponseString2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseString apiResponseString1 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString2 = new OASApiResponseString();
        OASApiResponseString apiResponseString3;

        System.assertEquals(false, apiResponseString1.equals(apiResponseString3));
        System.assertEquals(false, apiResponseString2.equals(apiResponseString3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseString apiResponseString1 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString2 = new OASApiResponseString();

        System.assertEquals(apiResponseString1.hashCode(), apiResponseString1.hashCode());
        System.assertEquals(apiResponseString2.hashCode(), apiResponseString2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseString apiResponseString1 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString2 = OASApiResponseString.getExample();
        OASApiResponseString apiResponseString3 = new OASApiResponseString();
        OASApiResponseString apiResponseString4 = new OASApiResponseString();

        System.assert(apiResponseString1.equals(apiResponseString2));
        System.assert(apiResponseString3.equals(apiResponseString4));
        System.assertEquals(apiResponseString1.hashCode(), apiResponseString2.hashCode());
        System.assertEquals(apiResponseString3.hashCode(), apiResponseString4.hashCode());
    }
}
