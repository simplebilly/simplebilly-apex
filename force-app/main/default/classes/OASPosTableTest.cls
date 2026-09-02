@isTest
private class OASPosTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASPosTable posTable1 = OASPosTable.getExample();
        OASPosTable posTable2 = posTable1;
        OASPosTable posTable3 = new OASPosTable();
        OASPosTable posTable4 = posTable3;

        System.assert(posTable1.equals(posTable2));
        System.assert(posTable2.equals(posTable1));
        System.assert(posTable1.equals(posTable1));
        System.assert(posTable3.equals(posTable4));
        System.assert(posTable4.equals(posTable3));
        System.assert(posTable3.equals(posTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPosTable posTable1 = OASPosTable.getExample();
        OASPosTable posTable2 = OASPosTable.getExample();
        OASPosTable posTable3 = new OASPosTable();
        OASPosTable posTable4 = new OASPosTable();

        System.assert(posTable1.equals(posTable2));
        System.assert(posTable2.equals(posTable1));
        System.assert(posTable3.equals(posTable4));
        System.assert(posTable4.equals(posTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPosTable posTable1 = OASPosTable.getExample();
        OASPosTable posTable2 = new OASPosTable();

        System.assertEquals(false, posTable1.equals('foo'));
        System.assertEquals(false, posTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPosTable posTable1 = OASPosTable.getExample();
        OASPosTable posTable2 = new OASPosTable();
        OASPosTable posTable3;

        System.assertEquals(false, posTable1.equals(posTable3));
        System.assertEquals(false, posTable2.equals(posTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPosTable posTable1 = OASPosTable.getExample();
        OASPosTable posTable2 = new OASPosTable();

        System.assertEquals(posTable1.hashCode(), posTable1.hashCode());
        System.assertEquals(posTable2.hashCode(), posTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPosTable posTable1 = OASPosTable.getExample();
        OASPosTable posTable2 = OASPosTable.getExample();
        OASPosTable posTable3 = new OASPosTable();
        OASPosTable posTable4 = new OASPosTable();

        System.assert(posTable1.equals(posTable2));
        System.assert(posTable3.equals(posTable4));
        System.assertEquals(posTable1.hashCode(), posTable2.hashCode());
        System.assertEquals(posTable3.hashCode(), posTable4.hashCode());
    }
}
