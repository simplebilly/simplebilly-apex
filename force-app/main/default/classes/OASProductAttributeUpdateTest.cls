@isTest
private class OASProductAttributeUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductAttributeUpdate productAttributeUpdate1 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate2 = productAttributeUpdate1;
        OASProductAttributeUpdate productAttributeUpdate3 = new OASProductAttributeUpdate();
        OASProductAttributeUpdate productAttributeUpdate4 = productAttributeUpdate3;

        System.assert(productAttributeUpdate1.equals(productAttributeUpdate2));
        System.assert(productAttributeUpdate2.equals(productAttributeUpdate1));
        System.assert(productAttributeUpdate1.equals(productAttributeUpdate1));
        System.assert(productAttributeUpdate3.equals(productAttributeUpdate4));
        System.assert(productAttributeUpdate4.equals(productAttributeUpdate3));
        System.assert(productAttributeUpdate3.equals(productAttributeUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductAttributeUpdate productAttributeUpdate1 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate2 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate3 = new OASProductAttributeUpdate();
        OASProductAttributeUpdate productAttributeUpdate4 = new OASProductAttributeUpdate();

        System.assert(productAttributeUpdate1.equals(productAttributeUpdate2));
        System.assert(productAttributeUpdate2.equals(productAttributeUpdate1));
        System.assert(productAttributeUpdate3.equals(productAttributeUpdate4));
        System.assert(productAttributeUpdate4.equals(productAttributeUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductAttributeUpdate productAttributeUpdate1 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate2 = new OASProductAttributeUpdate();

        System.assertEquals(false, productAttributeUpdate1.equals('foo'));
        System.assertEquals(false, productAttributeUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductAttributeUpdate productAttributeUpdate1 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate2 = new OASProductAttributeUpdate();
        OASProductAttributeUpdate productAttributeUpdate3;

        System.assertEquals(false, productAttributeUpdate1.equals(productAttributeUpdate3));
        System.assertEquals(false, productAttributeUpdate2.equals(productAttributeUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductAttributeUpdate productAttributeUpdate1 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate2 = new OASProductAttributeUpdate();

        System.assertEquals(productAttributeUpdate1.hashCode(), productAttributeUpdate1.hashCode());
        System.assertEquals(productAttributeUpdate2.hashCode(), productAttributeUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductAttributeUpdate productAttributeUpdate1 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate2 = OASProductAttributeUpdate.getExample();
        OASProductAttributeUpdate productAttributeUpdate3 = new OASProductAttributeUpdate();
        OASProductAttributeUpdate productAttributeUpdate4 = new OASProductAttributeUpdate();

        System.assert(productAttributeUpdate1.equals(productAttributeUpdate2));
        System.assert(productAttributeUpdate3.equals(productAttributeUpdate4));
        System.assertEquals(productAttributeUpdate1.hashCode(), productAttributeUpdate2.hashCode());
        System.assertEquals(productAttributeUpdate3.hashCode(), productAttributeUpdate4.hashCode());
    }
}
