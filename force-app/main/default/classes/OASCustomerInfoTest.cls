@isTest
private class OASCustomerInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomerInfo customerInfo1 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo2 = customerInfo1;
        OASCustomerInfo customerInfo3 = new OASCustomerInfo();
        OASCustomerInfo customerInfo4 = customerInfo3;

        System.assert(customerInfo1.equals(customerInfo2));
        System.assert(customerInfo2.equals(customerInfo1));
        System.assert(customerInfo1.equals(customerInfo1));
        System.assert(customerInfo3.equals(customerInfo4));
        System.assert(customerInfo4.equals(customerInfo3));
        System.assert(customerInfo3.equals(customerInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomerInfo customerInfo1 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo2 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo3 = new OASCustomerInfo();
        OASCustomerInfo customerInfo4 = new OASCustomerInfo();

        System.assert(customerInfo1.equals(customerInfo2));
        System.assert(customerInfo2.equals(customerInfo1));
        System.assert(customerInfo3.equals(customerInfo4));
        System.assert(customerInfo4.equals(customerInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomerInfo customerInfo1 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo2 = new OASCustomerInfo();

        System.assertEquals(false, customerInfo1.equals('foo'));
        System.assertEquals(false, customerInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomerInfo customerInfo1 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo2 = new OASCustomerInfo();
        OASCustomerInfo customerInfo3;

        System.assertEquals(false, customerInfo1.equals(customerInfo3));
        System.assertEquals(false, customerInfo2.equals(customerInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomerInfo customerInfo1 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo2 = new OASCustomerInfo();

        System.assertEquals(customerInfo1.hashCode(), customerInfo1.hashCode());
        System.assertEquals(customerInfo2.hashCode(), customerInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomerInfo customerInfo1 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo2 = OASCustomerInfo.getExample();
        OASCustomerInfo customerInfo3 = new OASCustomerInfo();
        OASCustomerInfo customerInfo4 = new OASCustomerInfo();

        System.assert(customerInfo1.equals(customerInfo2));
        System.assert(customerInfo3.equals(customerInfo4));
        System.assertEquals(customerInfo1.hashCode(), customerInfo2.hashCode());
        System.assertEquals(customerInfo3.hashCode(), customerInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCustomerInfo customerInfo = new OASCustomerInfo();
        Map<String, String> x-property-mappings = customerInfo.getx-property-mappings();
        System.assertEquals('annualVolume', x-property-mappings.get('annual_volume'));
        System.assertEquals('isRegistered', x-property-mappings.get('is_registered'));
    }
}
