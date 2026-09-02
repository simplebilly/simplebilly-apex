@isTest
private class OASReplenishmentSuggestionLineTest {
    @isTest
    private static void equalsSameInstance() {
        OASReplenishmentSuggestionLine replenishmentSuggestionLine1 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine2 = replenishmentSuggestionLine1;
        OASReplenishmentSuggestionLine replenishmentSuggestionLine3 = new OASReplenishmentSuggestionLine();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine4 = replenishmentSuggestionLine3;

        System.assert(replenishmentSuggestionLine1.equals(replenishmentSuggestionLine2));
        System.assert(replenishmentSuggestionLine2.equals(replenishmentSuggestionLine1));
        System.assert(replenishmentSuggestionLine1.equals(replenishmentSuggestionLine1));
        System.assert(replenishmentSuggestionLine3.equals(replenishmentSuggestionLine4));
        System.assert(replenishmentSuggestionLine4.equals(replenishmentSuggestionLine3));
        System.assert(replenishmentSuggestionLine3.equals(replenishmentSuggestionLine3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReplenishmentSuggestionLine replenishmentSuggestionLine1 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine2 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine3 = new OASReplenishmentSuggestionLine();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine4 = new OASReplenishmentSuggestionLine();

        System.assert(replenishmentSuggestionLine1.equals(replenishmentSuggestionLine2));
        System.assert(replenishmentSuggestionLine2.equals(replenishmentSuggestionLine1));
        System.assert(replenishmentSuggestionLine3.equals(replenishmentSuggestionLine4));
        System.assert(replenishmentSuggestionLine4.equals(replenishmentSuggestionLine3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReplenishmentSuggestionLine replenishmentSuggestionLine1 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine2 = new OASReplenishmentSuggestionLine();

        System.assertEquals(false, replenishmentSuggestionLine1.equals('foo'));
        System.assertEquals(false, replenishmentSuggestionLine2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReplenishmentSuggestionLine replenishmentSuggestionLine1 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine2 = new OASReplenishmentSuggestionLine();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine3;

        System.assertEquals(false, replenishmentSuggestionLine1.equals(replenishmentSuggestionLine3));
        System.assertEquals(false, replenishmentSuggestionLine2.equals(replenishmentSuggestionLine3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReplenishmentSuggestionLine replenishmentSuggestionLine1 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine2 = new OASReplenishmentSuggestionLine();

        System.assertEquals(replenishmentSuggestionLine1.hashCode(), replenishmentSuggestionLine1.hashCode());
        System.assertEquals(replenishmentSuggestionLine2.hashCode(), replenishmentSuggestionLine2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReplenishmentSuggestionLine replenishmentSuggestionLine1 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine2 = OASReplenishmentSuggestionLine.getExample();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine3 = new OASReplenishmentSuggestionLine();
        OASReplenishmentSuggestionLine replenishmentSuggestionLine4 = new OASReplenishmentSuggestionLine();

        System.assert(replenishmentSuggestionLine1.equals(replenishmentSuggestionLine2));
        System.assert(replenishmentSuggestionLine3.equals(replenishmentSuggestionLine4));
        System.assertEquals(replenishmentSuggestionLine1.hashCode(), replenishmentSuggestionLine2.hashCode());
        System.assertEquals(replenishmentSuggestionLine3.hashCode(), replenishmentSuggestionLine4.hashCode());
    }
}
