@isTest
private class OASContactInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASContactInfo contactInfo1 = OASContactInfo.getExample();
        OASContactInfo contactInfo2 = contactInfo1;
        OASContactInfo contactInfo3 = new OASContactInfo();
        OASContactInfo contactInfo4 = contactInfo3;

        System.assert(contactInfo1.equals(contactInfo2));
        System.assert(contactInfo2.equals(contactInfo1));
        System.assert(contactInfo1.equals(contactInfo1));
        System.assert(contactInfo3.equals(contactInfo4));
        System.assert(contactInfo4.equals(contactInfo3));
        System.assert(contactInfo3.equals(contactInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContactInfo contactInfo1 = OASContactInfo.getExample();
        OASContactInfo contactInfo2 = OASContactInfo.getExample();
        OASContactInfo contactInfo3 = new OASContactInfo();
        OASContactInfo contactInfo4 = new OASContactInfo();

        System.assert(contactInfo1.equals(contactInfo2));
        System.assert(contactInfo2.equals(contactInfo1));
        System.assert(contactInfo3.equals(contactInfo4));
        System.assert(contactInfo4.equals(contactInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContactInfo contactInfo1 = OASContactInfo.getExample();
        OASContactInfo contactInfo2 = new OASContactInfo();

        System.assertEquals(false, contactInfo1.equals('foo'));
        System.assertEquals(false, contactInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContactInfo contactInfo1 = OASContactInfo.getExample();
        OASContactInfo contactInfo2 = new OASContactInfo();
        OASContactInfo contactInfo3;

        System.assertEquals(false, contactInfo1.equals(contactInfo3));
        System.assertEquals(false, contactInfo2.equals(contactInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContactInfo contactInfo1 = OASContactInfo.getExample();
        OASContactInfo contactInfo2 = new OASContactInfo();

        System.assertEquals(contactInfo1.hashCode(), contactInfo1.hashCode());
        System.assertEquals(contactInfo2.hashCode(), contactInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContactInfo contactInfo1 = OASContactInfo.getExample();
        OASContactInfo contactInfo2 = OASContactInfo.getExample();
        OASContactInfo contactInfo3 = new OASContactInfo();
        OASContactInfo contactInfo4 = new OASContactInfo();

        System.assert(contactInfo1.equals(contactInfo2));
        System.assert(contactInfo3.equals(contactInfo4));
        System.assertEquals(contactInfo1.hashCode(), contactInfo2.hashCode());
        System.assertEquals(contactInfo3.hashCode(), contactInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASContactInfo contactInfo = new OASContactInfo();
        Map<String, String> x-property-mappings = contactInfo.getx-property-mappings();
        System.assertEquals('r_hint', x-property-mappings.get('hint'));
    }
}
