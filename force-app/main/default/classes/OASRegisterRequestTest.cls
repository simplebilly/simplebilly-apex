@isTest
private class OASRegisterRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASRegisterRequest registerRequest1 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest2 = registerRequest1;
        OASRegisterRequest registerRequest3 = new OASRegisterRequest();
        OASRegisterRequest registerRequest4 = registerRequest3;

        System.assert(registerRequest1.equals(registerRequest2));
        System.assert(registerRequest2.equals(registerRequest1));
        System.assert(registerRequest1.equals(registerRequest1));
        System.assert(registerRequest3.equals(registerRequest4));
        System.assert(registerRequest4.equals(registerRequest3));
        System.assert(registerRequest3.equals(registerRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRegisterRequest registerRequest1 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest2 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest3 = new OASRegisterRequest();
        OASRegisterRequest registerRequest4 = new OASRegisterRequest();

        System.assert(registerRequest1.equals(registerRequest2));
        System.assert(registerRequest2.equals(registerRequest1));
        System.assert(registerRequest3.equals(registerRequest4));
        System.assert(registerRequest4.equals(registerRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRegisterRequest registerRequest1 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest2 = new OASRegisterRequest();

        System.assertEquals(false, registerRequest1.equals('foo'));
        System.assertEquals(false, registerRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRegisterRequest registerRequest1 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest2 = new OASRegisterRequest();
        OASRegisterRequest registerRequest3;

        System.assertEquals(false, registerRequest1.equals(registerRequest3));
        System.assertEquals(false, registerRequest2.equals(registerRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRegisterRequest registerRequest1 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest2 = new OASRegisterRequest();

        System.assertEquals(registerRequest1.hashCode(), registerRequest1.hashCode());
        System.assertEquals(registerRequest2.hashCode(), registerRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRegisterRequest registerRequest1 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest2 = OASRegisterRequest.getExample();
        OASRegisterRequest registerRequest3 = new OASRegisterRequest();
        OASRegisterRequest registerRequest4 = new OASRegisterRequest();

        System.assert(registerRequest1.equals(registerRequest2));
        System.assert(registerRequest3.equals(registerRequest4));
        System.assertEquals(registerRequest1.hashCode(), registerRequest2.hashCode());
        System.assertEquals(registerRequest3.hashCode(), registerRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRegisterRequest registerRequest = new OASRegisterRequest();
        Map<String, String> x-property-mappings = registerRequest.getx-property-mappings();
        System.assertEquals('companyName', x-property-mappings.get('company_name'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
        System.assertEquals('privacyAccepted', x-property-mappings.get('privacy_accepted'));
    }
}
