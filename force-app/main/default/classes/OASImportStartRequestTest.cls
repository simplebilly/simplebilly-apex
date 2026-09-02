@isTest
private class OASImportStartRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASImportStartRequest importStartRequest1 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest2 = importStartRequest1;
        OASImportStartRequest importStartRequest3 = new OASImportStartRequest();
        OASImportStartRequest importStartRequest4 = importStartRequest3;

        System.assert(importStartRequest1.equals(importStartRequest2));
        System.assert(importStartRequest2.equals(importStartRequest1));
        System.assert(importStartRequest1.equals(importStartRequest1));
        System.assert(importStartRequest3.equals(importStartRequest4));
        System.assert(importStartRequest4.equals(importStartRequest3));
        System.assert(importStartRequest3.equals(importStartRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImportStartRequest importStartRequest1 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest2 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest3 = new OASImportStartRequest();
        OASImportStartRequest importStartRequest4 = new OASImportStartRequest();

        System.assert(importStartRequest1.equals(importStartRequest2));
        System.assert(importStartRequest2.equals(importStartRequest1));
        System.assert(importStartRequest3.equals(importStartRequest4));
        System.assert(importStartRequest4.equals(importStartRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImportStartRequest importStartRequest1 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest2 = new OASImportStartRequest();

        System.assertEquals(false, importStartRequest1.equals('foo'));
        System.assertEquals(false, importStartRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImportStartRequest importStartRequest1 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest2 = new OASImportStartRequest();
        OASImportStartRequest importStartRequest3;

        System.assertEquals(false, importStartRequest1.equals(importStartRequest3));
        System.assertEquals(false, importStartRequest2.equals(importStartRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImportStartRequest importStartRequest1 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest2 = new OASImportStartRequest();

        System.assertEquals(importStartRequest1.hashCode(), importStartRequest1.hashCode());
        System.assertEquals(importStartRequest2.hashCode(), importStartRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImportStartRequest importStartRequest1 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest2 = OASImportStartRequest.getExample();
        OASImportStartRequest importStartRequest3 = new OASImportStartRequest();
        OASImportStartRequest importStartRequest4 = new OASImportStartRequest();

        System.assert(importStartRequest1.equals(importStartRequest2));
        System.assert(importStartRequest3.equals(importStartRequest4));
        System.assertEquals(importStartRequest1.hashCode(), importStartRequest2.hashCode());
        System.assertEquals(importStartRequest3.hashCode(), importStartRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASImportStartRequest importStartRequest = new OASImportStartRequest();
        System.assertEquals(new List<Integer>(), importStartRequest.years);
        System.assertEquals(null, importStartRequest.apiKey);
        System.assertEquals(null, importStartRequest.provider);
    }
}
