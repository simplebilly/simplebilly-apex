@isTest
private class OASPayrollPayPayloadTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayrollPayPayload payrollPayPayload1 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload2 = payrollPayPayload1;
        OASPayrollPayPayload payrollPayPayload3 = new OASPayrollPayPayload();
        OASPayrollPayPayload payrollPayPayload4 = payrollPayPayload3;

        System.assert(payrollPayPayload1.equals(payrollPayPayload2));
        System.assert(payrollPayPayload2.equals(payrollPayPayload1));
        System.assert(payrollPayPayload1.equals(payrollPayPayload1));
        System.assert(payrollPayPayload3.equals(payrollPayPayload4));
        System.assert(payrollPayPayload4.equals(payrollPayPayload3));
        System.assert(payrollPayPayload3.equals(payrollPayPayload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayrollPayPayload payrollPayPayload1 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload2 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload3 = new OASPayrollPayPayload();
        OASPayrollPayPayload payrollPayPayload4 = new OASPayrollPayPayload();

        System.assert(payrollPayPayload1.equals(payrollPayPayload2));
        System.assert(payrollPayPayload2.equals(payrollPayPayload1));
        System.assert(payrollPayPayload3.equals(payrollPayPayload4));
        System.assert(payrollPayPayload4.equals(payrollPayPayload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayrollPayPayload payrollPayPayload1 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload2 = new OASPayrollPayPayload();

        System.assertEquals(false, payrollPayPayload1.equals('foo'));
        System.assertEquals(false, payrollPayPayload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayrollPayPayload payrollPayPayload1 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload2 = new OASPayrollPayPayload();
        OASPayrollPayPayload payrollPayPayload3;

        System.assertEquals(false, payrollPayPayload1.equals(payrollPayPayload3));
        System.assertEquals(false, payrollPayPayload2.equals(payrollPayPayload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayrollPayPayload payrollPayPayload1 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload2 = new OASPayrollPayPayload();

        System.assertEquals(payrollPayPayload1.hashCode(), payrollPayPayload1.hashCode());
        System.assertEquals(payrollPayPayload2.hashCode(), payrollPayPayload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayrollPayPayload payrollPayPayload1 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload2 = OASPayrollPayPayload.getExample();
        OASPayrollPayPayload payrollPayPayload3 = new OASPayrollPayPayload();
        OASPayrollPayPayload payrollPayPayload4 = new OASPayrollPayPayload();

        System.assert(payrollPayPayload1.equals(payrollPayPayload2));
        System.assert(payrollPayPayload3.equals(payrollPayPayload4));
        System.assertEquals(payrollPayPayload1.hashCode(), payrollPayPayload2.hashCode());
        System.assertEquals(payrollPayPayload3.hashCode(), payrollPayPayload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayrollPayPayload payrollPayPayload = new OASPayrollPayPayload();
        Map<String, String> x-property-mappings = payrollPayPayload.getx-property-mappings();
        System.assertEquals('paymentDate', x-property-mappings.get('payment_date'));
    }
}
