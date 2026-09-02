@isTest
private class OASExtraPaymentTest {
    @isTest
    private static void equalsSameInstance() {
        OASExtraPayment extraPayment1 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment2 = extraPayment1;
        OASExtraPayment extraPayment3 = new OASExtraPayment();
        OASExtraPayment extraPayment4 = extraPayment3;

        System.assert(extraPayment1.equals(extraPayment2));
        System.assert(extraPayment2.equals(extraPayment1));
        System.assert(extraPayment1.equals(extraPayment1));
        System.assert(extraPayment3.equals(extraPayment4));
        System.assert(extraPayment4.equals(extraPayment3));
        System.assert(extraPayment3.equals(extraPayment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExtraPayment extraPayment1 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment2 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment3 = new OASExtraPayment();
        OASExtraPayment extraPayment4 = new OASExtraPayment();

        System.assert(extraPayment1.equals(extraPayment2));
        System.assert(extraPayment2.equals(extraPayment1));
        System.assert(extraPayment3.equals(extraPayment4));
        System.assert(extraPayment4.equals(extraPayment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExtraPayment extraPayment1 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment2 = new OASExtraPayment();

        System.assertEquals(false, extraPayment1.equals('foo'));
        System.assertEquals(false, extraPayment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExtraPayment extraPayment1 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment2 = new OASExtraPayment();
        OASExtraPayment extraPayment3;

        System.assertEquals(false, extraPayment1.equals(extraPayment3));
        System.assertEquals(false, extraPayment2.equals(extraPayment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExtraPayment extraPayment1 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment2 = new OASExtraPayment();

        System.assertEquals(extraPayment1.hashCode(), extraPayment1.hashCode());
        System.assertEquals(extraPayment2.hashCode(), extraPayment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExtraPayment extraPayment1 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment2 = OASExtraPayment.getExample();
        OASExtraPayment extraPayment3 = new OASExtraPayment();
        OASExtraPayment extraPayment4 = new OASExtraPayment();

        System.assert(extraPayment1.equals(extraPayment2));
        System.assert(extraPayment3.equals(extraPayment4));
        System.assertEquals(extraPayment1.hashCode(), extraPayment2.hashCode());
        System.assertEquals(extraPayment3.hashCode(), extraPayment4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExtraPayment extraPayment = new OASExtraPayment();
        Map<String, String> x-property-mappings = extraPayment.getx-property-mappings();
        System.assertEquals('employeeId', x-property-mappings.get('employee_id'));
    }
}
