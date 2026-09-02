@isTest
private class OASGdprBillingInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprBillingInfo gdprBillingInfo1 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo2 = gdprBillingInfo1;
        OASGdprBillingInfo gdprBillingInfo3 = new OASGdprBillingInfo();
        OASGdprBillingInfo gdprBillingInfo4 = gdprBillingInfo3;

        System.assert(gdprBillingInfo1.equals(gdprBillingInfo2));
        System.assert(gdprBillingInfo2.equals(gdprBillingInfo1));
        System.assert(gdprBillingInfo1.equals(gdprBillingInfo1));
        System.assert(gdprBillingInfo3.equals(gdprBillingInfo4));
        System.assert(gdprBillingInfo4.equals(gdprBillingInfo3));
        System.assert(gdprBillingInfo3.equals(gdprBillingInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprBillingInfo gdprBillingInfo1 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo2 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo3 = new OASGdprBillingInfo();
        OASGdprBillingInfo gdprBillingInfo4 = new OASGdprBillingInfo();

        System.assert(gdprBillingInfo1.equals(gdprBillingInfo2));
        System.assert(gdprBillingInfo2.equals(gdprBillingInfo1));
        System.assert(gdprBillingInfo3.equals(gdprBillingInfo4));
        System.assert(gdprBillingInfo4.equals(gdprBillingInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprBillingInfo gdprBillingInfo1 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo2 = new OASGdprBillingInfo();

        System.assertEquals(false, gdprBillingInfo1.equals('foo'));
        System.assertEquals(false, gdprBillingInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprBillingInfo gdprBillingInfo1 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo2 = new OASGdprBillingInfo();
        OASGdprBillingInfo gdprBillingInfo3;

        System.assertEquals(false, gdprBillingInfo1.equals(gdprBillingInfo3));
        System.assertEquals(false, gdprBillingInfo2.equals(gdprBillingInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprBillingInfo gdprBillingInfo1 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo2 = new OASGdprBillingInfo();

        System.assertEquals(gdprBillingInfo1.hashCode(), gdprBillingInfo1.hashCode());
        System.assertEquals(gdprBillingInfo2.hashCode(), gdprBillingInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprBillingInfo gdprBillingInfo1 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo2 = OASGdprBillingInfo.getExample();
        OASGdprBillingInfo gdprBillingInfo3 = new OASGdprBillingInfo();
        OASGdprBillingInfo gdprBillingInfo4 = new OASGdprBillingInfo();

        System.assert(gdprBillingInfo1.equals(gdprBillingInfo2));
        System.assert(gdprBillingInfo3.equals(gdprBillingInfo4));
        System.assertEquals(gdprBillingInfo1.hashCode(), gdprBillingInfo2.hashCode());
        System.assertEquals(gdprBillingInfo3.hashCode(), gdprBillingInfo4.hashCode());
    }
}
