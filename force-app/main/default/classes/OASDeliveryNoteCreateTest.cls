@isTest
private class OASDeliveryNoteCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryNoteCreate deliveryNoteCreate1 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate2 = deliveryNoteCreate1;
        OASDeliveryNoteCreate deliveryNoteCreate3 = new OASDeliveryNoteCreate();
        OASDeliveryNoteCreate deliveryNoteCreate4 = deliveryNoteCreate3;

        System.assert(deliveryNoteCreate1.equals(deliveryNoteCreate2));
        System.assert(deliveryNoteCreate2.equals(deliveryNoteCreate1));
        System.assert(deliveryNoteCreate1.equals(deliveryNoteCreate1));
        System.assert(deliveryNoteCreate3.equals(deliveryNoteCreate4));
        System.assert(deliveryNoteCreate4.equals(deliveryNoteCreate3));
        System.assert(deliveryNoteCreate3.equals(deliveryNoteCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryNoteCreate deliveryNoteCreate1 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate2 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate3 = new OASDeliveryNoteCreate();
        OASDeliveryNoteCreate deliveryNoteCreate4 = new OASDeliveryNoteCreate();

        System.assert(deliveryNoteCreate1.equals(deliveryNoteCreate2));
        System.assert(deliveryNoteCreate2.equals(deliveryNoteCreate1));
        System.assert(deliveryNoteCreate3.equals(deliveryNoteCreate4));
        System.assert(deliveryNoteCreate4.equals(deliveryNoteCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryNoteCreate deliveryNoteCreate1 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate2 = new OASDeliveryNoteCreate();

        System.assertEquals(false, deliveryNoteCreate1.equals('foo'));
        System.assertEquals(false, deliveryNoteCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryNoteCreate deliveryNoteCreate1 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate2 = new OASDeliveryNoteCreate();
        OASDeliveryNoteCreate deliveryNoteCreate3;

        System.assertEquals(false, deliveryNoteCreate1.equals(deliveryNoteCreate3));
        System.assertEquals(false, deliveryNoteCreate2.equals(deliveryNoteCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryNoteCreate deliveryNoteCreate1 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate2 = new OASDeliveryNoteCreate();

        System.assertEquals(deliveryNoteCreate1.hashCode(), deliveryNoteCreate1.hashCode());
        System.assertEquals(deliveryNoteCreate2.hashCode(), deliveryNoteCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryNoteCreate deliveryNoteCreate1 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate2 = OASDeliveryNoteCreate.getExample();
        OASDeliveryNoteCreate deliveryNoteCreate3 = new OASDeliveryNoteCreate();
        OASDeliveryNoteCreate deliveryNoteCreate4 = new OASDeliveryNoteCreate();

        System.assert(deliveryNoteCreate1.equals(deliveryNoteCreate2));
        System.assert(deliveryNoteCreate3.equals(deliveryNoteCreate4));
        System.assertEquals(deliveryNoteCreate1.hashCode(), deliveryNoteCreate2.hashCode());
        System.assertEquals(deliveryNoteCreate3.hashCode(), deliveryNoteCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeliveryNoteCreate deliveryNoteCreate = new OASDeliveryNoteCreate();
        Map<String, String> x-property-mappings = deliveryNoteCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
