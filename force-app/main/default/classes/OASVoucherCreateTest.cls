@isTest
private class OASVoucherCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASVoucherCreate voucherCreate1 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate2 = voucherCreate1;
        OASVoucherCreate voucherCreate3 = new OASVoucherCreate();
        OASVoucherCreate voucherCreate4 = voucherCreate3;

        System.assert(voucherCreate1.equals(voucherCreate2));
        System.assert(voucherCreate2.equals(voucherCreate1));
        System.assert(voucherCreate1.equals(voucherCreate1));
        System.assert(voucherCreate3.equals(voucherCreate4));
        System.assert(voucherCreate4.equals(voucherCreate3));
        System.assert(voucherCreate3.equals(voucherCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVoucherCreate voucherCreate1 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate2 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate3 = new OASVoucherCreate();
        OASVoucherCreate voucherCreate4 = new OASVoucherCreate();

        System.assert(voucherCreate1.equals(voucherCreate2));
        System.assert(voucherCreate2.equals(voucherCreate1));
        System.assert(voucherCreate3.equals(voucherCreate4));
        System.assert(voucherCreate4.equals(voucherCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVoucherCreate voucherCreate1 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate2 = new OASVoucherCreate();

        System.assertEquals(false, voucherCreate1.equals('foo'));
        System.assertEquals(false, voucherCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVoucherCreate voucherCreate1 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate2 = new OASVoucherCreate();
        OASVoucherCreate voucherCreate3;

        System.assertEquals(false, voucherCreate1.equals(voucherCreate3));
        System.assertEquals(false, voucherCreate2.equals(voucherCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVoucherCreate voucherCreate1 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate2 = new OASVoucherCreate();

        System.assertEquals(voucherCreate1.hashCode(), voucherCreate1.hashCode());
        System.assertEquals(voucherCreate2.hashCode(), voucherCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVoucherCreate voucherCreate1 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate2 = OASVoucherCreate.getExample();
        OASVoucherCreate voucherCreate3 = new OASVoucherCreate();
        OASVoucherCreate voucherCreate4 = new OASVoucherCreate();

        System.assert(voucherCreate1.equals(voucherCreate2));
        System.assert(voucherCreate3.equals(voucherCreate4));
        System.assertEquals(voucherCreate1.hashCode(), voucherCreate2.hashCode());
        System.assertEquals(voucherCreate3.hashCode(), voucherCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASVoucherCreate voucherCreate = new OASVoucherCreate();
        Map<String, String> x-property-mappings = voucherCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
