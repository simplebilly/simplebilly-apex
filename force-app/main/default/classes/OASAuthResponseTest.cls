@isTest
private class OASAuthResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASAuthResponse authResponse1 = OASAuthResponse.getExample();
        OASAuthResponse authResponse2 = authResponse1;
        OASAuthResponse authResponse3 = new OASAuthResponse();
        OASAuthResponse authResponse4 = authResponse3;

        System.assert(authResponse1.equals(authResponse2));
        System.assert(authResponse2.equals(authResponse1));
        System.assert(authResponse1.equals(authResponse1));
        System.assert(authResponse3.equals(authResponse4));
        System.assert(authResponse4.equals(authResponse3));
        System.assert(authResponse3.equals(authResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAuthResponse authResponse1 = OASAuthResponse.getExample();
        OASAuthResponse authResponse2 = OASAuthResponse.getExample();
        OASAuthResponse authResponse3 = new OASAuthResponse();
        OASAuthResponse authResponse4 = new OASAuthResponse();

        System.assert(authResponse1.equals(authResponse2));
        System.assert(authResponse2.equals(authResponse1));
        System.assert(authResponse3.equals(authResponse4));
        System.assert(authResponse4.equals(authResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAuthResponse authResponse1 = OASAuthResponse.getExample();
        OASAuthResponse authResponse2 = new OASAuthResponse();

        System.assertEquals(false, authResponse1.equals('foo'));
        System.assertEquals(false, authResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAuthResponse authResponse1 = OASAuthResponse.getExample();
        OASAuthResponse authResponse2 = new OASAuthResponse();
        OASAuthResponse authResponse3;

        System.assertEquals(false, authResponse1.equals(authResponse3));
        System.assertEquals(false, authResponse2.equals(authResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAuthResponse authResponse1 = OASAuthResponse.getExample();
        OASAuthResponse authResponse2 = new OASAuthResponse();

        System.assertEquals(authResponse1.hashCode(), authResponse1.hashCode());
        System.assertEquals(authResponse2.hashCode(), authResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAuthResponse authResponse1 = OASAuthResponse.getExample();
        OASAuthResponse authResponse2 = OASAuthResponse.getExample();
        OASAuthResponse authResponse3 = new OASAuthResponse();
        OASAuthResponse authResponse4 = new OASAuthResponse();

        System.assert(authResponse1.equals(authResponse2));
        System.assert(authResponse3.equals(authResponse4));
        System.assertEquals(authResponse1.hashCode(), authResponse2.hashCode());
        System.assertEquals(authResponse3.hashCode(), authResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAuthResponse authResponse = new OASAuthResponse();
        Map<String, String> x-property-mappings = authResponse.getx-property-mappings();
        System.assertEquals('accessToken', x-property-mappings.get('access_token'));
        System.assertEquals('refreshToken', x-property-mappings.get('refresh_token'));
    }
}
