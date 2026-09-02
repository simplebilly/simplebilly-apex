@isTest
private class OASReorderProposalResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASReorderProposalResponse reorderProposalResponse1 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse2 = reorderProposalResponse1;
        OASReorderProposalResponse reorderProposalResponse3 = new OASReorderProposalResponse();
        OASReorderProposalResponse reorderProposalResponse4 = reorderProposalResponse3;

        System.assert(reorderProposalResponse1.equals(reorderProposalResponse2));
        System.assert(reorderProposalResponse2.equals(reorderProposalResponse1));
        System.assert(reorderProposalResponse1.equals(reorderProposalResponse1));
        System.assert(reorderProposalResponse3.equals(reorderProposalResponse4));
        System.assert(reorderProposalResponse4.equals(reorderProposalResponse3));
        System.assert(reorderProposalResponse3.equals(reorderProposalResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReorderProposalResponse reorderProposalResponse1 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse2 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse3 = new OASReorderProposalResponse();
        OASReorderProposalResponse reorderProposalResponse4 = new OASReorderProposalResponse();

        System.assert(reorderProposalResponse1.equals(reorderProposalResponse2));
        System.assert(reorderProposalResponse2.equals(reorderProposalResponse1));
        System.assert(reorderProposalResponse3.equals(reorderProposalResponse4));
        System.assert(reorderProposalResponse4.equals(reorderProposalResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReorderProposalResponse reorderProposalResponse1 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse2 = new OASReorderProposalResponse();

        System.assertEquals(false, reorderProposalResponse1.equals('foo'));
        System.assertEquals(false, reorderProposalResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReorderProposalResponse reorderProposalResponse1 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse2 = new OASReorderProposalResponse();
        OASReorderProposalResponse reorderProposalResponse3;

        System.assertEquals(false, reorderProposalResponse1.equals(reorderProposalResponse3));
        System.assertEquals(false, reorderProposalResponse2.equals(reorderProposalResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReorderProposalResponse reorderProposalResponse1 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse2 = new OASReorderProposalResponse();

        System.assertEquals(reorderProposalResponse1.hashCode(), reorderProposalResponse1.hashCode());
        System.assertEquals(reorderProposalResponse2.hashCode(), reorderProposalResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReorderProposalResponse reorderProposalResponse1 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse2 = OASReorderProposalResponse.getExample();
        OASReorderProposalResponse reorderProposalResponse3 = new OASReorderProposalResponse();
        OASReorderProposalResponse reorderProposalResponse4 = new OASReorderProposalResponse();

        System.assert(reorderProposalResponse1.equals(reorderProposalResponse2));
        System.assert(reorderProposalResponse3.equals(reorderProposalResponse4));
        System.assertEquals(reorderProposalResponse1.hashCode(), reorderProposalResponse2.hashCode());
        System.assertEquals(reorderProposalResponse3.hashCode(), reorderProposalResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReorderProposalResponse reorderProposalResponse = new OASReorderProposalResponse();
        System.assertEquals(new List<OASReorderProposalLine>(), reorderProposalResponse.lines);
        System.assertEquals(null, reorderProposalResponse.generatedAt);
        System.assertEquals(null, reorderProposalResponse.totalSuggestedQuantity);
    }
}
