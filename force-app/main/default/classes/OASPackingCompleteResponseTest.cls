@isTest
private class OASPackingCompleteResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPackingCompleteResponse packingCompleteResponse1 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse2 = packingCompleteResponse1;
        OASPackingCompleteResponse packingCompleteResponse3 = new OASPackingCompleteResponse();
        OASPackingCompleteResponse packingCompleteResponse4 = packingCompleteResponse3;

        System.assert(packingCompleteResponse1.equals(packingCompleteResponse2));
        System.assert(packingCompleteResponse2.equals(packingCompleteResponse1));
        System.assert(packingCompleteResponse1.equals(packingCompleteResponse1));
        System.assert(packingCompleteResponse3.equals(packingCompleteResponse4));
        System.assert(packingCompleteResponse4.equals(packingCompleteResponse3));
        System.assert(packingCompleteResponse3.equals(packingCompleteResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPackingCompleteResponse packingCompleteResponse1 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse2 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse3 = new OASPackingCompleteResponse();
        OASPackingCompleteResponse packingCompleteResponse4 = new OASPackingCompleteResponse();

        System.assert(packingCompleteResponse1.equals(packingCompleteResponse2));
        System.assert(packingCompleteResponse2.equals(packingCompleteResponse1));
        System.assert(packingCompleteResponse3.equals(packingCompleteResponse4));
        System.assert(packingCompleteResponse4.equals(packingCompleteResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPackingCompleteResponse packingCompleteResponse1 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse2 = new OASPackingCompleteResponse();

        System.assertEquals(false, packingCompleteResponse1.equals('foo'));
        System.assertEquals(false, packingCompleteResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPackingCompleteResponse packingCompleteResponse1 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse2 = new OASPackingCompleteResponse();
        OASPackingCompleteResponse packingCompleteResponse3;

        System.assertEquals(false, packingCompleteResponse1.equals(packingCompleteResponse3));
        System.assertEquals(false, packingCompleteResponse2.equals(packingCompleteResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPackingCompleteResponse packingCompleteResponse1 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse2 = new OASPackingCompleteResponse();

        System.assertEquals(packingCompleteResponse1.hashCode(), packingCompleteResponse1.hashCode());
        System.assertEquals(packingCompleteResponse2.hashCode(), packingCompleteResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPackingCompleteResponse packingCompleteResponse1 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse2 = OASPackingCompleteResponse.getExample();
        OASPackingCompleteResponse packingCompleteResponse3 = new OASPackingCompleteResponse();
        OASPackingCompleteResponse packingCompleteResponse4 = new OASPackingCompleteResponse();

        System.assert(packingCompleteResponse1.equals(packingCompleteResponse2));
        System.assert(packingCompleteResponse3.equals(packingCompleteResponse4));
        System.assertEquals(packingCompleteResponse1.hashCode(), packingCompleteResponse2.hashCode());
        System.assertEquals(packingCompleteResponse3.hashCode(), packingCompleteResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPackingCompleteResponse packingCompleteResponse = new OASPackingCompleteResponse();
        Map<String, String> x-property-mappings = packingCompleteResponse.getx-property-mappings();
        System.assertEquals('newState', x-property-mappings.get('new_state'));
        System.assertEquals('orderNumber', x-property-mappings.get('order_number'));
    }
}
