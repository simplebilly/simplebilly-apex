@isTest
private class OASLeadTest {
    @isTest
    private static void equalsSameInstance() {
        OASLead lead1 = OASLead.getExample();
        OASLead lead2 = lead1;
        OASLead lead3 = new OASLead();
        OASLead lead4 = lead3;

        System.assert(lead1.equals(lead2));
        System.assert(lead2.equals(lead1));
        System.assert(lead1.equals(lead1));
        System.assert(lead3.equals(lead4));
        System.assert(lead4.equals(lead3));
        System.assert(lead3.equals(lead3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLead lead1 = OASLead.getExample();
        OASLead lead2 = OASLead.getExample();
        OASLead lead3 = new OASLead();
        OASLead lead4 = new OASLead();

        System.assert(lead1.equals(lead2));
        System.assert(lead2.equals(lead1));
        System.assert(lead3.equals(lead4));
        System.assert(lead4.equals(lead3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLead lead1 = OASLead.getExample();
        OASLead lead2 = new OASLead();

        System.assertEquals(false, lead1.equals('foo'));
        System.assertEquals(false, lead2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLead lead1 = OASLead.getExample();
        OASLead lead2 = new OASLead();
        OASLead lead3;

        System.assertEquals(false, lead1.equals(lead3));
        System.assertEquals(false, lead2.equals(lead3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLead lead1 = OASLead.getExample();
        OASLead lead2 = new OASLead();

        System.assertEquals(lead1.hashCode(), lead1.hashCode());
        System.assertEquals(lead2.hashCode(), lead2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLead lead1 = OASLead.getExample();
        OASLead lead2 = OASLead.getExample();
        OASLead lead3 = new OASLead();
        OASLead lead4 = new OASLead();

        System.assert(lead1.equals(lead2));
        System.assert(lead3.equals(lead4));
        System.assertEquals(lead1.hashCode(), lead2.hashCode());
        System.assertEquals(lead3.hashCode(), lead4.hashCode());
    }
}
