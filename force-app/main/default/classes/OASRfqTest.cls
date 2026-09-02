@isTest
private class OASRfqTest {
    @isTest
    private static void equalsSameInstance() {
        OASRfq rfq1 = OASRfq.getExample();
        OASRfq rfq2 = rfq1;
        OASRfq rfq3 = new OASRfq();
        OASRfq rfq4 = rfq3;

        System.assert(rfq1.equals(rfq2));
        System.assert(rfq2.equals(rfq1));
        System.assert(rfq1.equals(rfq1));
        System.assert(rfq3.equals(rfq4));
        System.assert(rfq4.equals(rfq3));
        System.assert(rfq3.equals(rfq3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRfq rfq1 = OASRfq.getExample();
        OASRfq rfq2 = OASRfq.getExample();
        OASRfq rfq3 = new OASRfq();
        OASRfq rfq4 = new OASRfq();

        System.assert(rfq1.equals(rfq2));
        System.assert(rfq2.equals(rfq1));
        System.assert(rfq3.equals(rfq4));
        System.assert(rfq4.equals(rfq3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRfq rfq1 = OASRfq.getExample();
        OASRfq rfq2 = new OASRfq();

        System.assertEquals(false, rfq1.equals('foo'));
        System.assertEquals(false, rfq2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRfq rfq1 = OASRfq.getExample();
        OASRfq rfq2 = new OASRfq();
        OASRfq rfq3;

        System.assertEquals(false, rfq1.equals(rfq3));
        System.assertEquals(false, rfq2.equals(rfq3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRfq rfq1 = OASRfq.getExample();
        OASRfq rfq2 = new OASRfq();

        System.assertEquals(rfq1.hashCode(), rfq1.hashCode());
        System.assertEquals(rfq2.hashCode(), rfq2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRfq rfq1 = OASRfq.getExample();
        OASRfq rfq2 = OASRfq.getExample();
        OASRfq rfq3 = new OASRfq();
        OASRfq rfq4 = new OASRfq();

        System.assert(rfq1.equals(rfq2));
        System.assert(rfq3.equals(rfq4));
        System.assertEquals(rfq1.hashCode(), rfq2.hashCode());
        System.assertEquals(rfq3.hashCode(), rfq4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRfq rfq = new OASRfq();
        Map<String, String> x-property-mappings = rfq.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
