@isTest
private class OASDeliveryNoteTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryNote deliveryNote1 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote2 = deliveryNote1;
        OASDeliveryNote deliveryNote3 = new OASDeliveryNote();
        OASDeliveryNote deliveryNote4 = deliveryNote3;

        System.assert(deliveryNote1.equals(deliveryNote2));
        System.assert(deliveryNote2.equals(deliveryNote1));
        System.assert(deliveryNote1.equals(deliveryNote1));
        System.assert(deliveryNote3.equals(deliveryNote4));
        System.assert(deliveryNote4.equals(deliveryNote3));
        System.assert(deliveryNote3.equals(deliveryNote3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryNote deliveryNote1 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote2 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote3 = new OASDeliveryNote();
        OASDeliveryNote deliveryNote4 = new OASDeliveryNote();

        System.assert(deliveryNote1.equals(deliveryNote2));
        System.assert(deliveryNote2.equals(deliveryNote1));
        System.assert(deliveryNote3.equals(deliveryNote4));
        System.assert(deliveryNote4.equals(deliveryNote3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryNote deliveryNote1 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote2 = new OASDeliveryNote();

        System.assertEquals(false, deliveryNote1.equals('foo'));
        System.assertEquals(false, deliveryNote2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryNote deliveryNote1 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote2 = new OASDeliveryNote();
        OASDeliveryNote deliveryNote3;

        System.assertEquals(false, deliveryNote1.equals(deliveryNote3));
        System.assertEquals(false, deliveryNote2.equals(deliveryNote3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryNote deliveryNote1 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote2 = new OASDeliveryNote();

        System.assertEquals(deliveryNote1.hashCode(), deliveryNote1.hashCode());
        System.assertEquals(deliveryNote2.hashCode(), deliveryNote2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryNote deliveryNote1 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote2 = OASDeliveryNote.getExample();
        OASDeliveryNote deliveryNote3 = new OASDeliveryNote();
        OASDeliveryNote deliveryNote4 = new OASDeliveryNote();

        System.assert(deliveryNote1.equals(deliveryNote2));
        System.assert(deliveryNote3.equals(deliveryNote4));
        System.assertEquals(deliveryNote1.hashCode(), deliveryNote2.hashCode());
        System.assertEquals(deliveryNote3.hashCode(), deliveryNote4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeliveryNote deliveryNote = new OASDeliveryNote();
        Map<String, String> x-property-mappings = deliveryNote.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
