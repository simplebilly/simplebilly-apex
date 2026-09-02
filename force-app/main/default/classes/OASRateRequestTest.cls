@isTest
private class OASRateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASRateRequest rateRequest1 = OASRateRequest.getExample();
        OASRateRequest rateRequest2 = rateRequest1;
        OASRateRequest rateRequest3 = new OASRateRequest();
        OASRateRequest rateRequest4 = rateRequest3;

        System.assert(rateRequest1.equals(rateRequest2));
        System.assert(rateRequest2.equals(rateRequest1));
        System.assert(rateRequest1.equals(rateRequest1));
        System.assert(rateRequest3.equals(rateRequest4));
        System.assert(rateRequest4.equals(rateRequest3));
        System.assert(rateRequest3.equals(rateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRateRequest rateRequest1 = OASRateRequest.getExample();
        OASRateRequest rateRequest2 = OASRateRequest.getExample();
        OASRateRequest rateRequest3 = new OASRateRequest();
        OASRateRequest rateRequest4 = new OASRateRequest();

        System.assert(rateRequest1.equals(rateRequest2));
        System.assert(rateRequest2.equals(rateRequest1));
        System.assert(rateRequest3.equals(rateRequest4));
        System.assert(rateRequest4.equals(rateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRateRequest rateRequest1 = OASRateRequest.getExample();
        OASRateRequest rateRequest2 = new OASRateRequest();

        System.assertEquals(false, rateRequest1.equals('foo'));
        System.assertEquals(false, rateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRateRequest rateRequest1 = OASRateRequest.getExample();
        OASRateRequest rateRequest2 = new OASRateRequest();
        OASRateRequest rateRequest3;

        System.assertEquals(false, rateRequest1.equals(rateRequest3));
        System.assertEquals(false, rateRequest2.equals(rateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRateRequest rateRequest1 = OASRateRequest.getExample();
        OASRateRequest rateRequest2 = new OASRateRequest();

        System.assertEquals(rateRequest1.hashCode(), rateRequest1.hashCode());
        System.assertEquals(rateRequest2.hashCode(), rateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRateRequest rateRequest1 = OASRateRequest.getExample();
        OASRateRequest rateRequest2 = OASRateRequest.getExample();
        OASRateRequest rateRequest3 = new OASRateRequest();
        OASRateRequest rateRequest4 = new OASRateRequest();

        System.assert(rateRequest1.equals(rateRequest2));
        System.assert(rateRequest3.equals(rateRequest4));
        System.assertEquals(rateRequest1.hashCode(), rateRequest2.hashCode());
        System.assertEquals(rateRequest3.hashCode(), rateRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRateRequest rateRequest = new OASRateRequest();
        System.assertEquals(new List<OASPackage>(), rateRequest.packages);
        System.assertEquals(null, rateRequest.customer);
        System.assertEquals(null, rateRequest.recipient);
        System.assertEquals(null, rateRequest.sender);
    }
}
