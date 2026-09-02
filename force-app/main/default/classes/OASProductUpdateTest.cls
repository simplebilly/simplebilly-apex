@isTest
private class OASProductUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductUpdate productUpdate1 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate2 = productUpdate1;
        OASProductUpdate productUpdate3 = new OASProductUpdate();
        OASProductUpdate productUpdate4 = productUpdate3;

        System.assert(productUpdate1.equals(productUpdate2));
        System.assert(productUpdate2.equals(productUpdate1));
        System.assert(productUpdate1.equals(productUpdate1));
        System.assert(productUpdate3.equals(productUpdate4));
        System.assert(productUpdate4.equals(productUpdate3));
        System.assert(productUpdate3.equals(productUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductUpdate productUpdate1 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate2 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate3 = new OASProductUpdate();
        OASProductUpdate productUpdate4 = new OASProductUpdate();

        System.assert(productUpdate1.equals(productUpdate2));
        System.assert(productUpdate2.equals(productUpdate1));
        System.assert(productUpdate3.equals(productUpdate4));
        System.assert(productUpdate4.equals(productUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductUpdate productUpdate1 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate2 = new OASProductUpdate();

        System.assertEquals(false, productUpdate1.equals('foo'));
        System.assertEquals(false, productUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductUpdate productUpdate1 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate2 = new OASProductUpdate();
        OASProductUpdate productUpdate3;

        System.assertEquals(false, productUpdate1.equals(productUpdate3));
        System.assertEquals(false, productUpdate2.equals(productUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductUpdate productUpdate1 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate2 = new OASProductUpdate();

        System.assertEquals(productUpdate1.hashCode(), productUpdate1.hashCode());
        System.assertEquals(productUpdate2.hashCode(), productUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductUpdate productUpdate1 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate2 = OASProductUpdate.getExample();
        OASProductUpdate productUpdate3 = new OASProductUpdate();
        OASProductUpdate productUpdate4 = new OASProductUpdate();

        System.assert(productUpdate1.equals(productUpdate2));
        System.assert(productUpdate3.equals(productUpdate4));
        System.assertEquals(productUpdate1.hashCode(), productUpdate2.hashCode());
        System.assertEquals(productUpdate3.hashCode(), productUpdate4.hashCode());
    }
}
