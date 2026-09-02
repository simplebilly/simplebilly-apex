@isTest
private class OASApiResponseGdprExportTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseGdprExport apiResponseGdprExport1 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport2 = apiResponseGdprExport1;
        OASApiResponseGdprExport apiResponseGdprExport3 = new OASApiResponseGdprExport();
        OASApiResponseGdprExport apiResponseGdprExport4 = apiResponseGdprExport3;

        System.assert(apiResponseGdprExport1.equals(apiResponseGdprExport2));
        System.assert(apiResponseGdprExport2.equals(apiResponseGdprExport1));
        System.assert(apiResponseGdprExport1.equals(apiResponseGdprExport1));
        System.assert(apiResponseGdprExport3.equals(apiResponseGdprExport4));
        System.assert(apiResponseGdprExport4.equals(apiResponseGdprExport3));
        System.assert(apiResponseGdprExport3.equals(apiResponseGdprExport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseGdprExport apiResponseGdprExport1 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport2 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport3 = new OASApiResponseGdprExport();
        OASApiResponseGdprExport apiResponseGdprExport4 = new OASApiResponseGdprExport();

        System.assert(apiResponseGdprExport1.equals(apiResponseGdprExport2));
        System.assert(apiResponseGdprExport2.equals(apiResponseGdprExport1));
        System.assert(apiResponseGdprExport3.equals(apiResponseGdprExport4));
        System.assert(apiResponseGdprExport4.equals(apiResponseGdprExport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseGdprExport apiResponseGdprExport1 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport2 = new OASApiResponseGdprExport();

        System.assertEquals(false, apiResponseGdprExport1.equals('foo'));
        System.assertEquals(false, apiResponseGdprExport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseGdprExport apiResponseGdprExport1 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport2 = new OASApiResponseGdprExport();
        OASApiResponseGdprExport apiResponseGdprExport3;

        System.assertEquals(false, apiResponseGdprExport1.equals(apiResponseGdprExport3));
        System.assertEquals(false, apiResponseGdprExport2.equals(apiResponseGdprExport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseGdprExport apiResponseGdprExport1 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport2 = new OASApiResponseGdprExport();

        System.assertEquals(apiResponseGdprExport1.hashCode(), apiResponseGdprExport1.hashCode());
        System.assertEquals(apiResponseGdprExport2.hashCode(), apiResponseGdprExport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseGdprExport apiResponseGdprExport1 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport2 = OASApiResponseGdprExport.getExample();
        OASApiResponseGdprExport apiResponseGdprExport3 = new OASApiResponseGdprExport();
        OASApiResponseGdprExport apiResponseGdprExport4 = new OASApiResponseGdprExport();

        System.assert(apiResponseGdprExport1.equals(apiResponseGdprExport2));
        System.assert(apiResponseGdprExport3.equals(apiResponseGdprExport4));
        System.assertEquals(apiResponseGdprExport1.hashCode(), apiResponseGdprExport2.hashCode());
        System.assertEquals(apiResponseGdprExport3.hashCode(), apiResponseGdprExport4.hashCode());
    }
}
