@isTest
private class OASPayrollCreatePayloadTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollCreatePayload payrollCreatePayload1 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload2 = payrollCreatePayload1;
        OASPayrollCreatePayload payrollCreatePayload3 = new OASPayrollCreatePayload();
        OASPayrollCreatePayload payrollCreatePayload4 = payrollCreatePayload3;

        System.assert(payrollCreatePayload1.equals(payrollCreatePayload2));
        System.assert(payrollCreatePayload2.equals(payrollCreatePayload1));
        System.assert(payrollCreatePayload1.equals(payrollCreatePayload1));
        System.assert(payrollCreatePayload3.equals(payrollCreatePayload4));
        System.assert(payrollCreatePayload4.equals(payrollCreatePayload3));
        System.assert(payrollCreatePayload3.equals(payrollCreatePayload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollCreatePayload payrollCreatePayload1 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload2 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload3 = new OASPayrollCreatePayload();
        OASPayrollCreatePayload payrollCreatePayload4 = new OASPayrollCreatePayload();

        System.assert(payrollCreatePayload1.equals(payrollCreatePayload2));
        System.assert(payrollCreatePayload2.equals(payrollCreatePayload1));
        System.assert(payrollCreatePayload3.equals(payrollCreatePayload4));
        System.assert(payrollCreatePayload4.equals(payrollCreatePayload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollCreatePayload payrollCreatePayload1 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload2 = new OASPayrollCreatePayload();

        System.assertEquals(false, payrollCreatePayload1.equals('foo'));
        System.assertEquals(false, payrollCreatePayload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollCreatePayload payrollCreatePayload1 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload2 = new OASPayrollCreatePayload();
        OASPayrollCreatePayload payrollCreatePayload3;

        System.assertEquals(false, payrollCreatePayload1.equals(payrollCreatePayload3));
        System.assertEquals(false, payrollCreatePayload2.equals(payrollCreatePayload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollCreatePayload payrollCreatePayload1 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload2 = new OASPayrollCreatePayload();

        System.assertEquals(payrollCreatePayload1.hashCode(), payrollCreatePayload1.hashCode());
        System.assertEquals(payrollCreatePayload2.hashCode(), payrollCreatePayload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollCreatePayload payrollCreatePayload1 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload2 = OASPayrollCreatePayload.getExample();
        OASPayrollCreatePayload payrollCreatePayload3 = new OASPayrollCreatePayload();
        OASPayrollCreatePayload payrollCreatePayload4 = new OASPayrollCreatePayload();

        System.assert(payrollCreatePayload1.equals(payrollCreatePayload2));
        System.assert(payrollCreatePayload3.equals(payrollCreatePayload4));
        System.assertEquals(payrollCreatePayload1.hashCode(), payrollCreatePayload2.hashCode());
        System.assertEquals(payrollCreatePayload3.hashCode(), payrollCreatePayload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayrollCreatePayload payrollCreatePayload = new OASPayrollCreatePayload();
        Map<String, String> x-property-mappings = payrollCreatePayload.getx-property-mappings();
        System.assertEquals('employeeIds', x-property-mappings.get('employee_ids'));
        System.assertEquals('extraPayments', x-property-mappings.get('extra_payments'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPayrollCreatePayload payrollCreatePayload = new OASPayrollCreatePayload();
        System.assertEquals(new List<String>(), payrollCreatePayload.employeeIds);
        System.assertEquals(new List<OASExtraPayment>(), payrollCreatePayload.extraPayments);
        System.assertEquals(null, payrollCreatePayload.month);
        System.assertEquals(null, payrollCreatePayload.year);
    }
}
