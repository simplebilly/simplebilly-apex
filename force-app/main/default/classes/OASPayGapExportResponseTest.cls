@isTest
private class OASPayGapExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayGapExportResponse payGapExportResponse1 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse2 = payGapExportResponse1;
        OASPayGapExportResponse payGapExportResponse3 = new OASPayGapExportResponse();
        OASPayGapExportResponse payGapExportResponse4 = payGapExportResponse3;

        System.assert(payGapExportResponse1.equals(payGapExportResponse2));
        System.assert(payGapExportResponse2.equals(payGapExportResponse1));
        System.assert(payGapExportResponse1.equals(payGapExportResponse1));
        System.assert(payGapExportResponse3.equals(payGapExportResponse4));
        System.assert(payGapExportResponse4.equals(payGapExportResponse3));
        System.assert(payGapExportResponse3.equals(payGapExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayGapExportResponse payGapExportResponse1 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse2 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse3 = new OASPayGapExportResponse();
        OASPayGapExportResponse payGapExportResponse4 = new OASPayGapExportResponse();

        System.assert(payGapExportResponse1.equals(payGapExportResponse2));
        System.assert(payGapExportResponse2.equals(payGapExportResponse1));
        System.assert(payGapExportResponse3.equals(payGapExportResponse4));
        System.assert(payGapExportResponse4.equals(payGapExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayGapExportResponse payGapExportResponse1 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse2 = new OASPayGapExportResponse();

        System.assertEquals(false, payGapExportResponse1.equals('foo'));
        System.assertEquals(false, payGapExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayGapExportResponse payGapExportResponse1 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse2 = new OASPayGapExportResponse();
        OASPayGapExportResponse payGapExportResponse3;

        System.assertEquals(false, payGapExportResponse1.equals(payGapExportResponse3));
        System.assertEquals(false, payGapExportResponse2.equals(payGapExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayGapExportResponse payGapExportResponse1 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse2 = new OASPayGapExportResponse();

        System.assertEquals(payGapExportResponse1.hashCode(), payGapExportResponse1.hashCode());
        System.assertEquals(payGapExportResponse2.hashCode(), payGapExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayGapExportResponse payGapExportResponse1 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse2 = OASPayGapExportResponse.getExample();
        OASPayGapExportResponse payGapExportResponse3 = new OASPayGapExportResponse();
        OASPayGapExportResponse payGapExportResponse4 = new OASPayGapExportResponse();

        System.assert(payGapExportResponse1.equals(payGapExportResponse2));
        System.assert(payGapExportResponse3.equals(payGapExportResponse4));
        System.assertEquals(payGapExportResponse1.hashCode(), payGapExportResponse2.hashCode());
        System.assertEquals(payGapExportResponse3.hashCode(), payGapExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayGapExportResponse payGapExportResponse = new OASPayGapExportResponse();
        Map<String, String> x-property-mappings = payGapExportResponse.getx-property-mappings();
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
