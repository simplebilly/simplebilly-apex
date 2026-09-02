@isTest
private class OASPrintDeliveryNoteResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse1 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse2 = printDeliveryNoteResponse1;
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse3 = new OASPrintDeliveryNoteResponse();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse4 = printDeliveryNoteResponse3;

        System.assert(printDeliveryNoteResponse1.equals(printDeliveryNoteResponse2));
        System.assert(printDeliveryNoteResponse2.equals(printDeliveryNoteResponse1));
        System.assert(printDeliveryNoteResponse1.equals(printDeliveryNoteResponse1));
        System.assert(printDeliveryNoteResponse3.equals(printDeliveryNoteResponse4));
        System.assert(printDeliveryNoteResponse4.equals(printDeliveryNoteResponse3));
        System.assert(printDeliveryNoteResponse3.equals(printDeliveryNoteResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse1 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse2 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse3 = new OASPrintDeliveryNoteResponse();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse4 = new OASPrintDeliveryNoteResponse();

        System.assert(printDeliveryNoteResponse1.equals(printDeliveryNoteResponse2));
        System.assert(printDeliveryNoteResponse2.equals(printDeliveryNoteResponse1));
        System.assert(printDeliveryNoteResponse3.equals(printDeliveryNoteResponse4));
        System.assert(printDeliveryNoteResponse4.equals(printDeliveryNoteResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse1 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse2 = new OASPrintDeliveryNoteResponse();

        System.assertEquals(false, printDeliveryNoteResponse1.equals('foo'));
        System.assertEquals(false, printDeliveryNoteResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse1 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse2 = new OASPrintDeliveryNoteResponse();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse3;

        System.assertEquals(false, printDeliveryNoteResponse1.equals(printDeliveryNoteResponse3));
        System.assertEquals(false, printDeliveryNoteResponse2.equals(printDeliveryNoteResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse1 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse2 = new OASPrintDeliveryNoteResponse();

        System.assertEquals(printDeliveryNoteResponse1.hashCode(), printDeliveryNoteResponse1.hashCode());
        System.assertEquals(printDeliveryNoteResponse2.hashCode(), printDeliveryNoteResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse1 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse2 = OASPrintDeliveryNoteResponse.getExample();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse3 = new OASPrintDeliveryNoteResponse();
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse4 = new OASPrintDeliveryNoteResponse();

        System.assert(printDeliveryNoteResponse1.equals(printDeliveryNoteResponse2));
        System.assert(printDeliveryNoteResponse3.equals(printDeliveryNoteResponse4));
        System.assertEquals(printDeliveryNoteResponse1.hashCode(), printDeliveryNoteResponse2.hashCode());
        System.assertEquals(printDeliveryNoteResponse3.hashCode(), printDeliveryNoteResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPrintDeliveryNoteResponse printDeliveryNoteResponse = new OASPrintDeliveryNoteResponse();
        Map<String, String> x-property-mappings = printDeliveryNoteResponse.getx-property-mappings();
        System.assertEquals('pdfUrl', x-property-mappings.get('pdf_url'));
    }
}
