@isTest
private class OASSuitabilityRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASSuitabilityRequest suitabilityRequest1 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest2 = suitabilityRequest1;
        OASSuitabilityRequest suitabilityRequest3 = new OASSuitabilityRequest();
        OASSuitabilityRequest suitabilityRequest4 = suitabilityRequest3;

        System.assert(suitabilityRequest1.equals(suitabilityRequest2));
        System.assert(suitabilityRequest2.equals(suitabilityRequest1));
        System.assert(suitabilityRequest1.equals(suitabilityRequest1));
        System.assert(suitabilityRequest3.equals(suitabilityRequest4));
        System.assert(suitabilityRequest4.equals(suitabilityRequest3));
        System.assert(suitabilityRequest3.equals(suitabilityRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSuitabilityRequest suitabilityRequest1 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest2 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest3 = new OASSuitabilityRequest();
        OASSuitabilityRequest suitabilityRequest4 = new OASSuitabilityRequest();

        System.assert(suitabilityRequest1.equals(suitabilityRequest2));
        System.assert(suitabilityRequest2.equals(suitabilityRequest1));
        System.assert(suitabilityRequest3.equals(suitabilityRequest4));
        System.assert(suitabilityRequest4.equals(suitabilityRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSuitabilityRequest suitabilityRequest1 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest2 = new OASSuitabilityRequest();

        System.assertEquals(false, suitabilityRequest1.equals('foo'));
        System.assertEquals(false, suitabilityRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSuitabilityRequest suitabilityRequest1 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest2 = new OASSuitabilityRequest();
        OASSuitabilityRequest suitabilityRequest3;

        System.assertEquals(false, suitabilityRequest1.equals(suitabilityRequest3));
        System.assertEquals(false, suitabilityRequest2.equals(suitabilityRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSuitabilityRequest suitabilityRequest1 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest2 = new OASSuitabilityRequest();

        System.assertEquals(suitabilityRequest1.hashCode(), suitabilityRequest1.hashCode());
        System.assertEquals(suitabilityRequest2.hashCode(), suitabilityRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSuitabilityRequest suitabilityRequest1 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest2 = OASSuitabilityRequest.getExample();
        OASSuitabilityRequest suitabilityRequest3 = new OASSuitabilityRequest();
        OASSuitabilityRequest suitabilityRequest4 = new OASSuitabilityRequest();

        System.assert(suitabilityRequest1.equals(suitabilityRequest2));
        System.assert(suitabilityRequest3.equals(suitabilityRequest4));
        System.assertEquals(suitabilityRequest1.hashCode(), suitabilityRequest2.hashCode());
        System.assertEquals(suitabilityRequest3.hashCode(), suitabilityRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSuitabilityRequest suitabilityRequest = new OASSuitabilityRequest();
        Map<String, String> x-property-mappings = suitabilityRequest.getx-property-mappings();
        System.assertEquals('customerAnnualVolume', x-property-mappings.get('customer_annual_volume'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSuitabilityRequest suitabilityRequest = new OASSuitabilityRequest();
        System.assertEquals(new List<OASCartItemInput>(), suitabilityRequest.items);
        System.assertEquals(null, suitabilityRequest.customerAnnualVolume);
        System.assertEquals(null, suitabilityRequest.recipient);
        System.assertEquals(null, suitabilityRequest.sender);
    }
}
