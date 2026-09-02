@isTest
private class OASRfqCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASRfqCreate rfqCreate1 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate2 = rfqCreate1;
        OASRfqCreate rfqCreate3 = new OASRfqCreate();
        OASRfqCreate rfqCreate4 = rfqCreate3;

        System.assert(rfqCreate1.equals(rfqCreate2));
        System.assert(rfqCreate2.equals(rfqCreate1));
        System.assert(rfqCreate1.equals(rfqCreate1));
        System.assert(rfqCreate3.equals(rfqCreate4));
        System.assert(rfqCreate4.equals(rfqCreate3));
        System.assert(rfqCreate3.equals(rfqCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRfqCreate rfqCreate1 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate2 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate3 = new OASRfqCreate();
        OASRfqCreate rfqCreate4 = new OASRfqCreate();

        System.assert(rfqCreate1.equals(rfqCreate2));
        System.assert(rfqCreate2.equals(rfqCreate1));
        System.assert(rfqCreate3.equals(rfqCreate4));
        System.assert(rfqCreate4.equals(rfqCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRfqCreate rfqCreate1 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate2 = new OASRfqCreate();

        System.assertEquals(false, rfqCreate1.equals('foo'));
        System.assertEquals(false, rfqCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRfqCreate rfqCreate1 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate2 = new OASRfqCreate();
        OASRfqCreate rfqCreate3;

        System.assertEquals(false, rfqCreate1.equals(rfqCreate3));
        System.assertEquals(false, rfqCreate2.equals(rfqCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRfqCreate rfqCreate1 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate2 = new OASRfqCreate();

        System.assertEquals(rfqCreate1.hashCode(), rfqCreate1.hashCode());
        System.assertEquals(rfqCreate2.hashCode(), rfqCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRfqCreate rfqCreate1 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate2 = OASRfqCreate.getExample();
        OASRfqCreate rfqCreate3 = new OASRfqCreate();
        OASRfqCreate rfqCreate4 = new OASRfqCreate();

        System.assert(rfqCreate1.equals(rfqCreate2));
        System.assert(rfqCreate3.equals(rfqCreate4));
        System.assertEquals(rfqCreate1.hashCode(), rfqCreate2.hashCode());
        System.assertEquals(rfqCreate3.hashCode(), rfqCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRfqCreate rfqCreate = new OASRfqCreate();
        Map<String, String> x-property-mappings = rfqCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
