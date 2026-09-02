@isTest
private class OASPayrollMonthTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollMonth payrollMonth1 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth2 = payrollMonth1;
        OASPayrollMonth payrollMonth3 = new OASPayrollMonth();
        OASPayrollMonth payrollMonth4 = payrollMonth3;

        System.assert(payrollMonth1.equals(payrollMonth2));
        System.assert(payrollMonth2.equals(payrollMonth1));
        System.assert(payrollMonth1.equals(payrollMonth1));
        System.assert(payrollMonth3.equals(payrollMonth4));
        System.assert(payrollMonth4.equals(payrollMonth3));
        System.assert(payrollMonth3.equals(payrollMonth3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollMonth payrollMonth1 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth2 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth3 = new OASPayrollMonth();
        OASPayrollMonth payrollMonth4 = new OASPayrollMonth();

        System.assert(payrollMonth1.equals(payrollMonth2));
        System.assert(payrollMonth2.equals(payrollMonth1));
        System.assert(payrollMonth3.equals(payrollMonth4));
        System.assert(payrollMonth4.equals(payrollMonth3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollMonth payrollMonth1 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth2 = new OASPayrollMonth();

        System.assertEquals(false, payrollMonth1.equals('foo'));
        System.assertEquals(false, payrollMonth2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollMonth payrollMonth1 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth2 = new OASPayrollMonth();
        OASPayrollMonth payrollMonth3;

        System.assertEquals(false, payrollMonth1.equals(payrollMonth3));
        System.assertEquals(false, payrollMonth2.equals(payrollMonth3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollMonth payrollMonth1 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth2 = new OASPayrollMonth();

        System.assertEquals(payrollMonth1.hashCode(), payrollMonth1.hashCode());
        System.assertEquals(payrollMonth2.hashCode(), payrollMonth2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollMonth payrollMonth1 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth2 = OASPayrollMonth.getExample();
        OASPayrollMonth payrollMonth3 = new OASPayrollMonth();
        OASPayrollMonth payrollMonth4 = new OASPayrollMonth();

        System.assert(payrollMonth1.equals(payrollMonth2));
        System.assert(payrollMonth3.equals(payrollMonth4));
        System.assertEquals(payrollMonth1.hashCode(), payrollMonth2.hashCode());
        System.assertEquals(payrollMonth3.hashCode(), payrollMonth4.hashCode());
    }
}
