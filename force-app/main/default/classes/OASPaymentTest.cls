@isTest
private class OASPaymentTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayment payment1 = OASPayment.getExample();
        OASPayment payment2 = payment1;
        OASPayment payment3 = new OASPayment();
        OASPayment payment4 = payment3;

        System.assert(payment1.equals(payment2));
        System.assert(payment2.equals(payment1));
        System.assert(payment1.equals(payment1));
        System.assert(payment3.equals(payment4));
        System.assert(payment4.equals(payment3));
        System.assert(payment3.equals(payment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayment payment1 = OASPayment.getExample();
        OASPayment payment2 = OASPayment.getExample();
        OASPayment payment3 = new OASPayment();
        OASPayment payment4 = new OASPayment();

        System.assert(payment1.equals(payment2));
        System.assert(payment2.equals(payment1));
        System.assert(payment3.equals(payment4));
        System.assert(payment4.equals(payment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayment payment1 = OASPayment.getExample();
        OASPayment payment2 = new OASPayment();

        System.assertEquals(false, payment1.equals('foo'));
        System.assertEquals(false, payment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayment payment1 = OASPayment.getExample();
        OASPayment payment2 = new OASPayment();
        OASPayment payment3;

        System.assertEquals(false, payment1.equals(payment3));
        System.assertEquals(false, payment2.equals(payment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayment payment1 = OASPayment.getExample();
        OASPayment payment2 = new OASPayment();

        System.assertEquals(payment1.hashCode(), payment1.hashCode());
        System.assertEquals(payment2.hashCode(), payment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayment payment1 = OASPayment.getExample();
        OASPayment payment2 = OASPayment.getExample();
        OASPayment payment3 = new OASPayment();
        OASPayment payment4 = new OASPayment();

        System.assert(payment1.equals(payment2));
        System.assert(payment3.equals(payment4));
        System.assertEquals(payment1.hashCode(), payment2.hashCode());
        System.assertEquals(payment3.hashCode(), payment4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayment payment = new OASPayment();
        Map<String, String> x-property-mappings = payment.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
