@isTest
private class OASGatewayTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASGatewayType> expected = new Set<OASGatewayType>{
            OASGatewayType.STRIPE,
            OASGatewayType.PAYPAL,
            OASGatewayType.KLARNA,
            OASGatewayType.SOFORT,
            OASGatewayType.BANCONTACT,
            OASGatewayType.IDEAL,
            OASGatewayType.BANK_TRANSFER,
            OASGatewayType.MOLLIE,
            OASGatewayType.BITPAY,
            OASGatewayType.BRAINTREE,
            OASGatewayType.ADYEN,
            OASGatewayType.PADDLE,
            OASGatewayType.VIVA_WALLET,
            OASGatewayType.REEPAY,
            OASGatewayType.SUMUP,
            OASGatewayType.TEST
        };
        Set<OASGatewayType> actual  = new Set<OASGatewayType>(OASGatewayType.values());
        System.assertEquals(expected, actual);
    }
}
