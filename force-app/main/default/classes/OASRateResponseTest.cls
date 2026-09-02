@isTest
private class OASRateResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASRateResponse rateResponse1 = OASRateResponse.getExample();
        OASRateResponse rateResponse2 = rateResponse1;
        OASRateResponse rateResponse3 = new OASRateResponse();
        OASRateResponse rateResponse4 = rateResponse3;

        System.assert(rateResponse1.equals(rateResponse2));
        System.assert(rateResponse2.equals(rateResponse1));
        System.assert(rateResponse1.equals(rateResponse1));
        System.assert(rateResponse3.equals(rateResponse4));
        System.assert(rateResponse4.equals(rateResponse3));
        System.assert(rateResponse3.equals(rateResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRateResponse rateResponse1 = OASRateResponse.getExample();
        OASRateResponse rateResponse2 = OASRateResponse.getExample();
        OASRateResponse rateResponse3 = new OASRateResponse();
        OASRateResponse rateResponse4 = new OASRateResponse();

        System.assert(rateResponse1.equals(rateResponse2));
        System.assert(rateResponse2.equals(rateResponse1));
        System.assert(rateResponse3.equals(rateResponse4));
        System.assert(rateResponse4.equals(rateResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRateResponse rateResponse1 = OASRateResponse.getExample();
        OASRateResponse rateResponse2 = new OASRateResponse();

        System.assertEquals(false, rateResponse1.equals('foo'));
        System.assertEquals(false, rateResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRateResponse rateResponse1 = OASRateResponse.getExample();
        OASRateResponse rateResponse2 = new OASRateResponse();
        OASRateResponse rateResponse3;

        System.assertEquals(false, rateResponse1.equals(rateResponse3));
        System.assertEquals(false, rateResponse2.equals(rateResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRateResponse rateResponse1 = OASRateResponse.getExample();
        OASRateResponse rateResponse2 = new OASRateResponse();

        System.assertEquals(rateResponse1.hashCode(), rateResponse1.hashCode());
        System.assertEquals(rateResponse2.hashCode(), rateResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRateResponse rateResponse1 = OASRateResponse.getExample();
        OASRateResponse rateResponse2 = OASRateResponse.getExample();
        OASRateResponse rateResponse3 = new OASRateResponse();
        OASRateResponse rateResponse4 = new OASRateResponse();

        System.assert(rateResponse1.equals(rateResponse2));
        System.assert(rateResponse3.equals(rateResponse4));
        System.assertEquals(rateResponse1.hashCode(), rateResponse2.hashCode());
        System.assertEquals(rateResponse3.hashCode(), rateResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRateResponse rateResponse = new OASRateResponse();
        System.assertEquals(new List<OASShippingRate>(), rateResponse.rates);
    }
}
