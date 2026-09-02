@isTest
private class OASElsterStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASElsterStatus elsterStatus1 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus2 = elsterStatus1;
        OASElsterStatus elsterStatus3 = new OASElsterStatus();
        OASElsterStatus elsterStatus4 = elsterStatus3;

        System.assert(elsterStatus1.equals(elsterStatus2));
        System.assert(elsterStatus2.equals(elsterStatus1));
        System.assert(elsterStatus1.equals(elsterStatus1));
        System.assert(elsterStatus3.equals(elsterStatus4));
        System.assert(elsterStatus4.equals(elsterStatus3));
        System.assert(elsterStatus3.equals(elsterStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASElsterStatus elsterStatus1 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus2 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus3 = new OASElsterStatus();
        OASElsterStatus elsterStatus4 = new OASElsterStatus();

        System.assert(elsterStatus1.equals(elsterStatus2));
        System.assert(elsterStatus2.equals(elsterStatus1));
        System.assert(elsterStatus3.equals(elsterStatus4));
        System.assert(elsterStatus4.equals(elsterStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASElsterStatus elsterStatus1 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus2 = new OASElsterStatus();

        System.assertEquals(false, elsterStatus1.equals('foo'));
        System.assertEquals(false, elsterStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASElsterStatus elsterStatus1 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus2 = new OASElsterStatus();
        OASElsterStatus elsterStatus3;

        System.assertEquals(false, elsterStatus1.equals(elsterStatus3));
        System.assertEquals(false, elsterStatus2.equals(elsterStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASElsterStatus elsterStatus1 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus2 = new OASElsterStatus();

        System.assertEquals(elsterStatus1.hashCode(), elsterStatus1.hashCode());
        System.assertEquals(elsterStatus2.hashCode(), elsterStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASElsterStatus elsterStatus1 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus2 = OASElsterStatus.getExample();
        OASElsterStatus elsterStatus3 = new OASElsterStatus();
        OASElsterStatus elsterStatus4 = new OASElsterStatus();

        System.assert(elsterStatus1.equals(elsterStatus2));
        System.assert(elsterStatus3.equals(elsterStatus4));
        System.assertEquals(elsterStatus1.hashCode(), elsterStatus2.hashCode());
        System.assertEquals(elsterStatus3.hashCode(), elsterStatus4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASElsterStatus elsterStatus = new OASElsterStatus();
        Map<String, String> x-property-mappings = elsterStatus.getx-property-mappings();
        System.assertEquals('certConfigured', x-property-mappings.get('cert_configured'));
        System.assertEquals('ericAvailable', x-property-mappings.get('eric_available'));
        System.assertEquals('ericVersion', x-property-mappings.get('eric_version'));
        System.assertEquals('featureEnabled', x-property-mappings.get('feature_enabled'));
        System.assertEquals('r_hint', x-property-mappings.get('hint'));
        System.assertEquals('vendorIdConfigured', x-property-mappings.get('vendor_id_configured'));
    }
}
