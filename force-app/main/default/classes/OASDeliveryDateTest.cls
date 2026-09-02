@isTest
private class OASDeliveryDateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryDate deliveryDate1 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate2 = deliveryDate1;
        OASDeliveryDate deliveryDate3 = new OASDeliveryDate();
        OASDeliveryDate deliveryDate4 = deliveryDate3;

        System.assert(deliveryDate1.equals(deliveryDate2));
        System.assert(deliveryDate2.equals(deliveryDate1));
        System.assert(deliveryDate1.equals(deliveryDate1));
        System.assert(deliveryDate3.equals(deliveryDate4));
        System.assert(deliveryDate4.equals(deliveryDate3));
        System.assert(deliveryDate3.equals(deliveryDate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryDate deliveryDate1 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate2 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate3 = new OASDeliveryDate();
        OASDeliveryDate deliveryDate4 = new OASDeliveryDate();

        System.assert(deliveryDate1.equals(deliveryDate2));
        System.assert(deliveryDate2.equals(deliveryDate1));
        System.assert(deliveryDate3.equals(deliveryDate4));
        System.assert(deliveryDate4.equals(deliveryDate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryDate deliveryDate1 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate2 = new OASDeliveryDate();

        System.assertEquals(false, deliveryDate1.equals('foo'));
        System.assertEquals(false, deliveryDate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryDate deliveryDate1 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate2 = new OASDeliveryDate();
        OASDeliveryDate deliveryDate3;

        System.assertEquals(false, deliveryDate1.equals(deliveryDate3));
        System.assertEquals(false, deliveryDate2.equals(deliveryDate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryDate deliveryDate1 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate2 = new OASDeliveryDate();

        System.assertEquals(deliveryDate1.hashCode(), deliveryDate1.hashCode());
        System.assertEquals(deliveryDate2.hashCode(), deliveryDate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryDate deliveryDate1 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate2 = OASDeliveryDate.getExample();
        OASDeliveryDate deliveryDate3 = new OASDeliveryDate();
        OASDeliveryDate deliveryDate4 = new OASDeliveryDate();

        System.assert(deliveryDate1.equals(deliveryDate2));
        System.assert(deliveryDate3.equals(deliveryDate4));
        System.assertEquals(deliveryDate1.hashCode(), deliveryDate2.hashCode());
        System.assertEquals(deliveryDate3.hashCode(), deliveryDate4.hashCode());
    }
}
