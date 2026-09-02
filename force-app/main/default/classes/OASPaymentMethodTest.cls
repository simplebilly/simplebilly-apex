@isTest
private class OASPaymentMethodTest {
    @isTest
    private static void allowableValues() {
        Set<OASPaymentMethod> expected = new Set<OASPaymentMethod>{
            OASPaymentMethod.BANK_TRANSFER,
            OASPaymentMethod.SEPA_DIRECT_DEBIT,
            OASPaymentMethod.CASH,
            OASPaymentMethod.CREDIT_CARD,
            OASPaymentMethod.PAYPAL,
            OASPaymentMethod.SUMUP,
            OASPaymentMethod.VIVA_WALLET,
            OASPaymentMethod.REEPAY,
            OASPaymentMethod.NONE
        };
        Set<OASPaymentMethod> actual  = new Set<OASPaymentMethod>(OASPaymentMethod.values());
        System.assertEquals(expected, actual);
    }
}
