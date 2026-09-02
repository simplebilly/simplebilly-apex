@isTest
private class OASContactTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASContactType> expected = new Set<OASContactType>{
            OASContactType.CUSTOMER,
            OASContactType.SUPPLIER
        };
        Set<OASContactType> actual  = new Set<OASContactType>(OASContactType.values());
        System.assertEquals(expected, actual);
    }
}
