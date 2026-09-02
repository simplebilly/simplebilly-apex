@isTest
private class OASReplenishmentResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASReplenishmentResponse replenishmentResponse1 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse2 = replenishmentResponse1;
        OASReplenishmentResponse replenishmentResponse3 = new OASReplenishmentResponse();
        OASReplenishmentResponse replenishmentResponse4 = replenishmentResponse3;

        System.assert(replenishmentResponse1.equals(replenishmentResponse2));
        System.assert(replenishmentResponse2.equals(replenishmentResponse1));
        System.assert(replenishmentResponse1.equals(replenishmentResponse1));
        System.assert(replenishmentResponse3.equals(replenishmentResponse4));
        System.assert(replenishmentResponse4.equals(replenishmentResponse3));
        System.assert(replenishmentResponse3.equals(replenishmentResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReplenishmentResponse replenishmentResponse1 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse2 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse3 = new OASReplenishmentResponse();
        OASReplenishmentResponse replenishmentResponse4 = new OASReplenishmentResponse();

        System.assert(replenishmentResponse1.equals(replenishmentResponse2));
        System.assert(replenishmentResponse2.equals(replenishmentResponse1));
        System.assert(replenishmentResponse3.equals(replenishmentResponse4));
        System.assert(replenishmentResponse4.equals(replenishmentResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReplenishmentResponse replenishmentResponse1 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse2 = new OASReplenishmentResponse();

        System.assertEquals(false, replenishmentResponse1.equals('foo'));
        System.assertEquals(false, replenishmentResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReplenishmentResponse replenishmentResponse1 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse2 = new OASReplenishmentResponse();
        OASReplenishmentResponse replenishmentResponse3;

        System.assertEquals(false, replenishmentResponse1.equals(replenishmentResponse3));
        System.assertEquals(false, replenishmentResponse2.equals(replenishmentResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReplenishmentResponse replenishmentResponse1 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse2 = new OASReplenishmentResponse();

        System.assertEquals(replenishmentResponse1.hashCode(), replenishmentResponse1.hashCode());
        System.assertEquals(replenishmentResponse2.hashCode(), replenishmentResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReplenishmentResponse replenishmentResponse1 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse2 = OASReplenishmentResponse.getExample();
        OASReplenishmentResponse replenishmentResponse3 = new OASReplenishmentResponse();
        OASReplenishmentResponse replenishmentResponse4 = new OASReplenishmentResponse();

        System.assert(replenishmentResponse1.equals(replenishmentResponse2));
        System.assert(replenishmentResponse3.equals(replenishmentResponse4));
        System.assertEquals(replenishmentResponse1.hashCode(), replenishmentResponse2.hashCode());
        System.assertEquals(replenishmentResponse3.hashCode(), replenishmentResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReplenishmentResponse replenishmentResponse = new OASReplenishmentResponse();
        System.assertEquals(new List<OASReplenishmentSuggestionLine>(), replenishmentResponse.lines);
        System.assertEquals(null, replenishmentResponse.generatedAt);
        System.assertEquals(null, replenishmentResponse.targetWarehouseId);
        System.assertEquals(null, replenishmentResponse.totalSuggestedQuantity);
    }
}
