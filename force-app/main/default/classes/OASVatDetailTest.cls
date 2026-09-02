@isTest
private class OASVatDetailTest {
    @isTest
    private static void equalsSameInstance() {
        OASVatDetail vatDetail1 = OASVatDetail.getExample();
        OASVatDetail vatDetail2 = vatDetail1;
        OASVatDetail vatDetail3 = new OASVatDetail();
        OASVatDetail vatDetail4 = vatDetail3;

        System.assert(vatDetail1.equals(vatDetail2));
        System.assert(vatDetail2.equals(vatDetail1));
        System.assert(vatDetail1.equals(vatDetail1));
        System.assert(vatDetail3.equals(vatDetail4));
        System.assert(vatDetail4.equals(vatDetail3));
        System.assert(vatDetail3.equals(vatDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVatDetail vatDetail1 = OASVatDetail.getExample();
        OASVatDetail vatDetail2 = OASVatDetail.getExample();
        OASVatDetail vatDetail3 = new OASVatDetail();
        OASVatDetail vatDetail4 = new OASVatDetail();

        System.assert(vatDetail1.equals(vatDetail2));
        System.assert(vatDetail2.equals(vatDetail1));
        System.assert(vatDetail3.equals(vatDetail4));
        System.assert(vatDetail4.equals(vatDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVatDetail vatDetail1 = OASVatDetail.getExample();
        OASVatDetail vatDetail2 = new OASVatDetail();

        System.assertEquals(false, vatDetail1.equals('foo'));
        System.assertEquals(false, vatDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVatDetail vatDetail1 = OASVatDetail.getExample();
        OASVatDetail vatDetail2 = new OASVatDetail();
        OASVatDetail vatDetail3;

        System.assertEquals(false, vatDetail1.equals(vatDetail3));
        System.assertEquals(false, vatDetail2.equals(vatDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVatDetail vatDetail1 = OASVatDetail.getExample();
        OASVatDetail vatDetail2 = new OASVatDetail();

        System.assertEquals(vatDetail1.hashCode(), vatDetail1.hashCode());
        System.assertEquals(vatDetail2.hashCode(), vatDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVatDetail vatDetail1 = OASVatDetail.getExample();
        OASVatDetail vatDetail2 = OASVatDetail.getExample();
        OASVatDetail vatDetail3 = new OASVatDetail();
        OASVatDetail vatDetail4 = new OASVatDetail();

        System.assert(vatDetail1.equals(vatDetail2));
        System.assert(vatDetail3.equals(vatDetail4));
        System.assertEquals(vatDetail1.hashCode(), vatDetail2.hashCode());
        System.assertEquals(vatDetail3.hashCode(), vatDetail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASVatDetail vatDetail = new OASVatDetail();
        Map<String, String> x-property-mappings = vatDetail.getx-property-mappings();
        System.assertEquals('netAmount', x-property-mappings.get('net_amount'));
        System.assertEquals('taxAmount', x-property-mappings.get('tax_amount'));
        System.assertEquals('taxRate', x-property-mappings.get('tax_rate'));
    }
}
