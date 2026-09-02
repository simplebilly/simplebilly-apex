@isTest
private class OASPaymentCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentCreate paymentCreate1 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate2 = paymentCreate1;
        OASPaymentCreate paymentCreate3 = new OASPaymentCreate();
        OASPaymentCreate paymentCreate4 = paymentCreate3;

        System.assert(paymentCreate1.equals(paymentCreate2));
        System.assert(paymentCreate2.equals(paymentCreate1));
        System.assert(paymentCreate1.equals(paymentCreate1));
        System.assert(paymentCreate3.equals(paymentCreate4));
        System.assert(paymentCreate4.equals(paymentCreate3));
        System.assert(paymentCreate3.equals(paymentCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentCreate paymentCreate1 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate2 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate3 = new OASPaymentCreate();
        OASPaymentCreate paymentCreate4 = new OASPaymentCreate();

        System.assert(paymentCreate1.equals(paymentCreate2));
        System.assert(paymentCreate2.equals(paymentCreate1));
        System.assert(paymentCreate3.equals(paymentCreate4));
        System.assert(paymentCreate4.equals(paymentCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentCreate paymentCreate1 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate2 = new OASPaymentCreate();

        System.assertEquals(false, paymentCreate1.equals('foo'));
        System.assertEquals(false, paymentCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentCreate paymentCreate1 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate2 = new OASPaymentCreate();
        OASPaymentCreate paymentCreate3;

        System.assertEquals(false, paymentCreate1.equals(paymentCreate3));
        System.assertEquals(false, paymentCreate2.equals(paymentCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentCreate paymentCreate1 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate2 = new OASPaymentCreate();

        System.assertEquals(paymentCreate1.hashCode(), paymentCreate1.hashCode());
        System.assertEquals(paymentCreate2.hashCode(), paymentCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentCreate paymentCreate1 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate2 = OASPaymentCreate.getExample();
        OASPaymentCreate paymentCreate3 = new OASPaymentCreate();
        OASPaymentCreate paymentCreate4 = new OASPaymentCreate();

        System.assert(paymentCreate1.equals(paymentCreate2));
        System.assert(paymentCreate3.equals(paymentCreate4));
        System.assertEquals(paymentCreate1.hashCode(), paymentCreate2.hashCode());
        System.assertEquals(paymentCreate3.hashCode(), paymentCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaymentCreate paymentCreate = new OASPaymentCreate();
        Map<String, String> x-property-mappings = paymentCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
