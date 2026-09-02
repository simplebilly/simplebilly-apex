@isTest
private class OASAllocatePaymentRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASAllocatePaymentRequest allocatePaymentRequest1 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest2 = allocatePaymentRequest1;
        OASAllocatePaymentRequest allocatePaymentRequest3 = new OASAllocatePaymentRequest();
        OASAllocatePaymentRequest allocatePaymentRequest4 = allocatePaymentRequest3;

        System.assert(allocatePaymentRequest1.equals(allocatePaymentRequest2));
        System.assert(allocatePaymentRequest2.equals(allocatePaymentRequest1));
        System.assert(allocatePaymentRequest1.equals(allocatePaymentRequest1));
        System.assert(allocatePaymentRequest3.equals(allocatePaymentRequest4));
        System.assert(allocatePaymentRequest4.equals(allocatePaymentRequest3));
        System.assert(allocatePaymentRequest3.equals(allocatePaymentRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAllocatePaymentRequest allocatePaymentRequest1 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest2 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest3 = new OASAllocatePaymentRequest();
        OASAllocatePaymentRequest allocatePaymentRequest4 = new OASAllocatePaymentRequest();

        System.assert(allocatePaymentRequest1.equals(allocatePaymentRequest2));
        System.assert(allocatePaymentRequest2.equals(allocatePaymentRequest1));
        System.assert(allocatePaymentRequest3.equals(allocatePaymentRequest4));
        System.assert(allocatePaymentRequest4.equals(allocatePaymentRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAllocatePaymentRequest allocatePaymentRequest1 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest2 = new OASAllocatePaymentRequest();

        System.assertEquals(false, allocatePaymentRequest1.equals('foo'));
        System.assertEquals(false, allocatePaymentRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAllocatePaymentRequest allocatePaymentRequest1 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest2 = new OASAllocatePaymentRequest();
        OASAllocatePaymentRequest allocatePaymentRequest3;

        System.assertEquals(false, allocatePaymentRequest1.equals(allocatePaymentRequest3));
        System.assertEquals(false, allocatePaymentRequest2.equals(allocatePaymentRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAllocatePaymentRequest allocatePaymentRequest1 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest2 = new OASAllocatePaymentRequest();

        System.assertEquals(allocatePaymentRequest1.hashCode(), allocatePaymentRequest1.hashCode());
        System.assertEquals(allocatePaymentRequest2.hashCode(), allocatePaymentRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAllocatePaymentRequest allocatePaymentRequest1 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest2 = OASAllocatePaymentRequest.getExample();
        OASAllocatePaymentRequest allocatePaymentRequest3 = new OASAllocatePaymentRequest();
        OASAllocatePaymentRequest allocatePaymentRequest4 = new OASAllocatePaymentRequest();

        System.assert(allocatePaymentRequest1.equals(allocatePaymentRequest2));
        System.assert(allocatePaymentRequest3.equals(allocatePaymentRequest4));
        System.assertEquals(allocatePaymentRequest1.hashCode(), allocatePaymentRequest2.hashCode());
        System.assertEquals(allocatePaymentRequest3.hashCode(), allocatePaymentRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAllocatePaymentRequest allocatePaymentRequest = new OASAllocatePaymentRequest();
        Map<String, String> x-property-mappings = allocatePaymentRequest.getx-property-mappings();
        System.assertEquals('invoiceId', x-property-mappings.get('invoice_id'));
        System.assertEquals('paymentId', x-property-mappings.get('payment_id'));
    }
}
