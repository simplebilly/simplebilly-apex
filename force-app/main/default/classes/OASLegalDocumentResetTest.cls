@isTest
private class OASLegalDocumentResetTest {
    @isTest
    private static void equalsSameInstance() {
        OASLegalDocumentReset legalDocumentReset1 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset2 = legalDocumentReset1;
        OASLegalDocumentReset legalDocumentReset3 = new OASLegalDocumentReset();
        OASLegalDocumentReset legalDocumentReset4 = legalDocumentReset3;

        System.assert(legalDocumentReset1.equals(legalDocumentReset2));
        System.assert(legalDocumentReset2.equals(legalDocumentReset1));
        System.assert(legalDocumentReset1.equals(legalDocumentReset1));
        System.assert(legalDocumentReset3.equals(legalDocumentReset4));
        System.assert(legalDocumentReset4.equals(legalDocumentReset3));
        System.assert(legalDocumentReset3.equals(legalDocumentReset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLegalDocumentReset legalDocumentReset1 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset2 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset3 = new OASLegalDocumentReset();
        OASLegalDocumentReset legalDocumentReset4 = new OASLegalDocumentReset();

        System.assert(legalDocumentReset1.equals(legalDocumentReset2));
        System.assert(legalDocumentReset2.equals(legalDocumentReset1));
        System.assert(legalDocumentReset3.equals(legalDocumentReset4));
        System.assert(legalDocumentReset4.equals(legalDocumentReset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLegalDocumentReset legalDocumentReset1 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset2 = new OASLegalDocumentReset();

        System.assertEquals(false, legalDocumentReset1.equals('foo'));
        System.assertEquals(false, legalDocumentReset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLegalDocumentReset legalDocumentReset1 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset2 = new OASLegalDocumentReset();
        OASLegalDocumentReset legalDocumentReset3;

        System.assertEquals(false, legalDocumentReset1.equals(legalDocumentReset3));
        System.assertEquals(false, legalDocumentReset2.equals(legalDocumentReset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLegalDocumentReset legalDocumentReset1 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset2 = new OASLegalDocumentReset();

        System.assertEquals(legalDocumentReset1.hashCode(), legalDocumentReset1.hashCode());
        System.assertEquals(legalDocumentReset2.hashCode(), legalDocumentReset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLegalDocumentReset legalDocumentReset1 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset2 = OASLegalDocumentReset.getExample();
        OASLegalDocumentReset legalDocumentReset3 = new OASLegalDocumentReset();
        OASLegalDocumentReset legalDocumentReset4 = new OASLegalDocumentReset();

        System.assert(legalDocumentReset1.equals(legalDocumentReset2));
        System.assert(legalDocumentReset3.equals(legalDocumentReset4));
        System.assertEquals(legalDocumentReset1.hashCode(), legalDocumentReset2.hashCode());
        System.assertEquals(legalDocumentReset3.hashCode(), legalDocumentReset4.hashCode());
    }
}
