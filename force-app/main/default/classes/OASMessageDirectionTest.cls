@isTest
private class OASMessageDirectionTest {
    @isTest
    private static void allowableValues() {
        Set<OASMessageDirection> expected = new Set<OASMessageDirection>{
            OASMessageDirection.INBOUND,
            OASMessageDirection.OUTBOUND,
            OASMessageDirection.INTERNAL
        };
        Set<OASMessageDirection> actual  = new Set<OASMessageDirection>(OASMessageDirection.values());
        System.assertEquals(expected, actual);
    }
}
