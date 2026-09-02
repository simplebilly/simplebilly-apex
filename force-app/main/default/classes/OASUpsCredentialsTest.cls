@isTest
private class OASUpsCredentialsTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpsCredentials upsCredentials1 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials2 = upsCredentials1;
        OASUpsCredentials upsCredentials3 = new OASUpsCredentials();
        OASUpsCredentials upsCredentials4 = upsCredentials3;

        System.assert(upsCredentials1.equals(upsCredentials2));
        System.assert(upsCredentials2.equals(upsCredentials1));
        System.assert(upsCredentials1.equals(upsCredentials1));
        System.assert(upsCredentials3.equals(upsCredentials4));
        System.assert(upsCredentials4.equals(upsCredentials3));
        System.assert(upsCredentials3.equals(upsCredentials3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpsCredentials upsCredentials1 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials2 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials3 = new OASUpsCredentials();
        OASUpsCredentials upsCredentials4 = new OASUpsCredentials();

        System.assert(upsCredentials1.equals(upsCredentials2));
        System.assert(upsCredentials2.equals(upsCredentials1));
        System.assert(upsCredentials3.equals(upsCredentials4));
        System.assert(upsCredentials4.equals(upsCredentials3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpsCredentials upsCredentials1 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials2 = new OASUpsCredentials();

        System.assertEquals(false, upsCredentials1.equals('foo'));
        System.assertEquals(false, upsCredentials2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpsCredentials upsCredentials1 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials2 = new OASUpsCredentials();
        OASUpsCredentials upsCredentials3;

        System.assertEquals(false, upsCredentials1.equals(upsCredentials3));
        System.assertEquals(false, upsCredentials2.equals(upsCredentials3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpsCredentials upsCredentials1 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials2 = new OASUpsCredentials();

        System.assertEquals(upsCredentials1.hashCode(), upsCredentials1.hashCode());
        System.assertEquals(upsCredentials2.hashCode(), upsCredentials2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpsCredentials upsCredentials1 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials2 = OASUpsCredentials.getExample();
        OASUpsCredentials upsCredentials3 = new OASUpsCredentials();
        OASUpsCredentials upsCredentials4 = new OASUpsCredentials();

        System.assert(upsCredentials1.equals(upsCredentials2));
        System.assert(upsCredentials3.equals(upsCredentials4));
        System.assertEquals(upsCredentials1.hashCode(), upsCredentials2.hashCode());
        System.assertEquals(upsCredentials3.hashCode(), upsCredentials4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpsCredentials upsCredentials = new OASUpsCredentials();
        Map<String, String> x-property-mappings = upsCredentials.getx-property-mappings();
        System.assertEquals('clientId', x-property-mappings.get('client_id'));
        System.assertEquals('clientSecret', x-property-mappings.get('client_secret'));
        System.assertEquals('shipperNumber', x-property-mappings.get('shipper_number'));
    }
}
