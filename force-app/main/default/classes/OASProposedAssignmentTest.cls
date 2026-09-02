@isTest
private class OASProposedAssignmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASProposedAssignment proposedAssignment1 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment2 = proposedAssignment1;
        OASProposedAssignment proposedAssignment3 = new OASProposedAssignment();
        OASProposedAssignment proposedAssignment4 = proposedAssignment3;

        System.assert(proposedAssignment1.equals(proposedAssignment2));
        System.assert(proposedAssignment2.equals(proposedAssignment1));
        System.assert(proposedAssignment1.equals(proposedAssignment1));
        System.assert(proposedAssignment3.equals(proposedAssignment4));
        System.assert(proposedAssignment4.equals(proposedAssignment3));
        System.assert(proposedAssignment3.equals(proposedAssignment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProposedAssignment proposedAssignment1 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment2 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment3 = new OASProposedAssignment();
        OASProposedAssignment proposedAssignment4 = new OASProposedAssignment();

        System.assert(proposedAssignment1.equals(proposedAssignment2));
        System.assert(proposedAssignment2.equals(proposedAssignment1));
        System.assert(proposedAssignment3.equals(proposedAssignment4));
        System.assert(proposedAssignment4.equals(proposedAssignment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProposedAssignment proposedAssignment1 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment2 = new OASProposedAssignment();

        System.assertEquals(false, proposedAssignment1.equals('foo'));
        System.assertEquals(false, proposedAssignment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProposedAssignment proposedAssignment1 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment2 = new OASProposedAssignment();
        OASProposedAssignment proposedAssignment3;

        System.assertEquals(false, proposedAssignment1.equals(proposedAssignment3));
        System.assertEquals(false, proposedAssignment2.equals(proposedAssignment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProposedAssignment proposedAssignment1 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment2 = new OASProposedAssignment();

        System.assertEquals(proposedAssignment1.hashCode(), proposedAssignment1.hashCode());
        System.assertEquals(proposedAssignment2.hashCode(), proposedAssignment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProposedAssignment proposedAssignment1 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment2 = OASProposedAssignment.getExample();
        OASProposedAssignment proposedAssignment3 = new OASProposedAssignment();
        OASProposedAssignment proposedAssignment4 = new OASProposedAssignment();

        System.assert(proposedAssignment1.equals(proposedAssignment2));
        System.assert(proposedAssignment3.equals(proposedAssignment4));
        System.assertEquals(proposedAssignment1.hashCode(), proposedAssignment2.hashCode());
        System.assertEquals(proposedAssignment3.hashCode(), proposedAssignment4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProposedAssignment proposedAssignment = new OASProposedAssignment();
        Map<String, String> x-property-mappings = proposedAssignment.getx-property-mappings();
        System.assertEquals('amountPaid', x-property-mappings.get('amount_paid'));
        System.assertEquals('customerId', x-property-mappings.get('customer_id'));
        System.assertEquals('invoiceId', x-property-mappings.get('invoice_id'));
        System.assertEquals('invoiceNumber', x-property-mappings.get('invoice_number'));
        System.assertEquals('openAmount', x-property-mappings.get('open_amount'));
        System.assertEquals('paymentDate', x-property-mappings.get('payment_date'));
        System.assertEquals('paymentId', x-property-mappings.get('payment_id'));
    }
}
