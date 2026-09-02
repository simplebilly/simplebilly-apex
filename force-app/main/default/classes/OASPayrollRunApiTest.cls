@isTest
private class OASPayrollRunApiTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollRunApi payrollRunApi1 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi2 = payrollRunApi1;
        OASPayrollRunApi payrollRunApi3 = new OASPayrollRunApi();
        OASPayrollRunApi payrollRunApi4 = payrollRunApi3;

        System.assert(payrollRunApi1.equals(payrollRunApi2));
        System.assert(payrollRunApi2.equals(payrollRunApi1));
        System.assert(payrollRunApi1.equals(payrollRunApi1));
        System.assert(payrollRunApi3.equals(payrollRunApi4));
        System.assert(payrollRunApi4.equals(payrollRunApi3));
        System.assert(payrollRunApi3.equals(payrollRunApi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollRunApi payrollRunApi1 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi2 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi3 = new OASPayrollRunApi();
        OASPayrollRunApi payrollRunApi4 = new OASPayrollRunApi();

        System.assert(payrollRunApi1.equals(payrollRunApi2));
        System.assert(payrollRunApi2.equals(payrollRunApi1));
        System.assert(payrollRunApi3.equals(payrollRunApi4));
        System.assert(payrollRunApi4.equals(payrollRunApi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollRunApi payrollRunApi1 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi2 = new OASPayrollRunApi();

        System.assertEquals(false, payrollRunApi1.equals('foo'));
        System.assertEquals(false, payrollRunApi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollRunApi payrollRunApi1 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi2 = new OASPayrollRunApi();
        OASPayrollRunApi payrollRunApi3;

        System.assertEquals(false, payrollRunApi1.equals(payrollRunApi3));
        System.assertEquals(false, payrollRunApi2.equals(payrollRunApi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollRunApi payrollRunApi1 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi2 = new OASPayrollRunApi();

        System.assertEquals(payrollRunApi1.hashCode(), payrollRunApi1.hashCode());
        System.assertEquals(payrollRunApi2.hashCode(), payrollRunApi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollRunApi payrollRunApi1 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi2 = OASPayrollRunApi.getExample();
        OASPayrollRunApi payrollRunApi3 = new OASPayrollRunApi();
        OASPayrollRunApi payrollRunApi4 = new OASPayrollRunApi();

        System.assert(payrollRunApi1.equals(payrollRunApi2));
        System.assert(payrollRunApi3.equals(payrollRunApi4));
        System.assertEquals(payrollRunApi1.hashCode(), payrollRunApi2.hashCode());
        System.assertEquals(payrollRunApi3.hashCode(), payrollRunApi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayrollRunApi payrollRunApi = new OASPayrollRunApi();
        Map<String, String> x-property-mappings = payrollRunApi.getx-property-mappings();
        System.assertEquals('approvedAt', x-property-mappings.get('approved_at'));
        System.assertEquals('approvedBy', x-property-mappings.get('approved_by'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('paymentDate', x-property-mappings.get('payment_date'));
        System.assertEquals('periodLabel', x-property-mappings.get('period_label'));
        System.assertEquals('runId', x-property-mappings.get('run_id'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('totalEmployeeCount', x-property-mappings.get('total_employee_count'));
        System.assertEquals('totalEmployerCost', x-property-mappings.get('total_employer_cost'));
        System.assertEquals('totalGross', x-property-mappings.get('total_gross'));
        System.assertEquals('totalNet', x-property-mappings.get('total_net'));
        System.assertEquals('totalSocialSecurity', x-property-mappings.get('total_social_security'));
        System.assertEquals('totalTaxes', x-property-mappings.get('total_taxes'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPayrollRunApi payrollRunApi = new OASPayrollRunApi();
        System.assertEquals(new List<OASPayrollEntryApi>(), payrollRunApi.entries);
        System.assertEquals(null, payrollRunApi.approvedAt);
        System.assertEquals(null, payrollRunApi.approvedBy);
        System.assertEquals(null, payrollRunApi.createdAt);
        System.assertEquals(null, payrollRunApi.month);
        System.assertEquals(null, payrollRunApi.paymentDate);
        System.assertEquals(null, payrollRunApi.periodLabel);
        System.assertEquals(null, payrollRunApi.runId);
        System.assertEquals(null, payrollRunApi.status);
        System.assertEquals(null, payrollRunApi.tenantId);
        System.assertEquals(null, payrollRunApi.totalEmployeeCount);
        System.assertEquals(null, payrollRunApi.totalEmployerCost);
        System.assertEquals(null, payrollRunApi.totalGross);
        System.assertEquals(null, payrollRunApi.totalNet);
        System.assertEquals(null, payrollRunApi.totalSocialSecurity);
        System.assertEquals(null, payrollRunApi.totalTaxes);
        System.assertEquals(null, payrollRunApi.updatedAt);
        System.assertEquals(null, payrollRunApi.year);
    }
}
