@isTest
private class OASVoucherTest {
    @isTest
    private static void equalsSameInstance() {
        OASVoucher voucher1 = OASVoucher.getExample();
        OASVoucher voucher2 = voucher1;
        OASVoucher voucher3 = new OASVoucher();
        OASVoucher voucher4 = voucher3;

        System.assert(voucher1.equals(voucher2));
        System.assert(voucher2.equals(voucher1));
        System.assert(voucher1.equals(voucher1));
        System.assert(voucher3.equals(voucher4));
        System.assert(voucher4.equals(voucher3));
        System.assert(voucher3.equals(voucher3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVoucher voucher1 = OASVoucher.getExample();
        OASVoucher voucher2 = OASVoucher.getExample();
        OASVoucher voucher3 = new OASVoucher();
        OASVoucher voucher4 = new OASVoucher();

        System.assert(voucher1.equals(voucher2));
        System.assert(voucher2.equals(voucher1));
        System.assert(voucher3.equals(voucher4));
        System.assert(voucher4.equals(voucher3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVoucher voucher1 = OASVoucher.getExample();
        OASVoucher voucher2 = new OASVoucher();

        System.assertEquals(false, voucher1.equals('foo'));
        System.assertEquals(false, voucher2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVoucher voucher1 = OASVoucher.getExample();
        OASVoucher voucher2 = new OASVoucher();
        OASVoucher voucher3;

        System.assertEquals(false, voucher1.equals(voucher3));
        System.assertEquals(false, voucher2.equals(voucher3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVoucher voucher1 = OASVoucher.getExample();
        OASVoucher voucher2 = new OASVoucher();

        System.assertEquals(voucher1.hashCode(), voucher1.hashCode());
        System.assertEquals(voucher2.hashCode(), voucher2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVoucher voucher1 = OASVoucher.getExample();
        OASVoucher voucher2 = OASVoucher.getExample();
        OASVoucher voucher3 = new OASVoucher();
        OASVoucher voucher4 = new OASVoucher();

        System.assert(voucher1.equals(voucher2));
        System.assert(voucher3.equals(voucher4));
        System.assertEquals(voucher1.hashCode(), voucher2.hashCode());
        System.assertEquals(voucher3.hashCode(), voucher4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASVoucher voucher = new OASVoucher();
        Map<String, String> x-property-mappings = voucher.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
