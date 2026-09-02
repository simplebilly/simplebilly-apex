@isTest
private class OASSeverityTest {
    @isTest
    private static void allowableValues() {
        Set<OASSeverity> expected = new Set<OASSeverity>{
            OASSeverity.INFO,
            OASSeverity.WARNING,
            OASSeverity.CRITICAL
        };
        Set<OASSeverity> actual  = new Set<OASSeverity>(OASSeverity.values());
        System.assertEquals(expected, actual);
    }
}
