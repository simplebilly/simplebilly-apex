@isTest
private class OASPublicReturnResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicReturnResponse publicReturnResponse1 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse2 = publicReturnResponse1;
        OASPublicReturnResponse publicReturnResponse3 = new OASPublicReturnResponse();
        OASPublicReturnResponse publicReturnResponse4 = publicReturnResponse3;

        System.assert(publicReturnResponse1.equals(publicReturnResponse2));
        System.assert(publicReturnResponse2.equals(publicReturnResponse1));
        System.assert(publicReturnResponse1.equals(publicReturnResponse1));
        System.assert(publicReturnResponse3.equals(publicReturnResponse4));
        System.assert(publicReturnResponse4.equals(publicReturnResponse3));
        System.assert(publicReturnResponse3.equals(publicReturnResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicReturnResponse publicReturnResponse1 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse2 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse3 = new OASPublicReturnResponse();
        OASPublicReturnResponse publicReturnResponse4 = new OASPublicReturnResponse();

        System.assert(publicReturnResponse1.equals(publicReturnResponse2));
        System.assert(publicReturnResponse2.equals(publicReturnResponse1));
        System.assert(publicReturnResponse3.equals(publicReturnResponse4));
        System.assert(publicReturnResponse4.equals(publicReturnResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicReturnResponse publicReturnResponse1 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse2 = new OASPublicReturnResponse();

        System.assertEquals(false, publicReturnResponse1.equals('foo'));
        System.assertEquals(false, publicReturnResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicReturnResponse publicReturnResponse1 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse2 = new OASPublicReturnResponse();
        OASPublicReturnResponse publicReturnResponse3;

        System.assertEquals(false, publicReturnResponse1.equals(publicReturnResponse3));
        System.assertEquals(false, publicReturnResponse2.equals(publicReturnResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicReturnResponse publicReturnResponse1 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse2 = new OASPublicReturnResponse();

        System.assertEquals(publicReturnResponse1.hashCode(), publicReturnResponse1.hashCode());
        System.assertEquals(publicReturnResponse2.hashCode(), publicReturnResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicReturnResponse publicReturnResponse1 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse2 = OASPublicReturnResponse.getExample();
        OASPublicReturnResponse publicReturnResponse3 = new OASPublicReturnResponse();
        OASPublicReturnResponse publicReturnResponse4 = new OASPublicReturnResponse();

        System.assert(publicReturnResponse1.equals(publicReturnResponse2));
        System.assert(publicReturnResponse3.equals(publicReturnResponse4));
        System.assertEquals(publicReturnResponse1.hashCode(), publicReturnResponse2.hashCode());
        System.assertEquals(publicReturnResponse3.hashCode(), publicReturnResponse4.hashCode());
    }
}
