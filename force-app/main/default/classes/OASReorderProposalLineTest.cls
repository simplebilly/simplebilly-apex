@isTest
private class OASReorderProposalLineTest {
    @isTest
    private static void equalsSameInstance() {
        OASReorderProposalLine reorderProposalLine1 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine2 = reorderProposalLine1;
        OASReorderProposalLine reorderProposalLine3 = new OASReorderProposalLine();
        OASReorderProposalLine reorderProposalLine4 = reorderProposalLine3;

        System.assert(reorderProposalLine1.equals(reorderProposalLine2));
        System.assert(reorderProposalLine2.equals(reorderProposalLine1));
        System.assert(reorderProposalLine1.equals(reorderProposalLine1));
        System.assert(reorderProposalLine3.equals(reorderProposalLine4));
        System.assert(reorderProposalLine4.equals(reorderProposalLine3));
        System.assert(reorderProposalLine3.equals(reorderProposalLine3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReorderProposalLine reorderProposalLine1 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine2 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine3 = new OASReorderProposalLine();
        OASReorderProposalLine reorderProposalLine4 = new OASReorderProposalLine();

        System.assert(reorderProposalLine1.equals(reorderProposalLine2));
        System.assert(reorderProposalLine2.equals(reorderProposalLine1));
        System.assert(reorderProposalLine3.equals(reorderProposalLine4));
        System.assert(reorderProposalLine4.equals(reorderProposalLine3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReorderProposalLine reorderProposalLine1 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine2 = new OASReorderProposalLine();

        System.assertEquals(false, reorderProposalLine1.equals('foo'));
        System.assertEquals(false, reorderProposalLine2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReorderProposalLine reorderProposalLine1 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine2 = new OASReorderProposalLine();
        OASReorderProposalLine reorderProposalLine3;

        System.assertEquals(false, reorderProposalLine1.equals(reorderProposalLine3));
        System.assertEquals(false, reorderProposalLine2.equals(reorderProposalLine3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReorderProposalLine reorderProposalLine1 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine2 = new OASReorderProposalLine();

        System.assertEquals(reorderProposalLine1.hashCode(), reorderProposalLine1.hashCode());
        System.assertEquals(reorderProposalLine2.hashCode(), reorderProposalLine2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReorderProposalLine reorderProposalLine1 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine2 = OASReorderProposalLine.getExample();
        OASReorderProposalLine reorderProposalLine3 = new OASReorderProposalLine();
        OASReorderProposalLine reorderProposalLine4 = new OASReorderProposalLine();

        System.assert(reorderProposalLine1.equals(reorderProposalLine2));
        System.assert(reorderProposalLine3.equals(reorderProposalLine4));
        System.assertEquals(reorderProposalLine1.hashCode(), reorderProposalLine2.hashCode());
        System.assertEquals(reorderProposalLine3.hashCode(), reorderProposalLine4.hashCode());
    }
}
