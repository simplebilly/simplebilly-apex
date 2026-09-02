@isTest
private class OASKycRecordTest {
    @isTest
    private static void equalsSameInstance() {
        OASKycRecord kycRecord1 = OASKycRecord.getExample();
        OASKycRecord kycRecord2 = kycRecord1;
        OASKycRecord kycRecord3 = new OASKycRecord();
        OASKycRecord kycRecord4 = kycRecord3;

        System.assert(kycRecord1.equals(kycRecord2));
        System.assert(kycRecord2.equals(kycRecord1));
        System.assert(kycRecord1.equals(kycRecord1));
        System.assert(kycRecord3.equals(kycRecord4));
        System.assert(kycRecord4.equals(kycRecord3));
        System.assert(kycRecord3.equals(kycRecord3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKycRecord kycRecord1 = OASKycRecord.getExample();
        OASKycRecord kycRecord2 = OASKycRecord.getExample();
        OASKycRecord kycRecord3 = new OASKycRecord();
        OASKycRecord kycRecord4 = new OASKycRecord();

        System.assert(kycRecord1.equals(kycRecord2));
        System.assert(kycRecord2.equals(kycRecord1));
        System.assert(kycRecord3.equals(kycRecord4));
        System.assert(kycRecord4.equals(kycRecord3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKycRecord kycRecord1 = OASKycRecord.getExample();
        OASKycRecord kycRecord2 = new OASKycRecord();

        System.assertEquals(false, kycRecord1.equals('foo'));
        System.assertEquals(false, kycRecord2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKycRecord kycRecord1 = OASKycRecord.getExample();
        OASKycRecord kycRecord2 = new OASKycRecord();
        OASKycRecord kycRecord3;

        System.assertEquals(false, kycRecord1.equals(kycRecord3));
        System.assertEquals(false, kycRecord2.equals(kycRecord3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKycRecord kycRecord1 = OASKycRecord.getExample();
        OASKycRecord kycRecord2 = new OASKycRecord();

        System.assertEquals(kycRecord1.hashCode(), kycRecord1.hashCode());
        System.assertEquals(kycRecord2.hashCode(), kycRecord2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKycRecord kycRecord1 = OASKycRecord.getExample();
        OASKycRecord kycRecord2 = OASKycRecord.getExample();
        OASKycRecord kycRecord3 = new OASKycRecord();
        OASKycRecord kycRecord4 = new OASKycRecord();

        System.assert(kycRecord1.equals(kycRecord2));
        System.assert(kycRecord3.equals(kycRecord4));
        System.assertEquals(kycRecord1.hashCode(), kycRecord2.hashCode());
        System.assertEquals(kycRecord3.hashCode(), kycRecord4.hashCode());
    }
}
