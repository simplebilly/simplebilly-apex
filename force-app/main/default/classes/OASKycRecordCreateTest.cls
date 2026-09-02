@isTest
private class OASKycRecordCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASKycRecordCreate kycRecordCreate1 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate2 = kycRecordCreate1;
        OASKycRecordCreate kycRecordCreate3 = new OASKycRecordCreate();
        OASKycRecordCreate kycRecordCreate4 = kycRecordCreate3;

        System.assert(kycRecordCreate1.equals(kycRecordCreate2));
        System.assert(kycRecordCreate2.equals(kycRecordCreate1));
        System.assert(kycRecordCreate1.equals(kycRecordCreate1));
        System.assert(kycRecordCreate3.equals(kycRecordCreate4));
        System.assert(kycRecordCreate4.equals(kycRecordCreate3));
        System.assert(kycRecordCreate3.equals(kycRecordCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKycRecordCreate kycRecordCreate1 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate2 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate3 = new OASKycRecordCreate();
        OASKycRecordCreate kycRecordCreate4 = new OASKycRecordCreate();

        System.assert(kycRecordCreate1.equals(kycRecordCreate2));
        System.assert(kycRecordCreate2.equals(kycRecordCreate1));
        System.assert(kycRecordCreate3.equals(kycRecordCreate4));
        System.assert(kycRecordCreate4.equals(kycRecordCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKycRecordCreate kycRecordCreate1 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate2 = new OASKycRecordCreate();

        System.assertEquals(false, kycRecordCreate1.equals('foo'));
        System.assertEquals(false, kycRecordCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKycRecordCreate kycRecordCreate1 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate2 = new OASKycRecordCreate();
        OASKycRecordCreate kycRecordCreate3;

        System.assertEquals(false, kycRecordCreate1.equals(kycRecordCreate3));
        System.assertEquals(false, kycRecordCreate2.equals(kycRecordCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKycRecordCreate kycRecordCreate1 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate2 = new OASKycRecordCreate();

        System.assertEquals(kycRecordCreate1.hashCode(), kycRecordCreate1.hashCode());
        System.assertEquals(kycRecordCreate2.hashCode(), kycRecordCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKycRecordCreate kycRecordCreate1 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate2 = OASKycRecordCreate.getExample();
        OASKycRecordCreate kycRecordCreate3 = new OASKycRecordCreate();
        OASKycRecordCreate kycRecordCreate4 = new OASKycRecordCreate();

        System.assert(kycRecordCreate1.equals(kycRecordCreate2));
        System.assert(kycRecordCreate3.equals(kycRecordCreate4));
        System.assertEquals(kycRecordCreate1.hashCode(), kycRecordCreate2.hashCode());
        System.assertEquals(kycRecordCreate3.hashCode(), kycRecordCreate4.hashCode());
    }
}
