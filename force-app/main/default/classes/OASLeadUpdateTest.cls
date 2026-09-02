@isTest
private class OASLeadUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASLeadUpdate leadUpdate1 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate2 = leadUpdate1;
        OASLeadUpdate leadUpdate3 = new OASLeadUpdate();
        OASLeadUpdate leadUpdate4 = leadUpdate3;

        System.assert(leadUpdate1.equals(leadUpdate2));
        System.assert(leadUpdate2.equals(leadUpdate1));
        System.assert(leadUpdate1.equals(leadUpdate1));
        System.assert(leadUpdate3.equals(leadUpdate4));
        System.assert(leadUpdate4.equals(leadUpdate3));
        System.assert(leadUpdate3.equals(leadUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLeadUpdate leadUpdate1 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate2 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate3 = new OASLeadUpdate();
        OASLeadUpdate leadUpdate4 = new OASLeadUpdate();

        System.assert(leadUpdate1.equals(leadUpdate2));
        System.assert(leadUpdate2.equals(leadUpdate1));
        System.assert(leadUpdate3.equals(leadUpdate4));
        System.assert(leadUpdate4.equals(leadUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLeadUpdate leadUpdate1 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate2 = new OASLeadUpdate();

        System.assertEquals(false, leadUpdate1.equals('foo'));
        System.assertEquals(false, leadUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLeadUpdate leadUpdate1 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate2 = new OASLeadUpdate();
        OASLeadUpdate leadUpdate3;

        System.assertEquals(false, leadUpdate1.equals(leadUpdate3));
        System.assertEquals(false, leadUpdate2.equals(leadUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLeadUpdate leadUpdate1 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate2 = new OASLeadUpdate();

        System.assertEquals(leadUpdate1.hashCode(), leadUpdate1.hashCode());
        System.assertEquals(leadUpdate2.hashCode(), leadUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLeadUpdate leadUpdate1 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate2 = OASLeadUpdate.getExample();
        OASLeadUpdate leadUpdate3 = new OASLeadUpdate();
        OASLeadUpdate leadUpdate4 = new OASLeadUpdate();

        System.assert(leadUpdate1.equals(leadUpdate2));
        System.assert(leadUpdate3.equals(leadUpdate4));
        System.assertEquals(leadUpdate1.hashCode(), leadUpdate2.hashCode());
        System.assertEquals(leadUpdate3.hashCode(), leadUpdate4.hashCode());
    }
}
