@isTest
private class OASEmissionMethodTest {
    @isTest
    private static void allowableValues() {
        Set<OASEmissionMethod> expected = new Set<OASEmissionMethod>{
            OASEmissionMethod.ACTIVITY,
            OASEmissionMethod.SPEND,
            OASEmissionMethod.SUPPLIER
        };
        Set<OASEmissionMethod> actual  = new Set<OASEmissionMethod>(OASEmissionMethod.values());
        System.assertEquals(expected, actual);
    }
}
