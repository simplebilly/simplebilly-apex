@isTest
private class OASPayrollAutopayPayloadTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollAutopayPayload payrollAutopayPayload1 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload2 = payrollAutopayPayload1;
        OASPayrollAutopayPayload payrollAutopayPayload3 = new OASPayrollAutopayPayload();
        OASPayrollAutopayPayload payrollAutopayPayload4 = payrollAutopayPayload3;

        System.assert(payrollAutopayPayload1.equals(payrollAutopayPayload2));
        System.assert(payrollAutopayPayload2.equals(payrollAutopayPayload1));
        System.assert(payrollAutopayPayload1.equals(payrollAutopayPayload1));
        System.assert(payrollAutopayPayload3.equals(payrollAutopayPayload4));
        System.assert(payrollAutopayPayload4.equals(payrollAutopayPayload3));
        System.assert(payrollAutopayPayload3.equals(payrollAutopayPayload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollAutopayPayload payrollAutopayPayload1 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload2 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload3 = new OASPayrollAutopayPayload();
        OASPayrollAutopayPayload payrollAutopayPayload4 = new OASPayrollAutopayPayload();

        System.assert(payrollAutopayPayload1.equals(payrollAutopayPayload2));
        System.assert(payrollAutopayPayload2.equals(payrollAutopayPayload1));
        System.assert(payrollAutopayPayload3.equals(payrollAutopayPayload4));
        System.assert(payrollAutopayPayload4.equals(payrollAutopayPayload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollAutopayPayload payrollAutopayPayload1 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload2 = new OASPayrollAutopayPayload();

        System.assertEquals(false, payrollAutopayPayload1.equals('foo'));
        System.assertEquals(false, payrollAutopayPayload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollAutopayPayload payrollAutopayPayload1 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload2 = new OASPayrollAutopayPayload();
        OASPayrollAutopayPayload payrollAutopayPayload3;

        System.assertEquals(false, payrollAutopayPayload1.equals(payrollAutopayPayload3));
        System.assertEquals(false, payrollAutopayPayload2.equals(payrollAutopayPayload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollAutopayPayload payrollAutopayPayload1 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload2 = new OASPayrollAutopayPayload();

        System.assertEquals(payrollAutopayPayload1.hashCode(), payrollAutopayPayload1.hashCode());
        System.assertEquals(payrollAutopayPayload2.hashCode(), payrollAutopayPayload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollAutopayPayload payrollAutopayPayload1 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload2 = OASPayrollAutopayPayload.getExample();
        OASPayrollAutopayPayload payrollAutopayPayload3 = new OASPayrollAutopayPayload();
        OASPayrollAutopayPayload payrollAutopayPayload4 = new OASPayrollAutopayPayload();

        System.assert(payrollAutopayPayload1.equals(payrollAutopayPayload2));
        System.assert(payrollAutopayPayload3.equals(payrollAutopayPayload4));
        System.assertEquals(payrollAutopayPayload1.hashCode(), payrollAutopayPayload2.hashCode());
        System.assertEquals(payrollAutopayPayload3.hashCode(), payrollAutopayPayload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayrollAutopayPayload payrollAutopayPayload = new OASPayrollAutopayPayload();
        Map<String, String> x-property-mappings = payrollAutopayPayload.getx-property-mappings();
        System.assertEquals('debtorBic', x-property-mappings.get('debtor_bic'));
        System.assertEquals('debtorIban', x-property-mappings.get('debtor_iban'));
        System.assertEquals('debtorName', x-property-mappings.get('debtor_name'));
        System.assertEquals('executionDate', x-property-mappings.get('execution_date'));
    }
}
