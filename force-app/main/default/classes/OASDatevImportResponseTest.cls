@isTest
private class OASDatevImportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDatevImportResponse datevImportResponse1 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse2 = datevImportResponse1;
        OASDatevImportResponse datevImportResponse3 = new OASDatevImportResponse();
        OASDatevImportResponse datevImportResponse4 = datevImportResponse3;

        System.assert(datevImportResponse1.equals(datevImportResponse2));
        System.assert(datevImportResponse2.equals(datevImportResponse1));
        System.assert(datevImportResponse1.equals(datevImportResponse1));
        System.assert(datevImportResponse3.equals(datevImportResponse4));
        System.assert(datevImportResponse4.equals(datevImportResponse3));
        System.assert(datevImportResponse3.equals(datevImportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDatevImportResponse datevImportResponse1 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse2 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse3 = new OASDatevImportResponse();
        OASDatevImportResponse datevImportResponse4 = new OASDatevImportResponse();

        System.assert(datevImportResponse1.equals(datevImportResponse2));
        System.assert(datevImportResponse2.equals(datevImportResponse1));
        System.assert(datevImportResponse3.equals(datevImportResponse4));
        System.assert(datevImportResponse4.equals(datevImportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDatevImportResponse datevImportResponse1 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse2 = new OASDatevImportResponse();

        System.assertEquals(false, datevImportResponse1.equals('foo'));
        System.assertEquals(false, datevImportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDatevImportResponse datevImportResponse1 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse2 = new OASDatevImportResponse();
        OASDatevImportResponse datevImportResponse3;

        System.assertEquals(false, datevImportResponse1.equals(datevImportResponse3));
        System.assertEquals(false, datevImportResponse2.equals(datevImportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDatevImportResponse datevImportResponse1 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse2 = new OASDatevImportResponse();

        System.assertEquals(datevImportResponse1.hashCode(), datevImportResponse1.hashCode());
        System.assertEquals(datevImportResponse2.hashCode(), datevImportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDatevImportResponse datevImportResponse1 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse2 = OASDatevImportResponse.getExample();
        OASDatevImportResponse datevImportResponse3 = new OASDatevImportResponse();
        OASDatevImportResponse datevImportResponse4 = new OASDatevImportResponse();

        System.assert(datevImportResponse1.equals(datevImportResponse2));
        System.assert(datevImportResponse3.equals(datevImportResponse4));
        System.assertEquals(datevImportResponse1.hashCode(), datevImportResponse2.hashCode());
        System.assertEquals(datevImportResponse3.hashCode(), datevImportResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDatevImportResponse datevImportResponse = new OASDatevImportResponse();
        System.assertEquals(new List<OASDatevImportRow>(), datevImportResponse.rows);
        System.assertEquals(null, datevImportResponse.count);
        System.assertEquals(null, datevImportResponse.filename);
    }
}
