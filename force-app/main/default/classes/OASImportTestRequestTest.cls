@isTest
private class OASImportTestRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASImportTestRequest importTestRequest1 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest2 = importTestRequest1;
        OASImportTestRequest importTestRequest3 = new OASImportTestRequest();
        OASImportTestRequest importTestRequest4 = importTestRequest3;

        System.assert(importTestRequest1.equals(importTestRequest2));
        System.assert(importTestRequest2.equals(importTestRequest1));
        System.assert(importTestRequest1.equals(importTestRequest1));
        System.assert(importTestRequest3.equals(importTestRequest4));
        System.assert(importTestRequest4.equals(importTestRequest3));
        System.assert(importTestRequest3.equals(importTestRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImportTestRequest importTestRequest1 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest2 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest3 = new OASImportTestRequest();
        OASImportTestRequest importTestRequest4 = new OASImportTestRequest();

        System.assert(importTestRequest1.equals(importTestRequest2));
        System.assert(importTestRequest2.equals(importTestRequest1));
        System.assert(importTestRequest3.equals(importTestRequest4));
        System.assert(importTestRequest4.equals(importTestRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImportTestRequest importTestRequest1 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest2 = new OASImportTestRequest();

        System.assertEquals(false, importTestRequest1.equals('foo'));
        System.assertEquals(false, importTestRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImportTestRequest importTestRequest1 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest2 = new OASImportTestRequest();
        OASImportTestRequest importTestRequest3;

        System.assertEquals(false, importTestRequest1.equals(importTestRequest3));
        System.assertEquals(false, importTestRequest2.equals(importTestRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImportTestRequest importTestRequest1 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest2 = new OASImportTestRequest();

        System.assertEquals(importTestRequest1.hashCode(), importTestRequest1.hashCode());
        System.assertEquals(importTestRequest2.hashCode(), importTestRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImportTestRequest importTestRequest1 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest2 = OASImportTestRequest.getExample();
        OASImportTestRequest importTestRequest3 = new OASImportTestRequest();
        OASImportTestRequest importTestRequest4 = new OASImportTestRequest();

        System.assert(importTestRequest1.equals(importTestRequest2));
        System.assert(importTestRequest3.equals(importTestRequest4));
        System.assertEquals(importTestRequest1.hashCode(), importTestRequest2.hashCode());
        System.assertEquals(importTestRequest3.hashCode(), importTestRequest4.hashCode());
    }
}
