@isTest
private class OASPaymentGatewayTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentGateway paymentGateway1 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway2 = paymentGateway1;
        OASPaymentGateway paymentGateway3 = new OASPaymentGateway();
        OASPaymentGateway paymentGateway4 = paymentGateway3;

        System.assert(paymentGateway1.equals(paymentGateway2));
        System.assert(paymentGateway2.equals(paymentGateway1));
        System.assert(paymentGateway1.equals(paymentGateway1));
        System.assert(paymentGateway3.equals(paymentGateway4));
        System.assert(paymentGateway4.equals(paymentGateway3));
        System.assert(paymentGateway3.equals(paymentGateway3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentGateway paymentGateway1 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway2 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway3 = new OASPaymentGateway();
        OASPaymentGateway paymentGateway4 = new OASPaymentGateway();

        System.assert(paymentGateway1.equals(paymentGateway2));
        System.assert(paymentGateway2.equals(paymentGateway1));
        System.assert(paymentGateway3.equals(paymentGateway4));
        System.assert(paymentGateway4.equals(paymentGateway3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentGateway paymentGateway1 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway2 = new OASPaymentGateway();

        System.assertEquals(false, paymentGateway1.equals('foo'));
        System.assertEquals(false, paymentGateway2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentGateway paymentGateway1 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway2 = new OASPaymentGateway();
        OASPaymentGateway paymentGateway3;

        System.assertEquals(false, paymentGateway1.equals(paymentGateway3));
        System.assertEquals(false, paymentGateway2.equals(paymentGateway3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentGateway paymentGateway1 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway2 = new OASPaymentGateway();

        System.assertEquals(paymentGateway1.hashCode(), paymentGateway1.hashCode());
        System.assertEquals(paymentGateway2.hashCode(), paymentGateway2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentGateway paymentGateway1 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway2 = OASPaymentGateway.getExample();
        OASPaymentGateway paymentGateway3 = new OASPaymentGateway();
        OASPaymentGateway paymentGateway4 = new OASPaymentGateway();

        System.assert(paymentGateway1.equals(paymentGateway2));
        System.assert(paymentGateway3.equals(paymentGateway4));
        System.assertEquals(paymentGateway1.hashCode(), paymentGateway2.hashCode());
        System.assertEquals(paymentGateway3.hashCode(), paymentGateway4.hashCode());
    }
}
