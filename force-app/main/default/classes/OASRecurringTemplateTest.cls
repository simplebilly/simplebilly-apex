@isTest
private class OASRecurringTemplateTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecurringTemplate recurringTemplate1 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate2 = recurringTemplate1;
        OASRecurringTemplate recurringTemplate3 = new OASRecurringTemplate();
        OASRecurringTemplate recurringTemplate4 = recurringTemplate3;

        System.assert(recurringTemplate1.equals(recurringTemplate2));
        System.assert(recurringTemplate2.equals(recurringTemplate1));
        System.assert(recurringTemplate1.equals(recurringTemplate1));
        System.assert(recurringTemplate3.equals(recurringTemplate4));
        System.assert(recurringTemplate4.equals(recurringTemplate3));
        System.assert(recurringTemplate3.equals(recurringTemplate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecurringTemplate recurringTemplate1 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate2 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate3 = new OASRecurringTemplate();
        OASRecurringTemplate recurringTemplate4 = new OASRecurringTemplate();

        System.assert(recurringTemplate1.equals(recurringTemplate2));
        System.assert(recurringTemplate2.equals(recurringTemplate1));
        System.assert(recurringTemplate3.equals(recurringTemplate4));
        System.assert(recurringTemplate4.equals(recurringTemplate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecurringTemplate recurringTemplate1 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate2 = new OASRecurringTemplate();

        System.assertEquals(false, recurringTemplate1.equals('foo'));
        System.assertEquals(false, recurringTemplate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecurringTemplate recurringTemplate1 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate2 = new OASRecurringTemplate();
        OASRecurringTemplate recurringTemplate3;

        System.assertEquals(false, recurringTemplate1.equals(recurringTemplate3));
        System.assertEquals(false, recurringTemplate2.equals(recurringTemplate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecurringTemplate recurringTemplate1 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate2 = new OASRecurringTemplate();

        System.assertEquals(recurringTemplate1.hashCode(), recurringTemplate1.hashCode());
        System.assertEquals(recurringTemplate2.hashCode(), recurringTemplate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecurringTemplate recurringTemplate1 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate2 = OASRecurringTemplate.getExample();
        OASRecurringTemplate recurringTemplate3 = new OASRecurringTemplate();
        OASRecurringTemplate recurringTemplate4 = new OASRecurringTemplate();

        System.assert(recurringTemplate1.equals(recurringTemplate2));
        System.assert(recurringTemplate3.equals(recurringTemplate4));
        System.assertEquals(recurringTemplate1.hashCode(), recurringTemplate2.hashCode());
        System.assertEquals(recurringTemplate3.hashCode(), recurringTemplate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRecurringTemplate recurringTemplate = new OASRecurringTemplate();
        Map<String, String> x-property-mappings = recurringTemplate.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('deletedAt', x-property-mappings.get('deleted_at'));
        System.assertEquals('endDate', x-property-mappings.get('end_date'));
        System.assertEquals('executionInterval', x-property-mappings.get('execution_interval'));
        System.assertEquals('executionStatus', x-property-mappings.get('execution_status'));
        System.assertEquals('lastExecutedAt', x-property-mappings.get('last_executed_at'));
        System.assertEquals('nextExecutionAt', x-property-mappings.get('next_execution_at'));
        System.assertEquals('startDate', x-property-mappings.get('start_date'));
        System.assertEquals('templateId', x-property-mappings.get('template_id'));
        System.assertEquals('templateType', x-property-mappings.get('template_type'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
        System.assertEquals('voucherData', x-property-mappings.get('voucher_data'));
    }
}
