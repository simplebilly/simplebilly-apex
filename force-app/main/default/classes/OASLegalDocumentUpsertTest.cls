@isTest
private class OASLegalDocumentUpsertTest {
    @isTest
    private static void equalsSameInstance() {
        OASLegalDocumentUpsert legalDocumentUpsert1 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert2 = legalDocumentUpsert1;
        OASLegalDocumentUpsert legalDocumentUpsert3 = new OASLegalDocumentUpsert();
        OASLegalDocumentUpsert legalDocumentUpsert4 = legalDocumentUpsert3;

        System.assert(legalDocumentUpsert1.equals(legalDocumentUpsert2));
        System.assert(legalDocumentUpsert2.equals(legalDocumentUpsert1));
        System.assert(legalDocumentUpsert1.equals(legalDocumentUpsert1));
        System.assert(legalDocumentUpsert3.equals(legalDocumentUpsert4));
        System.assert(legalDocumentUpsert4.equals(legalDocumentUpsert3));
        System.assert(legalDocumentUpsert3.equals(legalDocumentUpsert3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLegalDocumentUpsert legalDocumentUpsert1 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert2 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert3 = new OASLegalDocumentUpsert();
        OASLegalDocumentUpsert legalDocumentUpsert4 = new OASLegalDocumentUpsert();

        System.assert(legalDocumentUpsert1.equals(legalDocumentUpsert2));
        System.assert(legalDocumentUpsert2.equals(legalDocumentUpsert1));
        System.assert(legalDocumentUpsert3.equals(legalDocumentUpsert4));
        System.assert(legalDocumentUpsert4.equals(legalDocumentUpsert3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLegalDocumentUpsert legalDocumentUpsert1 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert2 = new OASLegalDocumentUpsert();

        System.assertEquals(false, legalDocumentUpsert1.equals('foo'));
        System.assertEquals(false, legalDocumentUpsert2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLegalDocumentUpsert legalDocumentUpsert1 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert2 = new OASLegalDocumentUpsert();
        OASLegalDocumentUpsert legalDocumentUpsert3;

        System.assertEquals(false, legalDocumentUpsert1.equals(legalDocumentUpsert3));
        System.assertEquals(false, legalDocumentUpsert2.equals(legalDocumentUpsert3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLegalDocumentUpsert legalDocumentUpsert1 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert2 = new OASLegalDocumentUpsert();

        System.assertEquals(legalDocumentUpsert1.hashCode(), legalDocumentUpsert1.hashCode());
        System.assertEquals(legalDocumentUpsert2.hashCode(), legalDocumentUpsert2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLegalDocumentUpsert legalDocumentUpsert1 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert2 = OASLegalDocumentUpsert.getExample();
        OASLegalDocumentUpsert legalDocumentUpsert3 = new OASLegalDocumentUpsert();
        OASLegalDocumentUpsert legalDocumentUpsert4 = new OASLegalDocumentUpsert();

        System.assert(legalDocumentUpsert1.equals(legalDocumentUpsert2));
        System.assert(legalDocumentUpsert3.equals(legalDocumentUpsert4));
        System.assertEquals(legalDocumentUpsert1.hashCode(), legalDocumentUpsert2.hashCode());
        System.assertEquals(legalDocumentUpsert3.hashCode(), legalDocumentUpsert4.hashCode());
    }
}
