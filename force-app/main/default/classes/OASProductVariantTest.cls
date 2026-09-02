@isTest
private class OASProductVariantTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductVariant productVariant1 = OASProductVariant.getExample();
        OASProductVariant productVariant2 = productVariant1;
        OASProductVariant productVariant3 = new OASProductVariant();
        OASProductVariant productVariant4 = productVariant3;

        System.assert(productVariant1.equals(productVariant2));
        System.assert(productVariant2.equals(productVariant1));
        System.assert(productVariant1.equals(productVariant1));
        System.assert(productVariant3.equals(productVariant4));
        System.assert(productVariant4.equals(productVariant3));
        System.assert(productVariant3.equals(productVariant3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductVariant productVariant1 = OASProductVariant.getExample();
        OASProductVariant productVariant2 = OASProductVariant.getExample();
        OASProductVariant productVariant3 = new OASProductVariant();
        OASProductVariant productVariant4 = new OASProductVariant();

        System.assert(productVariant1.equals(productVariant2));
        System.assert(productVariant2.equals(productVariant1));
        System.assert(productVariant3.equals(productVariant4));
        System.assert(productVariant4.equals(productVariant3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductVariant productVariant1 = OASProductVariant.getExample();
        OASProductVariant productVariant2 = new OASProductVariant();

        System.assertEquals(false, productVariant1.equals('foo'));
        System.assertEquals(false, productVariant2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductVariant productVariant1 = OASProductVariant.getExample();
        OASProductVariant productVariant2 = new OASProductVariant();
        OASProductVariant productVariant3;

        System.assertEquals(false, productVariant1.equals(productVariant3));
        System.assertEquals(false, productVariant2.equals(productVariant3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductVariant productVariant1 = OASProductVariant.getExample();
        OASProductVariant productVariant2 = new OASProductVariant();

        System.assertEquals(productVariant1.hashCode(), productVariant1.hashCode());
        System.assertEquals(productVariant2.hashCode(), productVariant2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductVariant productVariant1 = OASProductVariant.getExample();
        OASProductVariant productVariant2 = OASProductVariant.getExample();
        OASProductVariant productVariant3 = new OASProductVariant();
        OASProductVariant productVariant4 = new OASProductVariant();

        System.assert(productVariant1.equals(productVariant2));
        System.assert(productVariant3.equals(productVariant4));
        System.assertEquals(productVariant1.hashCode(), productVariant2.hashCode());
        System.assertEquals(productVariant3.hashCode(), productVariant4.hashCode());
    }
}
