@isTest
private class OASUpdateAutomationTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateAutomation updateAutomation1 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation2 = updateAutomation1;
        OASUpdateAutomation updateAutomation3 = new OASUpdateAutomation();
        OASUpdateAutomation updateAutomation4 = updateAutomation3;

        System.assert(updateAutomation1.equals(updateAutomation2));
        System.assert(updateAutomation2.equals(updateAutomation1));
        System.assert(updateAutomation1.equals(updateAutomation1));
        System.assert(updateAutomation3.equals(updateAutomation4));
        System.assert(updateAutomation4.equals(updateAutomation3));
        System.assert(updateAutomation3.equals(updateAutomation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateAutomation updateAutomation1 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation2 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation3 = new OASUpdateAutomation();
        OASUpdateAutomation updateAutomation4 = new OASUpdateAutomation();

        System.assert(updateAutomation1.equals(updateAutomation2));
        System.assert(updateAutomation2.equals(updateAutomation1));
        System.assert(updateAutomation3.equals(updateAutomation4));
        System.assert(updateAutomation4.equals(updateAutomation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateAutomation updateAutomation1 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation2 = new OASUpdateAutomation();

        System.assertEquals(false, updateAutomation1.equals('foo'));
        System.assertEquals(false, updateAutomation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateAutomation updateAutomation1 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation2 = new OASUpdateAutomation();
        OASUpdateAutomation updateAutomation3;

        System.assertEquals(false, updateAutomation1.equals(updateAutomation3));
        System.assertEquals(false, updateAutomation2.equals(updateAutomation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateAutomation updateAutomation1 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation2 = new OASUpdateAutomation();

        System.assertEquals(updateAutomation1.hashCode(), updateAutomation1.hashCode());
        System.assertEquals(updateAutomation2.hashCode(), updateAutomation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateAutomation updateAutomation1 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation2 = OASUpdateAutomation.getExample();
        OASUpdateAutomation updateAutomation3 = new OASUpdateAutomation();
        OASUpdateAutomation updateAutomation4 = new OASUpdateAutomation();

        System.assert(updateAutomation1.equals(updateAutomation2));
        System.assert(updateAutomation3.equals(updateAutomation4));
        System.assertEquals(updateAutomation1.hashCode(), updateAutomation2.hashCode());
        System.assertEquals(updateAutomation3.hashCode(), updateAutomation4.hashCode());
    }
}
