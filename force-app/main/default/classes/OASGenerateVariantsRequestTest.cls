@isTest
private class OASGenerateVariantsRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASGenerateVariantsRequest generateVariantsRequest1 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest2 = generateVariantsRequest1;
        OASGenerateVariantsRequest generateVariantsRequest3 = new OASGenerateVariantsRequest();
        OASGenerateVariantsRequest generateVariantsRequest4 = generateVariantsRequest3;

        System.assert(generateVariantsRequest1.equals(generateVariantsRequest2));
        System.assert(generateVariantsRequest2.equals(generateVariantsRequest1));
        System.assert(generateVariantsRequest1.equals(generateVariantsRequest1));
        System.assert(generateVariantsRequest3.equals(generateVariantsRequest4));
        System.assert(generateVariantsRequest4.equals(generateVariantsRequest3));
        System.assert(generateVariantsRequest3.equals(generateVariantsRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGenerateVariantsRequest generateVariantsRequest1 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest2 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest3 = new OASGenerateVariantsRequest();
        OASGenerateVariantsRequest generateVariantsRequest4 = new OASGenerateVariantsRequest();

        System.assert(generateVariantsRequest1.equals(generateVariantsRequest2));
        System.assert(generateVariantsRequest2.equals(generateVariantsRequest1));
        System.assert(generateVariantsRequest3.equals(generateVariantsRequest4));
        System.assert(generateVariantsRequest4.equals(generateVariantsRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGenerateVariantsRequest generateVariantsRequest1 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest2 = new OASGenerateVariantsRequest();

        System.assertEquals(false, generateVariantsRequest1.equals('foo'));
        System.assertEquals(false, generateVariantsRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGenerateVariantsRequest generateVariantsRequest1 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest2 = new OASGenerateVariantsRequest();
        OASGenerateVariantsRequest generateVariantsRequest3;

        System.assertEquals(false, generateVariantsRequest1.equals(generateVariantsRequest3));
        System.assertEquals(false, generateVariantsRequest2.equals(generateVariantsRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGenerateVariantsRequest generateVariantsRequest1 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest2 = new OASGenerateVariantsRequest();

        System.assertEquals(generateVariantsRequest1.hashCode(), generateVariantsRequest1.hashCode());
        System.assertEquals(generateVariantsRequest2.hashCode(), generateVariantsRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGenerateVariantsRequest generateVariantsRequest1 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest2 = OASGenerateVariantsRequest.getExample();
        OASGenerateVariantsRequest generateVariantsRequest3 = new OASGenerateVariantsRequest();
        OASGenerateVariantsRequest generateVariantsRequest4 = new OASGenerateVariantsRequest();

        System.assert(generateVariantsRequest1.equals(generateVariantsRequest2));
        System.assert(generateVariantsRequest3.equals(generateVariantsRequest4));
        System.assertEquals(generateVariantsRequest1.hashCode(), generateVariantsRequest2.hashCode());
        System.assertEquals(generateVariantsRequest3.hashCode(), generateVariantsRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGenerateVariantsRequest generateVariantsRequest = new OASGenerateVariantsRequest();
        System.assertEquals(new Map<String, List<String>>(), generateVariantsRequest.options);
        System.assertEquals(null, generateVariantsRequest.priceDelta);
        System.assertEquals(null, generateVariantsRequest.productId);
        System.assertEquals(null, generateVariantsRequest.skuPrefix);
    }
}
