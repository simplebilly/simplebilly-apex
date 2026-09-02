@isTest
private class OASDhlCredentialsTest {
    @isTest
    private static void equalsSameInstance() {
        OASDhlCredentials dhlCredentials1 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials2 = dhlCredentials1;
        OASDhlCredentials dhlCredentials3 = new OASDhlCredentials();
        OASDhlCredentials dhlCredentials4 = dhlCredentials3;

        System.assert(dhlCredentials1.equals(dhlCredentials2));
        System.assert(dhlCredentials2.equals(dhlCredentials1));
        System.assert(dhlCredentials1.equals(dhlCredentials1));
        System.assert(dhlCredentials3.equals(dhlCredentials4));
        System.assert(dhlCredentials4.equals(dhlCredentials3));
        System.assert(dhlCredentials3.equals(dhlCredentials3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDhlCredentials dhlCredentials1 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials2 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials3 = new OASDhlCredentials();
        OASDhlCredentials dhlCredentials4 = new OASDhlCredentials();

        System.assert(dhlCredentials1.equals(dhlCredentials2));
        System.assert(dhlCredentials2.equals(dhlCredentials1));
        System.assert(dhlCredentials3.equals(dhlCredentials4));
        System.assert(dhlCredentials4.equals(dhlCredentials3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDhlCredentials dhlCredentials1 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials2 = new OASDhlCredentials();

        System.assertEquals(false, dhlCredentials1.equals('foo'));
        System.assertEquals(false, dhlCredentials2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDhlCredentials dhlCredentials1 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials2 = new OASDhlCredentials();
        OASDhlCredentials dhlCredentials3;

        System.assertEquals(false, dhlCredentials1.equals(dhlCredentials3));
        System.assertEquals(false, dhlCredentials2.equals(dhlCredentials3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDhlCredentials dhlCredentials1 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials2 = new OASDhlCredentials();

        System.assertEquals(dhlCredentials1.hashCode(), dhlCredentials1.hashCode());
        System.assertEquals(dhlCredentials2.hashCode(), dhlCredentials2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDhlCredentials dhlCredentials1 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials2 = OASDhlCredentials.getExample();
        OASDhlCredentials dhlCredentials3 = new OASDhlCredentials();
        OASDhlCredentials dhlCredentials4 = new OASDhlCredentials();

        System.assert(dhlCredentials1.equals(dhlCredentials2));
        System.assert(dhlCredentials3.equals(dhlCredentials4));
        System.assertEquals(dhlCredentials1.hashCode(), dhlCredentials2.hashCode());
        System.assertEquals(dhlCredentials3.hashCode(), dhlCredentials4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDhlCredentials dhlCredentials = new OASDhlCredentials();
        Map<String, String> x-property-mappings = dhlCredentials.getx-property-mappings();
        System.assertEquals('apiKey', x-property-mappings.get('api_key'));
        System.assertEquals('clientId', x-property-mappings.get('client_id'));
        System.assertEquals('clientSecret', x-property-mappings.get('client_secret'));
    }
}
