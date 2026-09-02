@isTest
private class OASYearTotalTest {
    @isTest
    private static void equalsSameInstance() {
        OASYearTotal yearTotal1 = OASYearTotal.getExample();
        OASYearTotal yearTotal2 = yearTotal1;
        OASYearTotal yearTotal3 = new OASYearTotal();
        OASYearTotal yearTotal4 = yearTotal3;

        System.assert(yearTotal1.equals(yearTotal2));
        System.assert(yearTotal2.equals(yearTotal1));
        System.assert(yearTotal1.equals(yearTotal1));
        System.assert(yearTotal3.equals(yearTotal4));
        System.assert(yearTotal4.equals(yearTotal3));
        System.assert(yearTotal3.equals(yearTotal3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASYearTotal yearTotal1 = OASYearTotal.getExample();
        OASYearTotal yearTotal2 = OASYearTotal.getExample();
        OASYearTotal yearTotal3 = new OASYearTotal();
        OASYearTotal yearTotal4 = new OASYearTotal();

        System.assert(yearTotal1.equals(yearTotal2));
        System.assert(yearTotal2.equals(yearTotal1));
        System.assert(yearTotal3.equals(yearTotal4));
        System.assert(yearTotal4.equals(yearTotal3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASYearTotal yearTotal1 = OASYearTotal.getExample();
        OASYearTotal yearTotal2 = new OASYearTotal();

        System.assertEquals(false, yearTotal1.equals('foo'));
        System.assertEquals(false, yearTotal2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASYearTotal yearTotal1 = OASYearTotal.getExample();
        OASYearTotal yearTotal2 = new OASYearTotal();
        OASYearTotal yearTotal3;

        System.assertEquals(false, yearTotal1.equals(yearTotal3));
        System.assertEquals(false, yearTotal2.equals(yearTotal3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASYearTotal yearTotal1 = OASYearTotal.getExample();
        OASYearTotal yearTotal2 = new OASYearTotal();

        System.assertEquals(yearTotal1.hashCode(), yearTotal1.hashCode());
        System.assertEquals(yearTotal2.hashCode(), yearTotal2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASYearTotal yearTotal1 = OASYearTotal.getExample();
        OASYearTotal yearTotal2 = OASYearTotal.getExample();
        OASYearTotal yearTotal3 = new OASYearTotal();
        OASYearTotal yearTotal4 = new OASYearTotal();

        System.assert(yearTotal1.equals(yearTotal2));
        System.assert(yearTotal3.equals(yearTotal4));
        System.assertEquals(yearTotal1.hashCode(), yearTotal2.hashCode());
        System.assertEquals(yearTotal3.hashCode(), yearTotal4.hashCode());
    }
}
