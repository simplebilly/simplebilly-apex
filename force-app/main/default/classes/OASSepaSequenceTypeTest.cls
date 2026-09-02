@isTest
private class OASSepaSequenceTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSepaSequenceType> expected = new Set<OASSepaSequenceType>{
            OASSepaSequenceType.FRST,
            OASSepaSequenceType.RCUR,
            OASSepaSequenceType.FNAL,
            OASSepaSequenceType.OOFF
        };
        Set<OASSepaSequenceType> actual  = new Set<OASSepaSequenceType>(OASSepaSequenceType.values());
        System.assertEquals(expected, actual);
    }
}
