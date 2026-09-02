@isTest
private class OASPayrollSummaryItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollSummaryItem payrollSummaryItem1 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem2 = payrollSummaryItem1;
        OASPayrollSummaryItem payrollSummaryItem3 = new OASPayrollSummaryItem();
        OASPayrollSummaryItem payrollSummaryItem4 = payrollSummaryItem3;

        System.assert(payrollSummaryItem1.equals(payrollSummaryItem2));
        System.assert(payrollSummaryItem2.equals(payrollSummaryItem1));
        System.assert(payrollSummaryItem1.equals(payrollSummaryItem1));
        System.assert(payrollSummaryItem3.equals(payrollSummaryItem4));
        System.assert(payrollSummaryItem4.equals(payrollSummaryItem3));
        System.assert(payrollSummaryItem3.equals(payrollSummaryItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollSummaryItem payrollSummaryItem1 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem2 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem3 = new OASPayrollSummaryItem();
        OASPayrollSummaryItem payrollSummaryItem4 = new OASPayrollSummaryItem();

        System.assert(payrollSummaryItem1.equals(payrollSummaryItem2));
        System.assert(payrollSummaryItem2.equals(payrollSummaryItem1));
        System.assert(payrollSummaryItem3.equals(payrollSummaryItem4));
        System.assert(payrollSummaryItem4.equals(payrollSummaryItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollSummaryItem payrollSummaryItem1 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem2 = new OASPayrollSummaryItem();

        System.assertEquals(false, payrollSummaryItem1.equals('foo'));
        System.assertEquals(false, payrollSummaryItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollSummaryItem payrollSummaryItem1 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem2 = new OASPayrollSummaryItem();
        OASPayrollSummaryItem payrollSummaryItem3;

        System.assertEquals(false, payrollSummaryItem1.equals(payrollSummaryItem3));
        System.assertEquals(false, payrollSummaryItem2.equals(payrollSummaryItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollSummaryItem payrollSummaryItem1 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem2 = new OASPayrollSummaryItem();

        System.assertEquals(payrollSummaryItem1.hashCode(), payrollSummaryItem1.hashCode());
        System.assertEquals(payrollSummaryItem2.hashCode(), payrollSummaryItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollSummaryItem payrollSummaryItem1 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem2 = OASPayrollSummaryItem.getExample();
        OASPayrollSummaryItem payrollSummaryItem3 = new OASPayrollSummaryItem();
        OASPayrollSummaryItem payrollSummaryItem4 = new OASPayrollSummaryItem();

        System.assert(payrollSummaryItem1.equals(payrollSummaryItem2));
        System.assert(payrollSummaryItem3.equals(payrollSummaryItem4));
        System.assertEquals(payrollSummaryItem1.hashCode(), payrollSummaryItem2.hashCode());
        System.assertEquals(payrollSummaryItem3.hashCode(), payrollSummaryItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayrollSummaryItem payrollSummaryItem = new OASPayrollSummaryItem();
        Map<String, String> x-property-mappings = payrollSummaryItem.getx-property-mappings();
        System.assertEquals('employeeCount', x-property-mappings.get('employee_count'));
        System.assertEquals('totalEmployerCost', x-property-mappings.get('total_employer_cost'));
        System.assertEquals('totalGross', x-property-mappings.get('total_gross'));
        System.assertEquals('totalNet', x-property-mappings.get('total_net'));
    }
}
