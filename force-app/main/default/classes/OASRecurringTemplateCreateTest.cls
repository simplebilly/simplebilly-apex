@isTest
private class OASRecurringTemplateCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecurringTemplateCreate recurringTemplateCreate1 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate2 = recurringTemplateCreate1;
        OASRecurringTemplateCreate recurringTemplateCreate3 = new OASRecurringTemplateCreate();
        OASRecurringTemplateCreate recurringTemplateCreate4 = recurringTemplateCreate3;

        System.assert(recurringTemplateCreate1.equals(recurringTemplateCreate2));
        System.assert(recurringTemplateCreate2.equals(recurringTemplateCreate1));
        System.assert(recurringTemplateCreate1.equals(recurringTemplateCreate1));
        System.assert(recurringTemplateCreate3.equals(recurringTemplateCreate4));
        System.assert(recurringTemplateCreate4.equals(recurringTemplateCreate3));
        System.assert(recurringTemplateCreate3.equals(recurringTemplateCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecurringTemplateCreate recurringTemplateCreate1 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate2 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate3 = new OASRecurringTemplateCreate();
        OASRecurringTemplateCreate recurringTemplateCreate4 = new OASRecurringTemplateCreate();

        System.assert(recurringTemplateCreate1.equals(recurringTemplateCreate2));
        System.assert(recurringTemplateCreate2.equals(recurringTemplateCreate1));
        System.assert(recurringTemplateCreate3.equals(recurringTemplateCreate4));
        System.assert(recurringTemplateCreate4.equals(recurringTemplateCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecurringTemplateCreate recurringTemplateCreate1 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate2 = new OASRecurringTemplateCreate();

        System.assertEquals(false, recurringTemplateCreate1.equals('foo'));
        System.assertEquals(false, recurringTemplateCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecurringTemplateCreate recurringTemplateCreate1 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate2 = new OASRecurringTemplateCreate();
        OASRecurringTemplateCreate recurringTemplateCreate3;

        System.assertEquals(false, recurringTemplateCreate1.equals(recurringTemplateCreate3));
        System.assertEquals(false, recurringTemplateCreate2.equals(recurringTemplateCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecurringTemplateCreate recurringTemplateCreate1 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate2 = new OASRecurringTemplateCreate();

        System.assertEquals(recurringTemplateCreate1.hashCode(), recurringTemplateCreate1.hashCode());
        System.assertEquals(recurringTemplateCreate2.hashCode(), recurringTemplateCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecurringTemplateCreate recurringTemplateCreate1 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate2 = OASRecurringTemplateCreate.getExample();
        OASRecurringTemplateCreate recurringTemplateCreate3 = new OASRecurringTemplateCreate();
        OASRecurringTemplateCreate recurringTemplateCreate4 = new OASRecurringTemplateCreate();

        System.assert(recurringTemplateCreate1.equals(recurringTemplateCreate2));
        System.assert(recurringTemplateCreate3.equals(recurringTemplateCreate4));
        System.assertEquals(recurringTemplateCreate1.hashCode(), recurringTemplateCreate2.hashCode());
        System.assertEquals(recurringTemplateCreate3.hashCode(), recurringTemplateCreate4.hashCode());
    }
}
