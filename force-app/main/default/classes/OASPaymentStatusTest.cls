@isTest
private class OASPaymentStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASPaymentStatus> expected = new Set<OASPaymentStatus>{
            OASPaymentStatus.UNPAID,
            OASPaymentStatus.PAID
        };
        Set<OASPaymentStatus> actual  = new Set<OASPaymentStatus>(OASPaymentStatus.values());
        System.assertEquals(expected, actual);
    }
}
