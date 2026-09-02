@isTest
private class OASImportTestResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASImportTestResponse importTestResponse1 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse2 = importTestResponse1;
        OASImportTestResponse importTestResponse3 = new OASImportTestResponse();
        OASImportTestResponse importTestResponse4 = importTestResponse3;

        System.assert(importTestResponse1.equals(importTestResponse2));
        System.assert(importTestResponse2.equals(importTestResponse1));
        System.assert(importTestResponse1.equals(importTestResponse1));
        System.assert(importTestResponse3.equals(importTestResponse4));
        System.assert(importTestResponse4.equals(importTestResponse3));
        System.assert(importTestResponse3.equals(importTestResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImportTestResponse importTestResponse1 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse2 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse3 = new OASImportTestResponse();
        OASImportTestResponse importTestResponse4 = new OASImportTestResponse();

        System.assert(importTestResponse1.equals(importTestResponse2));
        System.assert(importTestResponse2.equals(importTestResponse1));
        System.assert(importTestResponse3.equals(importTestResponse4));
        System.assert(importTestResponse4.equals(importTestResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImportTestResponse importTestResponse1 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse2 = new OASImportTestResponse();

        System.assertEquals(false, importTestResponse1.equals('foo'));
        System.assertEquals(false, importTestResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImportTestResponse importTestResponse1 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse2 = new OASImportTestResponse();
        OASImportTestResponse importTestResponse3;

        System.assertEquals(false, importTestResponse1.equals(importTestResponse3));
        System.assertEquals(false, importTestResponse2.equals(importTestResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImportTestResponse importTestResponse1 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse2 = new OASImportTestResponse();

        System.assertEquals(importTestResponse1.hashCode(), importTestResponse1.hashCode());
        System.assertEquals(importTestResponse2.hashCode(), importTestResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImportTestResponse importTestResponse1 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse2 = OASImportTestResponse.getExample();
        OASImportTestResponse importTestResponse3 = new OASImportTestResponse();
        OASImportTestResponse importTestResponse4 = new OASImportTestResponse();

        System.assert(importTestResponse1.equals(importTestResponse2));
        System.assert(importTestResponse3.equals(importTestResponse4));
        System.assertEquals(importTestResponse1.hashCode(), importTestResponse2.hashCode());
        System.assertEquals(importTestResponse3.hashCode(), importTestResponse4.hashCode());
    }
}
