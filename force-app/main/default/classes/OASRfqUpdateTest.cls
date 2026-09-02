@isTest
private class OASRfqUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASRfqUpdate rfqUpdate1 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate2 = rfqUpdate1;
        OASRfqUpdate rfqUpdate3 = new OASRfqUpdate();
        OASRfqUpdate rfqUpdate4 = rfqUpdate3;

        System.assert(rfqUpdate1.equals(rfqUpdate2));
        System.assert(rfqUpdate2.equals(rfqUpdate1));
        System.assert(rfqUpdate1.equals(rfqUpdate1));
        System.assert(rfqUpdate3.equals(rfqUpdate4));
        System.assert(rfqUpdate4.equals(rfqUpdate3));
        System.assert(rfqUpdate3.equals(rfqUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRfqUpdate rfqUpdate1 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate2 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate3 = new OASRfqUpdate();
        OASRfqUpdate rfqUpdate4 = new OASRfqUpdate();

        System.assert(rfqUpdate1.equals(rfqUpdate2));
        System.assert(rfqUpdate2.equals(rfqUpdate1));
        System.assert(rfqUpdate3.equals(rfqUpdate4));
        System.assert(rfqUpdate4.equals(rfqUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRfqUpdate rfqUpdate1 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate2 = new OASRfqUpdate();

        System.assertEquals(false, rfqUpdate1.equals('foo'));
        System.assertEquals(false, rfqUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRfqUpdate rfqUpdate1 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate2 = new OASRfqUpdate();
        OASRfqUpdate rfqUpdate3;

        System.assertEquals(false, rfqUpdate1.equals(rfqUpdate3));
        System.assertEquals(false, rfqUpdate2.equals(rfqUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRfqUpdate rfqUpdate1 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate2 = new OASRfqUpdate();

        System.assertEquals(rfqUpdate1.hashCode(), rfqUpdate1.hashCode());
        System.assertEquals(rfqUpdate2.hashCode(), rfqUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRfqUpdate rfqUpdate1 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate2 = OASRfqUpdate.getExample();
        OASRfqUpdate rfqUpdate3 = new OASRfqUpdate();
        OASRfqUpdate rfqUpdate4 = new OASRfqUpdate();

        System.assert(rfqUpdate1.equals(rfqUpdate2));
        System.assert(rfqUpdate3.equals(rfqUpdate4));
        System.assertEquals(rfqUpdate1.hashCode(), rfqUpdate2.hashCode());
        System.assertEquals(rfqUpdate3.hashCode(), rfqUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRfqUpdate rfqUpdate = new OASRfqUpdate();
        Map<String, String> x-property-mappings = rfqUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
