@isTest
private class OASPublicReturnStatusResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicReturnStatusResponse publicReturnStatusResponse1 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse2 = publicReturnStatusResponse1;
        OASPublicReturnStatusResponse publicReturnStatusResponse3 = new OASPublicReturnStatusResponse();
        OASPublicReturnStatusResponse publicReturnStatusResponse4 = publicReturnStatusResponse3;

        System.assert(publicReturnStatusResponse1.equals(publicReturnStatusResponse2));
        System.assert(publicReturnStatusResponse2.equals(publicReturnStatusResponse1));
        System.assert(publicReturnStatusResponse1.equals(publicReturnStatusResponse1));
        System.assert(publicReturnStatusResponse3.equals(publicReturnStatusResponse4));
        System.assert(publicReturnStatusResponse4.equals(publicReturnStatusResponse3));
        System.assert(publicReturnStatusResponse3.equals(publicReturnStatusResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicReturnStatusResponse publicReturnStatusResponse1 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse2 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse3 = new OASPublicReturnStatusResponse();
        OASPublicReturnStatusResponse publicReturnStatusResponse4 = new OASPublicReturnStatusResponse();

        System.assert(publicReturnStatusResponse1.equals(publicReturnStatusResponse2));
        System.assert(publicReturnStatusResponse2.equals(publicReturnStatusResponse1));
        System.assert(publicReturnStatusResponse3.equals(publicReturnStatusResponse4));
        System.assert(publicReturnStatusResponse4.equals(publicReturnStatusResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicReturnStatusResponse publicReturnStatusResponse1 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse2 = new OASPublicReturnStatusResponse();

        System.assertEquals(false, publicReturnStatusResponse1.equals('foo'));
        System.assertEquals(false, publicReturnStatusResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicReturnStatusResponse publicReturnStatusResponse1 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse2 = new OASPublicReturnStatusResponse();
        OASPublicReturnStatusResponse publicReturnStatusResponse3;

        System.assertEquals(false, publicReturnStatusResponse1.equals(publicReturnStatusResponse3));
        System.assertEquals(false, publicReturnStatusResponse2.equals(publicReturnStatusResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicReturnStatusResponse publicReturnStatusResponse1 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse2 = new OASPublicReturnStatusResponse();

        System.assertEquals(publicReturnStatusResponse1.hashCode(), publicReturnStatusResponse1.hashCode());
        System.assertEquals(publicReturnStatusResponse2.hashCode(), publicReturnStatusResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicReturnStatusResponse publicReturnStatusResponse1 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse2 = OASPublicReturnStatusResponse.getExample();
        OASPublicReturnStatusResponse publicReturnStatusResponse3 = new OASPublicReturnStatusResponse();
        OASPublicReturnStatusResponse publicReturnStatusResponse4 = new OASPublicReturnStatusResponse();

        System.assert(publicReturnStatusResponse1.equals(publicReturnStatusResponse2));
        System.assert(publicReturnStatusResponse3.equals(publicReturnStatusResponse4));
        System.assertEquals(publicReturnStatusResponse1.hashCode(), publicReturnStatusResponse2.hashCode());
        System.assertEquals(publicReturnStatusResponse3.hashCode(), publicReturnStatusResponse4.hashCode());
    }
}
