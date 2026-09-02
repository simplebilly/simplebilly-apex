@isTest
private class OASPrintLabelResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPrintLabelResponse printLabelResponse1 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse2 = printLabelResponse1;
        OASPrintLabelResponse printLabelResponse3 = new OASPrintLabelResponse();
        OASPrintLabelResponse printLabelResponse4 = printLabelResponse3;

        System.assert(printLabelResponse1.equals(printLabelResponse2));
        System.assert(printLabelResponse2.equals(printLabelResponse1));
        System.assert(printLabelResponse1.equals(printLabelResponse1));
        System.assert(printLabelResponse3.equals(printLabelResponse4));
        System.assert(printLabelResponse4.equals(printLabelResponse3));
        System.assert(printLabelResponse3.equals(printLabelResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPrintLabelResponse printLabelResponse1 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse2 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse3 = new OASPrintLabelResponse();
        OASPrintLabelResponse printLabelResponse4 = new OASPrintLabelResponse();

        System.assert(printLabelResponse1.equals(printLabelResponse2));
        System.assert(printLabelResponse2.equals(printLabelResponse1));
        System.assert(printLabelResponse3.equals(printLabelResponse4));
        System.assert(printLabelResponse4.equals(printLabelResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPrintLabelResponse printLabelResponse1 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse2 = new OASPrintLabelResponse();

        System.assertEquals(false, printLabelResponse1.equals('foo'));
        System.assertEquals(false, printLabelResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPrintLabelResponse printLabelResponse1 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse2 = new OASPrintLabelResponse();
        OASPrintLabelResponse printLabelResponse3;

        System.assertEquals(false, printLabelResponse1.equals(printLabelResponse3));
        System.assertEquals(false, printLabelResponse2.equals(printLabelResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPrintLabelResponse printLabelResponse1 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse2 = new OASPrintLabelResponse();

        System.assertEquals(printLabelResponse1.hashCode(), printLabelResponse1.hashCode());
        System.assertEquals(printLabelResponse2.hashCode(), printLabelResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPrintLabelResponse printLabelResponse1 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse2 = OASPrintLabelResponse.getExample();
        OASPrintLabelResponse printLabelResponse3 = new OASPrintLabelResponse();
        OASPrintLabelResponse printLabelResponse4 = new OASPrintLabelResponse();

        System.assert(printLabelResponse1.equals(printLabelResponse2));
        System.assert(printLabelResponse3.equals(printLabelResponse4));
        System.assertEquals(printLabelResponse1.hashCode(), printLabelResponse2.hashCode());
        System.assertEquals(printLabelResponse3.hashCode(), printLabelResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPrintLabelResponse printLabelResponse = new OASPrintLabelResponse();
        Map<String, String> x-property-mappings = printLabelResponse.getx-property-mappings();
        System.assertEquals('labelUrl', x-property-mappings.get('label_url'));
        System.assertEquals('trackingNumber', x-property-mappings.get('tracking_number'));
    }
}
