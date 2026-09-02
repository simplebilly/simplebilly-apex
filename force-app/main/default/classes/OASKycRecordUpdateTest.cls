@isTest
private class OASKycRecordUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASKycRecordUpdate kycRecordUpdate1 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate2 = kycRecordUpdate1;
        OASKycRecordUpdate kycRecordUpdate3 = new OASKycRecordUpdate();
        OASKycRecordUpdate kycRecordUpdate4 = kycRecordUpdate3;

        System.assert(kycRecordUpdate1.equals(kycRecordUpdate2));
        System.assert(kycRecordUpdate2.equals(kycRecordUpdate1));
        System.assert(kycRecordUpdate1.equals(kycRecordUpdate1));
        System.assert(kycRecordUpdate3.equals(kycRecordUpdate4));
        System.assert(kycRecordUpdate4.equals(kycRecordUpdate3));
        System.assert(kycRecordUpdate3.equals(kycRecordUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKycRecordUpdate kycRecordUpdate1 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate2 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate3 = new OASKycRecordUpdate();
        OASKycRecordUpdate kycRecordUpdate4 = new OASKycRecordUpdate();

        System.assert(kycRecordUpdate1.equals(kycRecordUpdate2));
        System.assert(kycRecordUpdate2.equals(kycRecordUpdate1));
        System.assert(kycRecordUpdate3.equals(kycRecordUpdate4));
        System.assert(kycRecordUpdate4.equals(kycRecordUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKycRecordUpdate kycRecordUpdate1 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate2 = new OASKycRecordUpdate();

        System.assertEquals(false, kycRecordUpdate1.equals('foo'));
        System.assertEquals(false, kycRecordUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKycRecordUpdate kycRecordUpdate1 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate2 = new OASKycRecordUpdate();
        OASKycRecordUpdate kycRecordUpdate3;

        System.assertEquals(false, kycRecordUpdate1.equals(kycRecordUpdate3));
        System.assertEquals(false, kycRecordUpdate2.equals(kycRecordUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKycRecordUpdate kycRecordUpdate1 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate2 = new OASKycRecordUpdate();

        System.assertEquals(kycRecordUpdate1.hashCode(), kycRecordUpdate1.hashCode());
        System.assertEquals(kycRecordUpdate2.hashCode(), kycRecordUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKycRecordUpdate kycRecordUpdate1 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate2 = OASKycRecordUpdate.getExample();
        OASKycRecordUpdate kycRecordUpdate3 = new OASKycRecordUpdate();
        OASKycRecordUpdate kycRecordUpdate4 = new OASKycRecordUpdate();

        System.assert(kycRecordUpdate1.equals(kycRecordUpdate2));
        System.assert(kycRecordUpdate3.equals(kycRecordUpdate4));
        System.assertEquals(kycRecordUpdate1.hashCode(), kycRecordUpdate2.hashCode());
        System.assertEquals(kycRecordUpdate3.hashCode(), kycRecordUpdate4.hashCode());
    }
}
