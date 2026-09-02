@isTest
private class OASPayrollSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollSummary payrollSummary1 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary2 = payrollSummary1;
        OASPayrollSummary payrollSummary3 = new OASPayrollSummary();
        OASPayrollSummary payrollSummary4 = payrollSummary3;

        System.assert(payrollSummary1.equals(payrollSummary2));
        System.assert(payrollSummary2.equals(payrollSummary1));
        System.assert(payrollSummary1.equals(payrollSummary1));
        System.assert(payrollSummary3.equals(payrollSummary4));
        System.assert(payrollSummary4.equals(payrollSummary3));
        System.assert(payrollSummary3.equals(payrollSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollSummary payrollSummary1 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary2 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary3 = new OASPayrollSummary();
        OASPayrollSummary payrollSummary4 = new OASPayrollSummary();

        System.assert(payrollSummary1.equals(payrollSummary2));
        System.assert(payrollSummary2.equals(payrollSummary1));
        System.assert(payrollSummary3.equals(payrollSummary4));
        System.assert(payrollSummary4.equals(payrollSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollSummary payrollSummary1 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary2 = new OASPayrollSummary();

        System.assertEquals(false, payrollSummary1.equals('foo'));
        System.assertEquals(false, payrollSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollSummary payrollSummary1 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary2 = new OASPayrollSummary();
        OASPayrollSummary payrollSummary3;

        System.assertEquals(false, payrollSummary1.equals(payrollSummary3));
        System.assertEquals(false, payrollSummary2.equals(payrollSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollSummary payrollSummary1 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary2 = new OASPayrollSummary();

        System.assertEquals(payrollSummary1.hashCode(), payrollSummary1.hashCode());
        System.assertEquals(payrollSummary2.hashCode(), payrollSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollSummary payrollSummary1 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary2 = OASPayrollSummary.getExample();
        OASPayrollSummary payrollSummary3 = new OASPayrollSummary();
        OASPayrollSummary payrollSummary4 = new OASPayrollSummary();

        System.assert(payrollSummary1.equals(payrollSummary2));
        System.assert(payrollSummary3.equals(payrollSummary4));
        System.assertEquals(payrollSummary1.hashCode(), payrollSummary2.hashCode());
        System.assertEquals(payrollSummary3.hashCode(), payrollSummary4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPayrollSummary payrollSummary = new OASPayrollSummary();
        System.assertEquals(new List<OASPayrollMonth>(), payrollSummary.months);
        System.assertEquals(null, payrollSummary.firstName);
        System.assertEquals(null, payrollSummary.hourlyGross);
        System.assertEquals(null, payrollSummary.id);
        System.assertEquals(null, payrollSummary.jobTitle);
        System.assertEquals(null, payrollSummary.lastName);
        System.assertEquals(null, payrollSummary.monthlySalary);
        System.assertEquals(null, payrollSummary.weeklyHours);
        System.assertEquals(null, payrollSummary.year);
    }
}
