@isTest
private class OASRfqStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASRfqStatusUpdate rfqStatusUpdate1 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate2 = rfqStatusUpdate1;
        OASRfqStatusUpdate rfqStatusUpdate3 = new OASRfqStatusUpdate();
        OASRfqStatusUpdate rfqStatusUpdate4 = rfqStatusUpdate3;

        System.assert(rfqStatusUpdate1.equals(rfqStatusUpdate2));
        System.assert(rfqStatusUpdate2.equals(rfqStatusUpdate1));
        System.assert(rfqStatusUpdate1.equals(rfqStatusUpdate1));
        System.assert(rfqStatusUpdate3.equals(rfqStatusUpdate4));
        System.assert(rfqStatusUpdate4.equals(rfqStatusUpdate3));
        System.assert(rfqStatusUpdate3.equals(rfqStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRfqStatusUpdate rfqStatusUpdate1 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate2 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate3 = new OASRfqStatusUpdate();
        OASRfqStatusUpdate rfqStatusUpdate4 = new OASRfqStatusUpdate();

        System.assert(rfqStatusUpdate1.equals(rfqStatusUpdate2));
        System.assert(rfqStatusUpdate2.equals(rfqStatusUpdate1));
        System.assert(rfqStatusUpdate3.equals(rfqStatusUpdate4));
        System.assert(rfqStatusUpdate4.equals(rfqStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRfqStatusUpdate rfqStatusUpdate1 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate2 = new OASRfqStatusUpdate();

        System.assertEquals(false, rfqStatusUpdate1.equals('foo'));
        System.assertEquals(false, rfqStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRfqStatusUpdate rfqStatusUpdate1 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate2 = new OASRfqStatusUpdate();
        OASRfqStatusUpdate rfqStatusUpdate3;

        System.assertEquals(false, rfqStatusUpdate1.equals(rfqStatusUpdate3));
        System.assertEquals(false, rfqStatusUpdate2.equals(rfqStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRfqStatusUpdate rfqStatusUpdate1 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate2 = new OASRfqStatusUpdate();

        System.assertEquals(rfqStatusUpdate1.hashCode(), rfqStatusUpdate1.hashCode());
        System.assertEquals(rfqStatusUpdate2.hashCode(), rfqStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRfqStatusUpdate rfqStatusUpdate1 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate2 = OASRfqStatusUpdate.getExample();
        OASRfqStatusUpdate rfqStatusUpdate3 = new OASRfqStatusUpdate();
        OASRfqStatusUpdate rfqStatusUpdate4 = new OASRfqStatusUpdate();

        System.assert(rfqStatusUpdate1.equals(rfqStatusUpdate2));
        System.assert(rfqStatusUpdate3.equals(rfqStatusUpdate4));
        System.assertEquals(rfqStatusUpdate1.hashCode(), rfqStatusUpdate2.hashCode());
        System.assertEquals(rfqStatusUpdate3.hashCode(), rfqStatusUpdate4.hashCode());
    }
}
