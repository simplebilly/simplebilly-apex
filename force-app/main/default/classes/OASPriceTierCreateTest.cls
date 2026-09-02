@isTest
private class OASPriceTierCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPriceTierCreate priceTierCreate1 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate2 = priceTierCreate1;
        OASPriceTierCreate priceTierCreate3 = new OASPriceTierCreate();
        OASPriceTierCreate priceTierCreate4 = priceTierCreate3;

        System.assert(priceTierCreate1.equals(priceTierCreate2));
        System.assert(priceTierCreate2.equals(priceTierCreate1));
        System.assert(priceTierCreate1.equals(priceTierCreate1));
        System.assert(priceTierCreate3.equals(priceTierCreate4));
        System.assert(priceTierCreate4.equals(priceTierCreate3));
        System.assert(priceTierCreate3.equals(priceTierCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPriceTierCreate priceTierCreate1 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate2 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate3 = new OASPriceTierCreate();
        OASPriceTierCreate priceTierCreate4 = new OASPriceTierCreate();

        System.assert(priceTierCreate1.equals(priceTierCreate2));
        System.assert(priceTierCreate2.equals(priceTierCreate1));
        System.assert(priceTierCreate3.equals(priceTierCreate4));
        System.assert(priceTierCreate4.equals(priceTierCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPriceTierCreate priceTierCreate1 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate2 = new OASPriceTierCreate();

        System.assertEquals(false, priceTierCreate1.equals('foo'));
        System.assertEquals(false, priceTierCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPriceTierCreate priceTierCreate1 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate2 = new OASPriceTierCreate();
        OASPriceTierCreate priceTierCreate3;

        System.assertEquals(false, priceTierCreate1.equals(priceTierCreate3));
        System.assertEquals(false, priceTierCreate2.equals(priceTierCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPriceTierCreate priceTierCreate1 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate2 = new OASPriceTierCreate();

        System.assertEquals(priceTierCreate1.hashCode(), priceTierCreate1.hashCode());
        System.assertEquals(priceTierCreate2.hashCode(), priceTierCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPriceTierCreate priceTierCreate1 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate2 = OASPriceTierCreate.getExample();
        OASPriceTierCreate priceTierCreate3 = new OASPriceTierCreate();
        OASPriceTierCreate priceTierCreate4 = new OASPriceTierCreate();

        System.assert(priceTierCreate1.equals(priceTierCreate2));
        System.assert(priceTierCreate3.equals(priceTierCreate4));
        System.assertEquals(priceTierCreate1.hashCode(), priceTierCreate2.hashCode());
        System.assertEquals(priceTierCreate3.hashCode(), priceTierCreate4.hashCode());
    }
}
