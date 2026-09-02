@isTest
private class OASRecurringTemplateUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecurringTemplateUpdate recurringTemplateUpdate1 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate2 = recurringTemplateUpdate1;
        OASRecurringTemplateUpdate recurringTemplateUpdate3 = new OASRecurringTemplateUpdate();
        OASRecurringTemplateUpdate recurringTemplateUpdate4 = recurringTemplateUpdate3;

        System.assert(recurringTemplateUpdate1.equals(recurringTemplateUpdate2));
        System.assert(recurringTemplateUpdate2.equals(recurringTemplateUpdate1));
        System.assert(recurringTemplateUpdate1.equals(recurringTemplateUpdate1));
        System.assert(recurringTemplateUpdate3.equals(recurringTemplateUpdate4));
        System.assert(recurringTemplateUpdate4.equals(recurringTemplateUpdate3));
        System.assert(recurringTemplateUpdate3.equals(recurringTemplateUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecurringTemplateUpdate recurringTemplateUpdate1 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate2 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate3 = new OASRecurringTemplateUpdate();
        OASRecurringTemplateUpdate recurringTemplateUpdate4 = new OASRecurringTemplateUpdate();

        System.assert(recurringTemplateUpdate1.equals(recurringTemplateUpdate2));
        System.assert(recurringTemplateUpdate2.equals(recurringTemplateUpdate1));
        System.assert(recurringTemplateUpdate3.equals(recurringTemplateUpdate4));
        System.assert(recurringTemplateUpdate4.equals(recurringTemplateUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecurringTemplateUpdate recurringTemplateUpdate1 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate2 = new OASRecurringTemplateUpdate();

        System.assertEquals(false, recurringTemplateUpdate1.equals('foo'));
        System.assertEquals(false, recurringTemplateUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecurringTemplateUpdate recurringTemplateUpdate1 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate2 = new OASRecurringTemplateUpdate();
        OASRecurringTemplateUpdate recurringTemplateUpdate3;

        System.assertEquals(false, recurringTemplateUpdate1.equals(recurringTemplateUpdate3));
        System.assertEquals(false, recurringTemplateUpdate2.equals(recurringTemplateUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecurringTemplateUpdate recurringTemplateUpdate1 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate2 = new OASRecurringTemplateUpdate();

        System.assertEquals(recurringTemplateUpdate1.hashCode(), recurringTemplateUpdate1.hashCode());
        System.assertEquals(recurringTemplateUpdate2.hashCode(), recurringTemplateUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecurringTemplateUpdate recurringTemplateUpdate1 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate2 = OASRecurringTemplateUpdate.getExample();
        OASRecurringTemplateUpdate recurringTemplateUpdate3 = new OASRecurringTemplateUpdate();
        OASRecurringTemplateUpdate recurringTemplateUpdate4 = new OASRecurringTemplateUpdate();

        System.assert(recurringTemplateUpdate1.equals(recurringTemplateUpdate2));
        System.assert(recurringTemplateUpdate3.equals(recurringTemplateUpdate4));
        System.assertEquals(recurringTemplateUpdate1.hashCode(), recurringTemplateUpdate2.hashCode());
        System.assertEquals(recurringTemplateUpdate3.hashCode(), recurringTemplateUpdate4.hashCode());
    }
}
