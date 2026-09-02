@isTest
private class OASYearlyPayrollSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASYearlyPayrollSummary yearlyPayrollSummary1 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary2 = yearlyPayrollSummary1;
        OASYearlyPayrollSummary yearlyPayrollSummary3 = new OASYearlyPayrollSummary();
        OASYearlyPayrollSummary yearlyPayrollSummary4 = yearlyPayrollSummary3;

        System.assert(yearlyPayrollSummary1.equals(yearlyPayrollSummary2));
        System.assert(yearlyPayrollSummary2.equals(yearlyPayrollSummary1));
        System.assert(yearlyPayrollSummary1.equals(yearlyPayrollSummary1));
        System.assert(yearlyPayrollSummary3.equals(yearlyPayrollSummary4));
        System.assert(yearlyPayrollSummary4.equals(yearlyPayrollSummary3));
        System.assert(yearlyPayrollSummary3.equals(yearlyPayrollSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASYearlyPayrollSummary yearlyPayrollSummary1 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary2 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary3 = new OASYearlyPayrollSummary();
        OASYearlyPayrollSummary yearlyPayrollSummary4 = new OASYearlyPayrollSummary();

        System.assert(yearlyPayrollSummary1.equals(yearlyPayrollSummary2));
        System.assert(yearlyPayrollSummary2.equals(yearlyPayrollSummary1));
        System.assert(yearlyPayrollSummary3.equals(yearlyPayrollSummary4));
        System.assert(yearlyPayrollSummary4.equals(yearlyPayrollSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASYearlyPayrollSummary yearlyPayrollSummary1 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary2 = new OASYearlyPayrollSummary();

        System.assertEquals(false, yearlyPayrollSummary1.equals('foo'));
        System.assertEquals(false, yearlyPayrollSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASYearlyPayrollSummary yearlyPayrollSummary1 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary2 = new OASYearlyPayrollSummary();
        OASYearlyPayrollSummary yearlyPayrollSummary3;

        System.assertEquals(false, yearlyPayrollSummary1.equals(yearlyPayrollSummary3));
        System.assertEquals(false, yearlyPayrollSummary2.equals(yearlyPayrollSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASYearlyPayrollSummary yearlyPayrollSummary1 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary2 = new OASYearlyPayrollSummary();

        System.assertEquals(yearlyPayrollSummary1.hashCode(), yearlyPayrollSummary1.hashCode());
        System.assertEquals(yearlyPayrollSummary2.hashCode(), yearlyPayrollSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASYearlyPayrollSummary yearlyPayrollSummary1 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary2 = OASYearlyPayrollSummary.getExample();
        OASYearlyPayrollSummary yearlyPayrollSummary3 = new OASYearlyPayrollSummary();
        OASYearlyPayrollSummary yearlyPayrollSummary4 = new OASYearlyPayrollSummary();

        System.assert(yearlyPayrollSummary1.equals(yearlyPayrollSummary2));
        System.assert(yearlyPayrollSummary3.equals(yearlyPayrollSummary4));
        System.assertEquals(yearlyPayrollSummary1.hashCode(), yearlyPayrollSummary2.hashCode());
        System.assertEquals(yearlyPayrollSummary3.hashCode(), yearlyPayrollSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASYearlyPayrollSummary yearlyPayrollSummary = new OASYearlyPayrollSummary();
        Map<String, String> x-property-mappings = yearlyPayrollSummary.getx-property-mappings();
        System.assertEquals('avgEmployeeCount', x-property-mappings.get('avg_employee_count'));
        System.assertEquals('yearlyEmployerCost', x-property-mappings.get('yearly_employer_cost'));
        System.assertEquals('yearlyGross', x-property-mappings.get('yearly_gross'));
        System.assertEquals('yearlyNet', x-property-mappings.get('yearly_net'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASYearlyPayrollSummary yearlyPayrollSummary = new OASYearlyPayrollSummary();
        System.assertEquals(new List<OASPayrollSummaryItem>(), yearlyPayrollSummary.months);
        System.assertEquals(null, yearlyPayrollSummary.avgEmployeeCount);
        System.assertEquals(null, yearlyPayrollSummary.year);
        System.assertEquals(null, yearlyPayrollSummary.yearlyEmployerCost);
        System.assertEquals(null, yearlyPayrollSummary.yearlyGross);
        System.assertEquals(null, yearlyPayrollSummary.yearlyNet);
    }
}
