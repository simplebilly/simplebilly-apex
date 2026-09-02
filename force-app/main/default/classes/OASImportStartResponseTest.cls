@isTest
private class OASImportStartResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASImportStartResponse importStartResponse1 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse2 = importStartResponse1;
        OASImportStartResponse importStartResponse3 = new OASImportStartResponse();
        OASImportStartResponse importStartResponse4 = importStartResponse3;

        System.assert(importStartResponse1.equals(importStartResponse2));
        System.assert(importStartResponse2.equals(importStartResponse1));
        System.assert(importStartResponse1.equals(importStartResponse1));
        System.assert(importStartResponse3.equals(importStartResponse4));
        System.assert(importStartResponse4.equals(importStartResponse3));
        System.assert(importStartResponse3.equals(importStartResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImportStartResponse importStartResponse1 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse2 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse3 = new OASImportStartResponse();
        OASImportStartResponse importStartResponse4 = new OASImportStartResponse();

        System.assert(importStartResponse1.equals(importStartResponse2));
        System.assert(importStartResponse2.equals(importStartResponse1));
        System.assert(importStartResponse3.equals(importStartResponse4));
        System.assert(importStartResponse4.equals(importStartResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImportStartResponse importStartResponse1 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse2 = new OASImportStartResponse();

        System.assertEquals(false, importStartResponse1.equals('foo'));
        System.assertEquals(false, importStartResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImportStartResponse importStartResponse1 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse2 = new OASImportStartResponse();
        OASImportStartResponse importStartResponse3;

        System.assertEquals(false, importStartResponse1.equals(importStartResponse3));
        System.assertEquals(false, importStartResponse2.equals(importStartResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImportStartResponse importStartResponse1 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse2 = new OASImportStartResponse();

        System.assertEquals(importStartResponse1.hashCode(), importStartResponse1.hashCode());
        System.assertEquals(importStartResponse2.hashCode(), importStartResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImportStartResponse importStartResponse1 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse2 = OASImportStartResponse.getExample();
        OASImportStartResponse importStartResponse3 = new OASImportStartResponse();
        OASImportStartResponse importStartResponse4 = new OASImportStartResponse();

        System.assert(importStartResponse1.equals(importStartResponse2));
        System.assert(importStartResponse3.equals(importStartResponse4));
        System.assertEquals(importStartResponse1.hashCode(), importStartResponse2.hashCode());
        System.assertEquals(importStartResponse3.hashCode(), importStartResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASImportStartResponse importStartResponse = new OASImportStartResponse();
        Map<String, String> x-property-mappings = importStartResponse.getx-property-mappings();
        System.assertEquals('jobId', x-property-mappings.get('job_id'));
    }
}
