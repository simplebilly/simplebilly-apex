@isTest
private class OASInstituteTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASInstituteType> expected = new Set<OASInstituteType>{
            OASInstituteType.KEIN,
            OASInstituteType.KREDITINSTITUT,
            OASInstituteType.FINANZDIENSTLEISTUNGSINSTITUT,
            OASInstituteType.FINANZUNTERNEHMEN,
            OASInstituteType.VERSICHERUNG
        };
        Set<OASInstituteType> actual  = new Set<OASInstituteType>(OASInstituteType.values());
        System.assertEquals(expected, actual);
    }
}
