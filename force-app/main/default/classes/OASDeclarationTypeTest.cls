@isTest
private class OASDeclarationTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASDeclarationType> expected = new Set<OASDeclarationType>{
            OASDeclarationType.DCGK,
            OASDeclarationType.UNTERNEHMENSFUEHRUNG
        };
        Set<OASDeclarationType> actual  = new Set<OASDeclarationType>(OASDeclarationType.values());
        System.assertEquals(expected, actual);
    }
}
