@isTest
private class OASProductVariantUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductVariantUpdate productVariantUpdate1 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate2 = productVariantUpdate1;
        OASProductVariantUpdate productVariantUpdate3 = new OASProductVariantUpdate();
        OASProductVariantUpdate productVariantUpdate4 = productVariantUpdate3;

        System.assert(productVariantUpdate1.equals(productVariantUpdate2));
        System.assert(productVariantUpdate2.equals(productVariantUpdate1));
        System.assert(productVariantUpdate1.equals(productVariantUpdate1));
        System.assert(productVariantUpdate3.equals(productVariantUpdate4));
        System.assert(productVariantUpdate4.equals(productVariantUpdate3));
        System.assert(productVariantUpdate3.equals(productVariantUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductVariantUpdate productVariantUpdate1 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate2 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate3 = new OASProductVariantUpdate();
        OASProductVariantUpdate productVariantUpdate4 = new OASProductVariantUpdate();

        System.assert(productVariantUpdate1.equals(productVariantUpdate2));
        System.assert(productVariantUpdate2.equals(productVariantUpdate1));
        System.assert(productVariantUpdate3.equals(productVariantUpdate4));
        System.assert(productVariantUpdate4.equals(productVariantUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductVariantUpdate productVariantUpdate1 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate2 = new OASProductVariantUpdate();

        System.assertEquals(false, productVariantUpdate1.equals('foo'));
        System.assertEquals(false, productVariantUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductVariantUpdate productVariantUpdate1 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate2 = new OASProductVariantUpdate();
        OASProductVariantUpdate productVariantUpdate3;

        System.assertEquals(false, productVariantUpdate1.equals(productVariantUpdate3));
        System.assertEquals(false, productVariantUpdate2.equals(productVariantUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductVariantUpdate productVariantUpdate1 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate2 = new OASProductVariantUpdate();

        System.assertEquals(productVariantUpdate1.hashCode(), productVariantUpdate1.hashCode());
        System.assertEquals(productVariantUpdate2.hashCode(), productVariantUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductVariantUpdate productVariantUpdate1 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate2 = OASProductVariantUpdate.getExample();
        OASProductVariantUpdate productVariantUpdate3 = new OASProductVariantUpdate();
        OASProductVariantUpdate productVariantUpdate4 = new OASProductVariantUpdate();

        System.assert(productVariantUpdate1.equals(productVariantUpdate2));
        System.assert(productVariantUpdate3.equals(productVariantUpdate4));
        System.assertEquals(productVariantUpdate1.hashCode(), productVariantUpdate2.hashCode());
        System.assertEquals(productVariantUpdate3.hashCode(), productVariantUpdate4.hashCode());
    }
}
