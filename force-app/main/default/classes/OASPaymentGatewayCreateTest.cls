@isTest
private class OASPaymentGatewayCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentGatewayCreate paymentGatewayCreate1 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate2 = paymentGatewayCreate1;
        OASPaymentGatewayCreate paymentGatewayCreate3 = new OASPaymentGatewayCreate();
        OASPaymentGatewayCreate paymentGatewayCreate4 = paymentGatewayCreate3;

        System.assert(paymentGatewayCreate1.equals(paymentGatewayCreate2));
        System.assert(paymentGatewayCreate2.equals(paymentGatewayCreate1));
        System.assert(paymentGatewayCreate1.equals(paymentGatewayCreate1));
        System.assert(paymentGatewayCreate3.equals(paymentGatewayCreate4));
        System.assert(paymentGatewayCreate4.equals(paymentGatewayCreate3));
        System.assert(paymentGatewayCreate3.equals(paymentGatewayCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentGatewayCreate paymentGatewayCreate1 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate2 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate3 = new OASPaymentGatewayCreate();
        OASPaymentGatewayCreate paymentGatewayCreate4 = new OASPaymentGatewayCreate();

        System.assert(paymentGatewayCreate1.equals(paymentGatewayCreate2));
        System.assert(paymentGatewayCreate2.equals(paymentGatewayCreate1));
        System.assert(paymentGatewayCreate3.equals(paymentGatewayCreate4));
        System.assert(paymentGatewayCreate4.equals(paymentGatewayCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentGatewayCreate paymentGatewayCreate1 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate2 = new OASPaymentGatewayCreate();

        System.assertEquals(false, paymentGatewayCreate1.equals('foo'));
        System.assertEquals(false, paymentGatewayCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentGatewayCreate paymentGatewayCreate1 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate2 = new OASPaymentGatewayCreate();
        OASPaymentGatewayCreate paymentGatewayCreate3;

        System.assertEquals(false, paymentGatewayCreate1.equals(paymentGatewayCreate3));
        System.assertEquals(false, paymentGatewayCreate2.equals(paymentGatewayCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentGatewayCreate paymentGatewayCreate1 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate2 = new OASPaymentGatewayCreate();

        System.assertEquals(paymentGatewayCreate1.hashCode(), paymentGatewayCreate1.hashCode());
        System.assertEquals(paymentGatewayCreate2.hashCode(), paymentGatewayCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentGatewayCreate paymentGatewayCreate1 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate2 = OASPaymentGatewayCreate.getExample();
        OASPaymentGatewayCreate paymentGatewayCreate3 = new OASPaymentGatewayCreate();
        OASPaymentGatewayCreate paymentGatewayCreate4 = new OASPaymentGatewayCreate();

        System.assert(paymentGatewayCreate1.equals(paymentGatewayCreate2));
        System.assert(paymentGatewayCreate3.equals(paymentGatewayCreate4));
        System.assertEquals(paymentGatewayCreate1.hashCode(), paymentGatewayCreate2.hashCode());
        System.assertEquals(paymentGatewayCreate3.hashCode(), paymentGatewayCreate4.hashCode());
    }
}
