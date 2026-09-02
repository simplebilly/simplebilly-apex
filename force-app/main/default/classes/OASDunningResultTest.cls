@isTest
private class OASDunningResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASDunningResult dunningResult1 = OASDunningResult.getExample();
        OASDunningResult dunningResult2 = dunningResult1;
        OASDunningResult dunningResult3 = new OASDunningResult();
        OASDunningResult dunningResult4 = dunningResult3;

        System.assert(dunningResult1.equals(dunningResult2));
        System.assert(dunningResult2.equals(dunningResult1));
        System.assert(dunningResult1.equals(dunningResult1));
        System.assert(dunningResult3.equals(dunningResult4));
        System.assert(dunningResult4.equals(dunningResult3));
        System.assert(dunningResult3.equals(dunningResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDunningResult dunningResult1 = OASDunningResult.getExample();
        OASDunningResult dunningResult2 = OASDunningResult.getExample();
        OASDunningResult dunningResult3 = new OASDunningResult();
        OASDunningResult dunningResult4 = new OASDunningResult();

        System.assert(dunningResult1.equals(dunningResult2));
        System.assert(dunningResult2.equals(dunningResult1));
        System.assert(dunningResult3.equals(dunningResult4));
        System.assert(dunningResult4.equals(dunningResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDunningResult dunningResult1 = OASDunningResult.getExample();
        OASDunningResult dunningResult2 = new OASDunningResult();

        System.assertEquals(false, dunningResult1.equals('foo'));
        System.assertEquals(false, dunningResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDunningResult dunningResult1 = OASDunningResult.getExample();
        OASDunningResult dunningResult2 = new OASDunningResult();
        OASDunningResult dunningResult3;

        System.assertEquals(false, dunningResult1.equals(dunningResult3));
        System.assertEquals(false, dunningResult2.equals(dunningResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDunningResult dunningResult1 = OASDunningResult.getExample();
        OASDunningResult dunningResult2 = new OASDunningResult();

        System.assertEquals(dunningResult1.hashCode(), dunningResult1.hashCode());
        System.assertEquals(dunningResult2.hashCode(), dunningResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDunningResult dunningResult1 = OASDunningResult.getExample();
        OASDunningResult dunningResult2 = OASDunningResult.getExample();
        OASDunningResult dunningResult3 = new OASDunningResult();
        OASDunningResult dunningResult4 = new OASDunningResult();

        System.assert(dunningResult1.equals(dunningResult2));
        System.assert(dunningResult3.equals(dunningResult4));
        System.assertEquals(dunningResult1.hashCode(), dunningResult2.hashCode());
        System.assertEquals(dunningResult3.hashCode(), dunningResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDunningResult dunningResult = new OASDunningResult();
        Map<String, String> x-property-mappings = dunningResult.getx-property-mappings();
        System.assertEquals('invoicesProcessed', x-property-mappings.get('invoices_processed'));
    }
}
