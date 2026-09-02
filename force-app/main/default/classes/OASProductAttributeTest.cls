@isTest
private class OASProductAttributeTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductAttribute productAttribute1 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute2 = productAttribute1;
        OASProductAttribute productAttribute3 = new OASProductAttribute();
        OASProductAttribute productAttribute4 = productAttribute3;

        System.assert(productAttribute1.equals(productAttribute2));
        System.assert(productAttribute2.equals(productAttribute1));
        System.assert(productAttribute1.equals(productAttribute1));
        System.assert(productAttribute3.equals(productAttribute4));
        System.assert(productAttribute4.equals(productAttribute3));
        System.assert(productAttribute3.equals(productAttribute3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductAttribute productAttribute1 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute2 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute3 = new OASProductAttribute();
        OASProductAttribute productAttribute4 = new OASProductAttribute();

        System.assert(productAttribute1.equals(productAttribute2));
        System.assert(productAttribute2.equals(productAttribute1));
        System.assert(productAttribute3.equals(productAttribute4));
        System.assert(productAttribute4.equals(productAttribute3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductAttribute productAttribute1 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute2 = new OASProductAttribute();

        System.assertEquals(false, productAttribute1.equals('foo'));
        System.assertEquals(false, productAttribute2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductAttribute productAttribute1 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute2 = new OASProductAttribute();
        OASProductAttribute productAttribute3;

        System.assertEquals(false, productAttribute1.equals(productAttribute3));
        System.assertEquals(false, productAttribute2.equals(productAttribute3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductAttribute productAttribute1 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute2 = new OASProductAttribute();

        System.assertEquals(productAttribute1.hashCode(), productAttribute1.hashCode());
        System.assertEquals(productAttribute2.hashCode(), productAttribute2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductAttribute productAttribute1 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute2 = OASProductAttribute.getExample();
        OASProductAttribute productAttribute3 = new OASProductAttribute();
        OASProductAttribute productAttribute4 = new OASProductAttribute();

        System.assert(productAttribute1.equals(productAttribute2));
        System.assert(productAttribute3.equals(productAttribute4));
        System.assertEquals(productAttribute1.hashCode(), productAttribute2.hashCode());
        System.assertEquals(productAttribute3.hashCode(), productAttribute4.hashCode());
    }
}
