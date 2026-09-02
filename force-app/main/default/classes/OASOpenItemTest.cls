@isTest
private class OASOpenItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASOpenItem openItem1 = OASOpenItem.getExample();
        OASOpenItem openItem2 = openItem1;
        OASOpenItem openItem3 = new OASOpenItem();
        OASOpenItem openItem4 = openItem3;

        System.assert(openItem1.equals(openItem2));
        System.assert(openItem2.equals(openItem1));
        System.assert(openItem1.equals(openItem1));
        System.assert(openItem3.equals(openItem4));
        System.assert(openItem4.equals(openItem3));
        System.assert(openItem3.equals(openItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOpenItem openItem1 = OASOpenItem.getExample();
        OASOpenItem openItem2 = OASOpenItem.getExample();
        OASOpenItem openItem3 = new OASOpenItem();
        OASOpenItem openItem4 = new OASOpenItem();

        System.assert(openItem1.equals(openItem2));
        System.assert(openItem2.equals(openItem1));
        System.assert(openItem3.equals(openItem4));
        System.assert(openItem4.equals(openItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOpenItem openItem1 = OASOpenItem.getExample();
        OASOpenItem openItem2 = new OASOpenItem();

        System.assertEquals(false, openItem1.equals('foo'));
        System.assertEquals(false, openItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOpenItem openItem1 = OASOpenItem.getExample();
        OASOpenItem openItem2 = new OASOpenItem();
        OASOpenItem openItem3;

        System.assertEquals(false, openItem1.equals(openItem3));
        System.assertEquals(false, openItem2.equals(openItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOpenItem openItem1 = OASOpenItem.getExample();
        OASOpenItem openItem2 = new OASOpenItem();

        System.assertEquals(openItem1.hashCode(), openItem1.hashCode());
        System.assertEquals(openItem2.hashCode(), openItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOpenItem openItem1 = OASOpenItem.getExample();
        OASOpenItem openItem2 = OASOpenItem.getExample();
        OASOpenItem openItem3 = new OASOpenItem();
        OASOpenItem openItem4 = new OASOpenItem();

        System.assert(openItem1.equals(openItem2));
        System.assert(openItem3.equals(openItem4));
        System.assertEquals(openItem1.hashCode(), openItem2.hashCode());
        System.assertEquals(openItem3.hashCode(), openItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOpenItem openItem = new OASOpenItem();
        Map<String, String> x-property-mappings = openItem.getx-property-mappings();
        System.assertEquals('amountDue', x-property-mappings.get('amount_due'));
        System.assertEquals('amountPaid', x-property-mappings.get('amount_paid'));
        System.assertEquals('customerId', x-property-mappings.get('customer_id'));
        System.assertEquals('daysOverdue', x-property-mappings.get('days_overdue'));
        System.assertEquals('dueDate', x-property-mappings.get('due_date'));
        System.assertEquals('invoiceId', x-property-mappings.get('invoice_id'));
        System.assertEquals('invoiceNumber', x-property-mappings.get('invoice_number'));
        System.assertEquals('issueDate', x-property-mappings.get('issue_date'));
        System.assertEquals('openAmount', x-property-mappings.get('open_amount'));
        System.assertEquals('reminderLevel', x-property-mappings.get('reminder_level'));
    }
}
