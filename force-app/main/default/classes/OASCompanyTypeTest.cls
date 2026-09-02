@isTest
private class OASCompanyTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASCompanyType> expected = new Set<OASCompanyType>{
            OASCompanyType.GMBH,
            OASCompanyType.UG,
            OASCompanyType.EINZELHAENDLER,
            OASCompanyType.FREIBERUFLER,
            OASCompanyType.AG,
            OASCompanyType.GBR
        };
        Set<OASCompanyType> actual  = new Set<OASCompanyType>(OASCompanyType.values());
        System.assertEquals(expected, actual);
    }
}
