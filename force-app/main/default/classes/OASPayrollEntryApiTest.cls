@isTest
private class OASPayrollEntryApiTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollEntryApi payrollEntryApi1 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi2 = payrollEntryApi1;
        OASPayrollEntryApi payrollEntryApi3 = new OASPayrollEntryApi();
        OASPayrollEntryApi payrollEntryApi4 = payrollEntryApi3;

        System.assert(payrollEntryApi1.equals(payrollEntryApi2));
        System.assert(payrollEntryApi2.equals(payrollEntryApi1));
        System.assert(payrollEntryApi1.equals(payrollEntryApi1));
        System.assert(payrollEntryApi3.equals(payrollEntryApi4));
        System.assert(payrollEntryApi4.equals(payrollEntryApi3));
        System.assert(payrollEntryApi3.equals(payrollEntryApi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollEntryApi payrollEntryApi1 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi2 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi3 = new OASPayrollEntryApi();
        OASPayrollEntryApi payrollEntryApi4 = new OASPayrollEntryApi();

        System.assert(payrollEntryApi1.equals(payrollEntryApi2));
        System.assert(payrollEntryApi2.equals(payrollEntryApi1));
        System.assert(payrollEntryApi3.equals(payrollEntryApi4));
        System.assert(payrollEntryApi4.equals(payrollEntryApi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollEntryApi payrollEntryApi1 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi2 = new OASPayrollEntryApi();

        System.assertEquals(false, payrollEntryApi1.equals('foo'));
        System.assertEquals(false, payrollEntryApi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollEntryApi payrollEntryApi1 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi2 = new OASPayrollEntryApi();
        OASPayrollEntryApi payrollEntryApi3;

        System.assertEquals(false, payrollEntryApi1.equals(payrollEntryApi3));
        System.assertEquals(false, payrollEntryApi2.equals(payrollEntryApi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollEntryApi payrollEntryApi1 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi2 = new OASPayrollEntryApi();

        System.assertEquals(payrollEntryApi1.hashCode(), payrollEntryApi1.hashCode());
        System.assertEquals(payrollEntryApi2.hashCode(), payrollEntryApi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollEntryApi payrollEntryApi1 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi2 = OASPayrollEntryApi.getExample();
        OASPayrollEntryApi payrollEntryApi3 = new OASPayrollEntryApi();
        OASPayrollEntryApi payrollEntryApi4 = new OASPayrollEntryApi();

        System.assert(payrollEntryApi1.equals(payrollEntryApi2));
        System.assert(payrollEntryApi3.equals(payrollEntryApi4));
        System.assertEquals(payrollEntryApi1.hashCode(), payrollEntryApi2.hashCode());
        System.assertEquals(payrollEntryApi3.hashCode(), payrollEntryApi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayrollEntryApi payrollEntryApi = new OASPayrollEntryApi();
        Map<String, String> x-property-mappings = payrollEntryApi.getx-property-mappings();
        System.assertEquals('avEmployee', x-property-mappings.get('av_employee'));
        System.assertEquals('avEmployer', x-property-mappings.get('av_employer'));
        System.assertEquals('churchTaxAmount', x-property-mappings.get('church_tax_amount'));
        System.assertEquals('employeeId', x-property-mappings.get('employee_id'));
        System.assertEquals('entryId', x-property-mappings.get('entry_id'));
        System.assertEquals('extraPaymentReason', x-property-mappings.get('extra_payment_reason'));
        System.assertEquals('extraPayments', x-property-mappings.get('extra_payments'));
        System.assertEquals('grossSalary', x-property-mappings.get('gross_salary'));
        System.assertEquals('kvEmployee', x-property-mappings.get('kv_employee'));
        System.assertEquals('kvEmployer', x-property-mappings.get('kv_employer'));
        System.assertEquals('netSalary', x-property-mappings.get('net_salary'));
        System.assertEquals('pvEmployee', x-property-mappings.get('pv_employee'));
        System.assertEquals('pvEmployer', x-property-mappings.get('pv_employer'));
        System.assertEquals('runId', x-property-mappings.get('run_id'));
        System.assertEquals('rvEmployee', x-property-mappings.get('rv_employee'));
        System.assertEquals('rvEmployer', x-property-mappings.get('rv_employer'));
        System.assertEquals('sickDays', x-property-mappings.get('sick_days'));
        System.assertEquals('totalDeductions', x-property-mappings.get('total_deductions'));
        System.assertEquals('totalEmployerCost', x-property-mappings.get('total_employer_cost'));
        System.assertEquals('vacationDaysUsed', x-property-mappings.get('vacation_days_used'));
    }
}
