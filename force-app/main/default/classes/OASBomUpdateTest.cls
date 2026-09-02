@isTest
private class OASBomUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASBomUpdate bomUpdate1 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate2 = bomUpdate1;
        OASBomUpdate bomUpdate3 = new OASBomUpdate();
        OASBomUpdate bomUpdate4 = bomUpdate3;

        System.assert(bomUpdate1.equals(bomUpdate2));
        System.assert(bomUpdate2.equals(bomUpdate1));
        System.assert(bomUpdate1.equals(bomUpdate1));
        System.assert(bomUpdate3.equals(bomUpdate4));
        System.assert(bomUpdate4.equals(bomUpdate3));
        System.assert(bomUpdate3.equals(bomUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBomUpdate bomUpdate1 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate2 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate3 = new OASBomUpdate();
        OASBomUpdate bomUpdate4 = new OASBomUpdate();

        System.assert(bomUpdate1.equals(bomUpdate2));
        System.assert(bomUpdate2.equals(bomUpdate1));
        System.assert(bomUpdate3.equals(bomUpdate4));
        System.assert(bomUpdate4.equals(bomUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBomUpdate bomUpdate1 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate2 = new OASBomUpdate();

        System.assertEquals(false, bomUpdate1.equals('foo'));
        System.assertEquals(false, bomUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBomUpdate bomUpdate1 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate2 = new OASBomUpdate();
        OASBomUpdate bomUpdate3;

        System.assertEquals(false, bomUpdate1.equals(bomUpdate3));
        System.assertEquals(false, bomUpdate2.equals(bomUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBomUpdate bomUpdate1 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate2 = new OASBomUpdate();

        System.assertEquals(bomUpdate1.hashCode(), bomUpdate1.hashCode());
        System.assertEquals(bomUpdate2.hashCode(), bomUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBomUpdate bomUpdate1 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate2 = OASBomUpdate.getExample();
        OASBomUpdate bomUpdate3 = new OASBomUpdate();
        OASBomUpdate bomUpdate4 = new OASBomUpdate();

        System.assert(bomUpdate1.equals(bomUpdate2));
        System.assert(bomUpdate3.equals(bomUpdate4));
        System.assertEquals(bomUpdate1.hashCode(), bomUpdate2.hashCode());
        System.assertEquals(bomUpdate3.hashCode(), bomUpdate4.hashCode());
    }
}
