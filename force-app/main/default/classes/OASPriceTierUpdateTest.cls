@isTest
private class OASPriceTierUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPriceTierUpdate priceTierUpdate1 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate2 = priceTierUpdate1;
        OASPriceTierUpdate priceTierUpdate3 = new OASPriceTierUpdate();
        OASPriceTierUpdate priceTierUpdate4 = priceTierUpdate3;

        System.assert(priceTierUpdate1.equals(priceTierUpdate2));
        System.assert(priceTierUpdate2.equals(priceTierUpdate1));
        System.assert(priceTierUpdate1.equals(priceTierUpdate1));
        System.assert(priceTierUpdate3.equals(priceTierUpdate4));
        System.assert(priceTierUpdate4.equals(priceTierUpdate3));
        System.assert(priceTierUpdate3.equals(priceTierUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPriceTierUpdate priceTierUpdate1 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate2 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate3 = new OASPriceTierUpdate();
        OASPriceTierUpdate priceTierUpdate4 = new OASPriceTierUpdate();

        System.assert(priceTierUpdate1.equals(priceTierUpdate2));
        System.assert(priceTierUpdate2.equals(priceTierUpdate1));
        System.assert(priceTierUpdate3.equals(priceTierUpdate4));
        System.assert(priceTierUpdate4.equals(priceTierUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPriceTierUpdate priceTierUpdate1 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate2 = new OASPriceTierUpdate();

        System.assertEquals(false, priceTierUpdate1.equals('foo'));
        System.assertEquals(false, priceTierUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPriceTierUpdate priceTierUpdate1 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate2 = new OASPriceTierUpdate();
        OASPriceTierUpdate priceTierUpdate3;

        System.assertEquals(false, priceTierUpdate1.equals(priceTierUpdate3));
        System.assertEquals(false, priceTierUpdate2.equals(priceTierUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPriceTierUpdate priceTierUpdate1 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate2 = new OASPriceTierUpdate();

        System.assertEquals(priceTierUpdate1.hashCode(), priceTierUpdate1.hashCode());
        System.assertEquals(priceTierUpdate2.hashCode(), priceTierUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPriceTierUpdate priceTierUpdate1 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate2 = OASPriceTierUpdate.getExample();
        OASPriceTierUpdate priceTierUpdate3 = new OASPriceTierUpdate();
        OASPriceTierUpdate priceTierUpdate4 = new OASPriceTierUpdate();

        System.assert(priceTierUpdate1.equals(priceTierUpdate2));
        System.assert(priceTierUpdate3.equals(priceTierUpdate4));
        System.assertEquals(priceTierUpdate1.hashCode(), priceTierUpdate2.hashCode());
        System.assertEquals(priceTierUpdate3.hashCode(), priceTierUpdate4.hashCode());
    }
}
