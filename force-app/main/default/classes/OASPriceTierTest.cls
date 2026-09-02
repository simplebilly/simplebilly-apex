@isTest
private class OASPriceTierTest {
    @isTest
    private static void equalsSameInstance() {
        OASPriceTier priceTier1 = OASPriceTier.getExample();
        OASPriceTier priceTier2 = priceTier1;
        OASPriceTier priceTier3 = new OASPriceTier();
        OASPriceTier priceTier4 = priceTier3;

        System.assert(priceTier1.equals(priceTier2));
        System.assert(priceTier2.equals(priceTier1));
        System.assert(priceTier1.equals(priceTier1));
        System.assert(priceTier3.equals(priceTier4));
        System.assert(priceTier4.equals(priceTier3));
        System.assert(priceTier3.equals(priceTier3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPriceTier priceTier1 = OASPriceTier.getExample();
        OASPriceTier priceTier2 = OASPriceTier.getExample();
        OASPriceTier priceTier3 = new OASPriceTier();
        OASPriceTier priceTier4 = new OASPriceTier();

        System.assert(priceTier1.equals(priceTier2));
        System.assert(priceTier2.equals(priceTier1));
        System.assert(priceTier3.equals(priceTier4));
        System.assert(priceTier4.equals(priceTier3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPriceTier priceTier1 = OASPriceTier.getExample();
        OASPriceTier priceTier2 = new OASPriceTier();

        System.assertEquals(false, priceTier1.equals('foo'));
        System.assertEquals(false, priceTier2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPriceTier priceTier1 = OASPriceTier.getExample();
        OASPriceTier priceTier2 = new OASPriceTier();
        OASPriceTier priceTier3;

        System.assertEquals(false, priceTier1.equals(priceTier3));
        System.assertEquals(false, priceTier2.equals(priceTier3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPriceTier priceTier1 = OASPriceTier.getExample();
        OASPriceTier priceTier2 = new OASPriceTier();

        System.assertEquals(priceTier1.hashCode(), priceTier1.hashCode());
        System.assertEquals(priceTier2.hashCode(), priceTier2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPriceTier priceTier1 = OASPriceTier.getExample();
        OASPriceTier priceTier2 = OASPriceTier.getExample();
        OASPriceTier priceTier3 = new OASPriceTier();
        OASPriceTier priceTier4 = new OASPriceTier();

        System.assert(priceTier1.equals(priceTier2));
        System.assert(priceTier3.equals(priceTier4));
        System.assertEquals(priceTier1.hashCode(), priceTier2.hashCode());
        System.assertEquals(priceTier3.hashCode(), priceTier4.hashCode());
    }
}
