@isTest
private class OASCostingLineTest {
    @isTest
    private static void equalsSameInstance() {
        OASCostingLine costingLine1 = OASCostingLine.getExample();
        OASCostingLine costingLine2 = costingLine1;
        OASCostingLine costingLine3 = new OASCostingLine();
        OASCostingLine costingLine4 = costingLine3;

        System.assert(costingLine1.equals(costingLine2));
        System.assert(costingLine2.equals(costingLine1));
        System.assert(costingLine1.equals(costingLine1));
        System.assert(costingLine3.equals(costingLine4));
        System.assert(costingLine4.equals(costingLine3));
        System.assert(costingLine3.equals(costingLine3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCostingLine costingLine1 = OASCostingLine.getExample();
        OASCostingLine costingLine2 = OASCostingLine.getExample();
        OASCostingLine costingLine3 = new OASCostingLine();
        OASCostingLine costingLine4 = new OASCostingLine();

        System.assert(costingLine1.equals(costingLine2));
        System.assert(costingLine2.equals(costingLine1));
        System.assert(costingLine3.equals(costingLine4));
        System.assert(costingLine4.equals(costingLine3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCostingLine costingLine1 = OASCostingLine.getExample();
        OASCostingLine costingLine2 = new OASCostingLine();

        System.assertEquals(false, costingLine1.equals('foo'));
        System.assertEquals(false, costingLine2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCostingLine costingLine1 = OASCostingLine.getExample();
        OASCostingLine costingLine2 = new OASCostingLine();
        OASCostingLine costingLine3;

        System.assertEquals(false, costingLine1.equals(costingLine3));
        System.assertEquals(false, costingLine2.equals(costingLine3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCostingLine costingLine1 = OASCostingLine.getExample();
        OASCostingLine costingLine2 = new OASCostingLine();

        System.assertEquals(costingLine1.hashCode(), costingLine1.hashCode());
        System.assertEquals(costingLine2.hashCode(), costingLine2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCostingLine costingLine1 = OASCostingLine.getExample();
        OASCostingLine costingLine2 = OASCostingLine.getExample();
        OASCostingLine costingLine3 = new OASCostingLine();
        OASCostingLine costingLine4 = new OASCostingLine();

        System.assert(costingLine1.equals(costingLine2));
        System.assert(costingLine3.equals(costingLine4));
        System.assertEquals(costingLine1.hashCode(), costingLine2.hashCode());
        System.assertEquals(costingLine3.hashCode(), costingLine4.hashCode());
    }
}
