@isTest
private class OASBomTest {
    @isTest
    private static void equalsSameInstance() {
        OASBom bom1 = OASBom.getExample();
        OASBom bom2 = bom1;
        OASBom bom3 = new OASBom();
        OASBom bom4 = bom3;

        System.assert(bom1.equals(bom2));
        System.assert(bom2.equals(bom1));
        System.assert(bom1.equals(bom1));
        System.assert(bom3.equals(bom4));
        System.assert(bom4.equals(bom3));
        System.assert(bom3.equals(bom3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBom bom1 = OASBom.getExample();
        OASBom bom2 = OASBom.getExample();
        OASBom bom3 = new OASBom();
        OASBom bom4 = new OASBom();

        System.assert(bom1.equals(bom2));
        System.assert(bom2.equals(bom1));
        System.assert(bom3.equals(bom4));
        System.assert(bom4.equals(bom3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBom bom1 = OASBom.getExample();
        OASBom bom2 = new OASBom();

        System.assertEquals(false, bom1.equals('foo'));
        System.assertEquals(false, bom2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBom bom1 = OASBom.getExample();
        OASBom bom2 = new OASBom();
        OASBom bom3;

        System.assertEquals(false, bom1.equals(bom3));
        System.assertEquals(false, bom2.equals(bom3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBom bom1 = OASBom.getExample();
        OASBom bom2 = new OASBom();

        System.assertEquals(bom1.hashCode(), bom1.hashCode());
        System.assertEquals(bom2.hashCode(), bom2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBom bom1 = OASBom.getExample();
        OASBom bom2 = OASBom.getExample();
        OASBom bom3 = new OASBom();
        OASBom bom4 = new OASBom();

        System.assert(bom1.equals(bom2));
        System.assert(bom3.equals(bom4));
        System.assertEquals(bom1.hashCode(), bom2.hashCode());
        System.assertEquals(bom3.hashCode(), bom4.hashCode());
    }
}
