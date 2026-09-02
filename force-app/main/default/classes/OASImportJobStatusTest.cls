@isTest
private class OASImportJobStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASImportJobStatus importJobStatus1 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus2 = importJobStatus1;
        OASImportJobStatus importJobStatus3 = new OASImportJobStatus();
        OASImportJobStatus importJobStatus4 = importJobStatus3;

        System.assert(importJobStatus1.equals(importJobStatus2));
        System.assert(importJobStatus2.equals(importJobStatus1));
        System.assert(importJobStatus1.equals(importJobStatus1));
        System.assert(importJobStatus3.equals(importJobStatus4));
        System.assert(importJobStatus4.equals(importJobStatus3));
        System.assert(importJobStatus3.equals(importJobStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImportJobStatus importJobStatus1 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus2 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus3 = new OASImportJobStatus();
        OASImportJobStatus importJobStatus4 = new OASImportJobStatus();

        System.assert(importJobStatus1.equals(importJobStatus2));
        System.assert(importJobStatus2.equals(importJobStatus1));
        System.assert(importJobStatus3.equals(importJobStatus4));
        System.assert(importJobStatus4.equals(importJobStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImportJobStatus importJobStatus1 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus2 = new OASImportJobStatus();

        System.assertEquals(false, importJobStatus1.equals('foo'));
        System.assertEquals(false, importJobStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImportJobStatus importJobStatus1 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus2 = new OASImportJobStatus();
        OASImportJobStatus importJobStatus3;

        System.assertEquals(false, importJobStatus1.equals(importJobStatus3));
        System.assertEquals(false, importJobStatus2.equals(importJobStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImportJobStatus importJobStatus1 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus2 = new OASImportJobStatus();

        System.assertEquals(importJobStatus1.hashCode(), importJobStatus1.hashCode());
        System.assertEquals(importJobStatus2.hashCode(), importJobStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImportJobStatus importJobStatus1 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus2 = OASImportJobStatus.getExample();
        OASImportJobStatus importJobStatus3 = new OASImportJobStatus();
        OASImportJobStatus importJobStatus4 = new OASImportJobStatus();

        System.assert(importJobStatus1.equals(importJobStatus2));
        System.assert(importJobStatus3.equals(importJobStatus4));
        System.assertEquals(importJobStatus1.hashCode(), importJobStatus2.hashCode());
        System.assertEquals(importJobStatus3.hashCode(), importJobStatus4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASImportJobStatus importJobStatus = new OASImportJobStatus();
        Map<String, String> x-property-mappings = importJobStatus.getx-property-mappings();
        System.assertEquals('jobId', x-property-mappings.get('job_id'));
    }
}
