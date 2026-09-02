@isTest
private class OASLaborCostRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaborCostRow laborCostRow1 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow2 = laborCostRow1;
        OASLaborCostRow laborCostRow3 = new OASLaborCostRow();
        OASLaborCostRow laborCostRow4 = laborCostRow3;

        System.assert(laborCostRow1.equals(laborCostRow2));
        System.assert(laborCostRow2.equals(laborCostRow1));
        System.assert(laborCostRow1.equals(laborCostRow1));
        System.assert(laborCostRow3.equals(laborCostRow4));
        System.assert(laborCostRow4.equals(laborCostRow3));
        System.assert(laborCostRow3.equals(laborCostRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaborCostRow laborCostRow1 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow2 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow3 = new OASLaborCostRow();
        OASLaborCostRow laborCostRow4 = new OASLaborCostRow();

        System.assert(laborCostRow1.equals(laborCostRow2));
        System.assert(laborCostRow2.equals(laborCostRow1));
        System.assert(laborCostRow3.equals(laborCostRow4));
        System.assert(laborCostRow4.equals(laborCostRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaborCostRow laborCostRow1 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow2 = new OASLaborCostRow();

        System.assertEquals(false, laborCostRow1.equals('foo'));
        System.assertEquals(false, laborCostRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaborCostRow laborCostRow1 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow2 = new OASLaborCostRow();
        OASLaborCostRow laborCostRow3;

        System.assertEquals(false, laborCostRow1.equals(laborCostRow3));
        System.assertEquals(false, laborCostRow2.equals(laborCostRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaborCostRow laborCostRow1 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow2 = new OASLaborCostRow();

        System.assertEquals(laborCostRow1.hashCode(), laborCostRow1.hashCode());
        System.assertEquals(laborCostRow2.hashCode(), laborCostRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaborCostRow laborCostRow1 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow2 = OASLaborCostRow.getExample();
        OASLaborCostRow laborCostRow3 = new OASLaborCostRow();
        OASLaborCostRow laborCostRow4 = new OASLaborCostRow();

        System.assert(laborCostRow1.equals(laborCostRow2));
        System.assert(laborCostRow3.equals(laborCostRow4));
        System.assertEquals(laborCostRow1.hashCode(), laborCostRow2.hashCode());
        System.assertEquals(laborCostRow3.hashCode(), laborCostRow4.hashCode());
    }
}
