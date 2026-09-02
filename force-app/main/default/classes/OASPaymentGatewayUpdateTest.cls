@isTest
private class OASPaymentGatewayUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentGatewayUpdate paymentGatewayUpdate1 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate2 = paymentGatewayUpdate1;
        OASPaymentGatewayUpdate paymentGatewayUpdate3 = new OASPaymentGatewayUpdate();
        OASPaymentGatewayUpdate paymentGatewayUpdate4 = paymentGatewayUpdate3;

        System.assert(paymentGatewayUpdate1.equals(paymentGatewayUpdate2));
        System.assert(paymentGatewayUpdate2.equals(paymentGatewayUpdate1));
        System.assert(paymentGatewayUpdate1.equals(paymentGatewayUpdate1));
        System.assert(paymentGatewayUpdate3.equals(paymentGatewayUpdate4));
        System.assert(paymentGatewayUpdate4.equals(paymentGatewayUpdate3));
        System.assert(paymentGatewayUpdate3.equals(paymentGatewayUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentGatewayUpdate paymentGatewayUpdate1 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate2 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate3 = new OASPaymentGatewayUpdate();
        OASPaymentGatewayUpdate paymentGatewayUpdate4 = new OASPaymentGatewayUpdate();

        System.assert(paymentGatewayUpdate1.equals(paymentGatewayUpdate2));
        System.assert(paymentGatewayUpdate2.equals(paymentGatewayUpdate1));
        System.assert(paymentGatewayUpdate3.equals(paymentGatewayUpdate4));
        System.assert(paymentGatewayUpdate4.equals(paymentGatewayUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentGatewayUpdate paymentGatewayUpdate1 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate2 = new OASPaymentGatewayUpdate();

        System.assertEquals(false, paymentGatewayUpdate1.equals('foo'));
        System.assertEquals(false, paymentGatewayUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentGatewayUpdate paymentGatewayUpdate1 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate2 = new OASPaymentGatewayUpdate();
        OASPaymentGatewayUpdate paymentGatewayUpdate3;

        System.assertEquals(false, paymentGatewayUpdate1.equals(paymentGatewayUpdate3));
        System.assertEquals(false, paymentGatewayUpdate2.equals(paymentGatewayUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentGatewayUpdate paymentGatewayUpdate1 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate2 = new OASPaymentGatewayUpdate();

        System.assertEquals(paymentGatewayUpdate1.hashCode(), paymentGatewayUpdate1.hashCode());
        System.assertEquals(paymentGatewayUpdate2.hashCode(), paymentGatewayUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentGatewayUpdate paymentGatewayUpdate1 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate2 = OASPaymentGatewayUpdate.getExample();
        OASPaymentGatewayUpdate paymentGatewayUpdate3 = new OASPaymentGatewayUpdate();
        OASPaymentGatewayUpdate paymentGatewayUpdate4 = new OASPaymentGatewayUpdate();

        System.assert(paymentGatewayUpdate1.equals(paymentGatewayUpdate2));
        System.assert(paymentGatewayUpdate3.equals(paymentGatewayUpdate4));
        System.assertEquals(paymentGatewayUpdate1.hashCode(), paymentGatewayUpdate2.hashCode());
        System.assertEquals(paymentGatewayUpdate3.hashCode(), paymentGatewayUpdate4.hashCode());
    }
}
