@isTest
private class OASGenerateCountRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASGenerateCountRequest generateCountRequest1 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest2 = generateCountRequest1;
        OASGenerateCountRequest generateCountRequest3 = new OASGenerateCountRequest();
        OASGenerateCountRequest generateCountRequest4 = generateCountRequest3;

        System.assert(generateCountRequest1.equals(generateCountRequest2));
        System.assert(generateCountRequest2.equals(generateCountRequest1));
        System.assert(generateCountRequest1.equals(generateCountRequest1));
        System.assert(generateCountRequest3.equals(generateCountRequest4));
        System.assert(generateCountRequest4.equals(generateCountRequest3));
        System.assert(generateCountRequest3.equals(generateCountRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGenerateCountRequest generateCountRequest1 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest2 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest3 = new OASGenerateCountRequest();
        OASGenerateCountRequest generateCountRequest4 = new OASGenerateCountRequest();

        System.assert(generateCountRequest1.equals(generateCountRequest2));
        System.assert(generateCountRequest2.equals(generateCountRequest1));
        System.assert(generateCountRequest3.equals(generateCountRequest4));
        System.assert(generateCountRequest4.equals(generateCountRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGenerateCountRequest generateCountRequest1 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest2 = new OASGenerateCountRequest();

        System.assertEquals(false, generateCountRequest1.equals('foo'));
        System.assertEquals(false, generateCountRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGenerateCountRequest generateCountRequest1 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest2 = new OASGenerateCountRequest();
        OASGenerateCountRequest generateCountRequest3;

        System.assertEquals(false, generateCountRequest1.equals(generateCountRequest3));
        System.assertEquals(false, generateCountRequest2.equals(generateCountRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGenerateCountRequest generateCountRequest1 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest2 = new OASGenerateCountRequest();

        System.assertEquals(generateCountRequest1.hashCode(), generateCountRequest1.hashCode());
        System.assertEquals(generateCountRequest2.hashCode(), generateCountRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGenerateCountRequest generateCountRequest1 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest2 = OASGenerateCountRequest.getExample();
        OASGenerateCountRequest generateCountRequest3 = new OASGenerateCountRequest();
        OASGenerateCountRequest generateCountRequest4 = new OASGenerateCountRequest();

        System.assert(generateCountRequest1.equals(generateCountRequest2));
        System.assert(generateCountRequest3.equals(generateCountRequest4));
        System.assertEquals(generateCountRequest1.hashCode(), generateCountRequest2.hashCode());
        System.assertEquals(generateCountRequest3.hashCode(), generateCountRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGenerateCountRequest generateCountRequest = new OASGenerateCountRequest();
        System.assertEquals(new List<String>(), generateCountRequest.productIds);
        System.assertEquals(null, generateCountRequest.notes);
        System.assertEquals(null, generateCountRequest.warehouseId);
    }
}
