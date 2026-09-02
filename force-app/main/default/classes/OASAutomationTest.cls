@isTest
private class OASAutomationTest {
    @isTest
    private static void equalsSameInstance() {
        OASAutomation automation1 = OASAutomation.getExample();
        OASAutomation automation2 = automation1;
        OASAutomation automation3 = new OASAutomation();
        OASAutomation automation4 = automation3;

        System.assert(automation1.equals(automation2));
        System.assert(automation2.equals(automation1));
        System.assert(automation1.equals(automation1));
        System.assert(automation3.equals(automation4));
        System.assert(automation4.equals(automation3));
        System.assert(automation3.equals(automation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAutomation automation1 = OASAutomation.getExample();
        OASAutomation automation2 = OASAutomation.getExample();
        OASAutomation automation3 = new OASAutomation();
        OASAutomation automation4 = new OASAutomation();

        System.assert(automation1.equals(automation2));
        System.assert(automation2.equals(automation1));
        System.assert(automation3.equals(automation4));
        System.assert(automation4.equals(automation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAutomation automation1 = OASAutomation.getExample();
        OASAutomation automation2 = new OASAutomation();

        System.assertEquals(false, automation1.equals('foo'));
        System.assertEquals(false, automation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAutomation automation1 = OASAutomation.getExample();
        OASAutomation automation2 = new OASAutomation();
        OASAutomation automation3;

        System.assertEquals(false, automation1.equals(automation3));
        System.assertEquals(false, automation2.equals(automation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAutomation automation1 = OASAutomation.getExample();
        OASAutomation automation2 = new OASAutomation();

        System.assertEquals(automation1.hashCode(), automation1.hashCode());
        System.assertEquals(automation2.hashCode(), automation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAutomation automation1 = OASAutomation.getExample();
        OASAutomation automation2 = OASAutomation.getExample();
        OASAutomation automation3 = new OASAutomation();
        OASAutomation automation4 = new OASAutomation();

        System.assert(automation1.equals(automation2));
        System.assert(automation3.equals(automation4));
        System.assertEquals(automation1.hashCode(), automation2.hashCode());
        System.assertEquals(automation3.hashCode(), automation4.hashCode());
    }
}
