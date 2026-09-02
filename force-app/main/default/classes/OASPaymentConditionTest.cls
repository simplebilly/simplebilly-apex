@isTest
private class OASPaymentConditionTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentCondition paymentCondition1 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition2 = paymentCondition1;
        OASPaymentCondition paymentCondition3 = new OASPaymentCondition();
        OASPaymentCondition paymentCondition4 = paymentCondition3;

        System.assert(paymentCondition1.equals(paymentCondition2));
        System.assert(paymentCondition2.equals(paymentCondition1));
        System.assert(paymentCondition1.equals(paymentCondition1));
        System.assert(paymentCondition3.equals(paymentCondition4));
        System.assert(paymentCondition4.equals(paymentCondition3));
        System.assert(paymentCondition3.equals(paymentCondition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentCondition paymentCondition1 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition2 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition3 = new OASPaymentCondition();
        OASPaymentCondition paymentCondition4 = new OASPaymentCondition();

        System.assert(paymentCondition1.equals(paymentCondition2));
        System.assert(paymentCondition2.equals(paymentCondition1));
        System.assert(paymentCondition3.equals(paymentCondition4));
        System.assert(paymentCondition4.equals(paymentCondition3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentCondition paymentCondition1 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition2 = new OASPaymentCondition();

        System.assertEquals(false, paymentCondition1.equals('foo'));
        System.assertEquals(false, paymentCondition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentCondition paymentCondition1 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition2 = new OASPaymentCondition();
        OASPaymentCondition paymentCondition3;

        System.assertEquals(false, paymentCondition1.equals(paymentCondition3));
        System.assertEquals(false, paymentCondition2.equals(paymentCondition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentCondition paymentCondition1 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition2 = new OASPaymentCondition();

        System.assertEquals(paymentCondition1.hashCode(), paymentCondition1.hashCode());
        System.assertEquals(paymentCondition2.hashCode(), paymentCondition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentCondition paymentCondition1 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition2 = OASPaymentCondition.getExample();
        OASPaymentCondition paymentCondition3 = new OASPaymentCondition();
        OASPaymentCondition paymentCondition4 = new OASPaymentCondition();

        System.assert(paymentCondition1.equals(paymentCondition2));
        System.assert(paymentCondition3.equals(paymentCondition4));
        System.assertEquals(paymentCondition1.hashCode(), paymentCondition2.hashCode());
        System.assertEquals(paymentCondition3.hashCode(), paymentCondition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaymentCondition paymentCondition = new OASPaymentCondition();
        Map<String, String> x-property-mappings = paymentCondition.getx-property-mappings();
        System.assertEquals('discountDays', x-property-mappings.get('discount_days'));
        System.assertEquals('discountPercentage', x-property-mappings.get('discount_percentage'));
        System.assertEquals('paymentTermDays', x-property-mappings.get('payment_term_days'));
    }
}
