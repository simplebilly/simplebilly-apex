@isTest
private class OASPackingVideoResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPackingVideoResponse packingVideoResponse1 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse2 = packingVideoResponse1;
        OASPackingVideoResponse packingVideoResponse3 = new OASPackingVideoResponse();
        OASPackingVideoResponse packingVideoResponse4 = packingVideoResponse3;

        System.assert(packingVideoResponse1.equals(packingVideoResponse2));
        System.assert(packingVideoResponse2.equals(packingVideoResponse1));
        System.assert(packingVideoResponse1.equals(packingVideoResponse1));
        System.assert(packingVideoResponse3.equals(packingVideoResponse4));
        System.assert(packingVideoResponse4.equals(packingVideoResponse3));
        System.assert(packingVideoResponse3.equals(packingVideoResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPackingVideoResponse packingVideoResponse1 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse2 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse3 = new OASPackingVideoResponse();
        OASPackingVideoResponse packingVideoResponse4 = new OASPackingVideoResponse();

        System.assert(packingVideoResponse1.equals(packingVideoResponse2));
        System.assert(packingVideoResponse2.equals(packingVideoResponse1));
        System.assert(packingVideoResponse3.equals(packingVideoResponse4));
        System.assert(packingVideoResponse4.equals(packingVideoResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPackingVideoResponse packingVideoResponse1 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse2 = new OASPackingVideoResponse();

        System.assertEquals(false, packingVideoResponse1.equals('foo'));
        System.assertEquals(false, packingVideoResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPackingVideoResponse packingVideoResponse1 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse2 = new OASPackingVideoResponse();
        OASPackingVideoResponse packingVideoResponse3;

        System.assertEquals(false, packingVideoResponse1.equals(packingVideoResponse3));
        System.assertEquals(false, packingVideoResponse2.equals(packingVideoResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPackingVideoResponse packingVideoResponse1 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse2 = new OASPackingVideoResponse();

        System.assertEquals(packingVideoResponse1.hashCode(), packingVideoResponse1.hashCode());
        System.assertEquals(packingVideoResponse2.hashCode(), packingVideoResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPackingVideoResponse packingVideoResponse1 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse2 = OASPackingVideoResponse.getExample();
        OASPackingVideoResponse packingVideoResponse3 = new OASPackingVideoResponse();
        OASPackingVideoResponse packingVideoResponse4 = new OASPackingVideoResponse();

        System.assert(packingVideoResponse1.equals(packingVideoResponse2));
        System.assert(packingVideoResponse3.equals(packingVideoResponse4));
        System.assertEquals(packingVideoResponse1.hashCode(), packingVideoResponse2.hashCode());
        System.assertEquals(packingVideoResponse3.hashCode(), packingVideoResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPackingVideoResponse packingVideoResponse = new OASPackingVideoResponse();
        Map<String, String> x-property-mappings = packingVideoResponse.getx-property-mappings();
        System.assertEquals('recordingUrl', x-property-mappings.get('recording_url'));
    }
}
