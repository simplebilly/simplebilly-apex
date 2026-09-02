@isTest
private class OASApiResponseSubscriptionOverviewDaTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData1 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData2 = apiResponseSubscriptionOverviewData1;
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData3 = new OASApiResponseSubscriptionOverviewDa();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData4 = apiResponseSubscriptionOverviewData3;

        System.assert(apiResponseSubscriptionOverviewData1.equals(apiResponseSubscriptionOverviewData2));
        System.assert(apiResponseSubscriptionOverviewData2.equals(apiResponseSubscriptionOverviewData1));
        System.assert(apiResponseSubscriptionOverviewData1.equals(apiResponseSubscriptionOverviewData1));
        System.assert(apiResponseSubscriptionOverviewData3.equals(apiResponseSubscriptionOverviewData4));
        System.assert(apiResponseSubscriptionOverviewData4.equals(apiResponseSubscriptionOverviewData3));
        System.assert(apiResponseSubscriptionOverviewData3.equals(apiResponseSubscriptionOverviewData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData1 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData2 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData3 = new OASApiResponseSubscriptionOverviewDa();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData4 = new OASApiResponseSubscriptionOverviewDa();

        System.assert(apiResponseSubscriptionOverviewData1.equals(apiResponseSubscriptionOverviewData2));
        System.assert(apiResponseSubscriptionOverviewData2.equals(apiResponseSubscriptionOverviewData1));
        System.assert(apiResponseSubscriptionOverviewData3.equals(apiResponseSubscriptionOverviewData4));
        System.assert(apiResponseSubscriptionOverviewData4.equals(apiResponseSubscriptionOverviewData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData1 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData2 = new OASApiResponseSubscriptionOverviewDa();

        System.assertEquals(false, apiResponseSubscriptionOverviewData1.equals('foo'));
        System.assertEquals(false, apiResponseSubscriptionOverviewData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData1 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData2 = new OASApiResponseSubscriptionOverviewDa();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData3;

        System.assertEquals(false, apiResponseSubscriptionOverviewData1.equals(apiResponseSubscriptionOverviewData3));
        System.assertEquals(false, apiResponseSubscriptionOverviewData2.equals(apiResponseSubscriptionOverviewData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData1 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData2 = new OASApiResponseSubscriptionOverviewDa();

        System.assertEquals(apiResponseSubscriptionOverviewData1.hashCode(), apiResponseSubscriptionOverviewData1.hashCode());
        System.assertEquals(apiResponseSubscriptionOverviewData2.hashCode(), apiResponseSubscriptionOverviewData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData1 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData2 = OASApiResponseSubscriptionOverviewDa.getExample();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData3 = new OASApiResponseSubscriptionOverviewDa();
        OASApiResponseSubscriptionOverviewDa apiResponseSubscriptionOverviewData4 = new OASApiResponseSubscriptionOverviewDa();

        System.assert(apiResponseSubscriptionOverviewData1.equals(apiResponseSubscriptionOverviewData2));
        System.assert(apiResponseSubscriptionOverviewData3.equals(apiResponseSubscriptionOverviewData4));
        System.assertEquals(apiResponseSubscriptionOverviewData1.hashCode(), apiResponseSubscriptionOverviewData2.hashCode());
        System.assertEquals(apiResponseSubscriptionOverviewData3.hashCode(), apiResponseSubscriptionOverviewData4.hashCode());
    }
}
