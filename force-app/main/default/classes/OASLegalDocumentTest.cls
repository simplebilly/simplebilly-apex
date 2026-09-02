@isTest
private class OASLegalDocumentTest {
    @isTest
    private static void equalsSameInstance() {
        OASLegalDocument legalDocument1 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument2 = legalDocument1;
        OASLegalDocument legalDocument3 = new OASLegalDocument();
        OASLegalDocument legalDocument4 = legalDocument3;

        System.assert(legalDocument1.equals(legalDocument2));
        System.assert(legalDocument2.equals(legalDocument1));
        System.assert(legalDocument1.equals(legalDocument1));
        System.assert(legalDocument3.equals(legalDocument4));
        System.assert(legalDocument4.equals(legalDocument3));
        System.assert(legalDocument3.equals(legalDocument3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLegalDocument legalDocument1 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument2 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument3 = new OASLegalDocument();
        OASLegalDocument legalDocument4 = new OASLegalDocument();

        System.assert(legalDocument1.equals(legalDocument2));
        System.assert(legalDocument2.equals(legalDocument1));
        System.assert(legalDocument3.equals(legalDocument4));
        System.assert(legalDocument4.equals(legalDocument3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLegalDocument legalDocument1 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument2 = new OASLegalDocument();

        System.assertEquals(false, legalDocument1.equals('foo'));
        System.assertEquals(false, legalDocument2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLegalDocument legalDocument1 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument2 = new OASLegalDocument();
        OASLegalDocument legalDocument3;

        System.assertEquals(false, legalDocument1.equals(legalDocument3));
        System.assertEquals(false, legalDocument2.equals(legalDocument3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLegalDocument legalDocument1 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument2 = new OASLegalDocument();

        System.assertEquals(legalDocument1.hashCode(), legalDocument1.hashCode());
        System.assertEquals(legalDocument2.hashCode(), legalDocument2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLegalDocument legalDocument1 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument2 = OASLegalDocument.getExample();
        OASLegalDocument legalDocument3 = new OASLegalDocument();
        OASLegalDocument legalDocument4 = new OASLegalDocument();

        System.assert(legalDocument1.equals(legalDocument2));
        System.assert(legalDocument3.equals(legalDocument4));
        System.assertEquals(legalDocument1.hashCode(), legalDocument2.hashCode());
        System.assertEquals(legalDocument3.hashCode(), legalDocument4.hashCode());
    }
}
