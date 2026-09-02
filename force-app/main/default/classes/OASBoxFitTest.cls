@isTest
private class OASBoxFitTest {
    @isTest
    private static void equalsSameInstance() {
        OASBoxFit boxFit1 = OASBoxFit.getExample();
        OASBoxFit boxFit2 = boxFit1;
        OASBoxFit boxFit3 = new OASBoxFit();
        OASBoxFit boxFit4 = boxFit3;

        System.assert(boxFit1.equals(boxFit2));
        System.assert(boxFit2.equals(boxFit1));
        System.assert(boxFit1.equals(boxFit1));
        System.assert(boxFit3.equals(boxFit4));
        System.assert(boxFit4.equals(boxFit3));
        System.assert(boxFit3.equals(boxFit3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBoxFit boxFit1 = OASBoxFit.getExample();
        OASBoxFit boxFit2 = OASBoxFit.getExample();
        OASBoxFit boxFit3 = new OASBoxFit();
        OASBoxFit boxFit4 = new OASBoxFit();

        System.assert(boxFit1.equals(boxFit2));
        System.assert(boxFit2.equals(boxFit1));
        System.assert(boxFit3.equals(boxFit4));
        System.assert(boxFit4.equals(boxFit3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBoxFit boxFit1 = OASBoxFit.getExample();
        OASBoxFit boxFit2 = new OASBoxFit();

        System.assertEquals(false, boxFit1.equals('foo'));
        System.assertEquals(false, boxFit2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBoxFit boxFit1 = OASBoxFit.getExample();
        OASBoxFit boxFit2 = new OASBoxFit();
        OASBoxFit boxFit3;

        System.assertEquals(false, boxFit1.equals(boxFit3));
        System.assertEquals(false, boxFit2.equals(boxFit3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBoxFit boxFit1 = OASBoxFit.getExample();
        OASBoxFit boxFit2 = new OASBoxFit();

        System.assertEquals(boxFit1.hashCode(), boxFit1.hashCode());
        System.assertEquals(boxFit2.hashCode(), boxFit2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBoxFit boxFit1 = OASBoxFit.getExample();
        OASBoxFit boxFit2 = OASBoxFit.getExample();
        OASBoxFit boxFit3 = new OASBoxFit();
        OASBoxFit boxFit4 = new OASBoxFit();

        System.assert(boxFit1.equals(boxFit2));
        System.assert(boxFit3.equals(boxFit4));
        System.assertEquals(boxFit1.hashCode(), boxFit2.hashCode());
        System.assertEquals(boxFit3.hashCode(), boxFit4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBoxFit boxFit = new OASBoxFit();
        Map<String, String> x-property-mappings = boxFit.getx-property-mappings();
        System.assertEquals('heightCm', x-property-mappings.get('height_cm'));
        System.assertEquals('itemCount', x-property-mappings.get('item_count'));
        System.assertEquals('lengthCm', x-property-mappings.get('length_cm'));
        System.assertEquals('volumeCm3', x-property-mappings.get('volume_cm3'));
        System.assertEquals('widthCm', x-property-mappings.get('width_cm'));
    }
}
