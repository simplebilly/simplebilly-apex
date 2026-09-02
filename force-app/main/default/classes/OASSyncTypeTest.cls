@isTest
private class OASSyncTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSyncType> expected = new Set<OASSyncType>{
            OASSyncType.ORDERS,
            OASSyncType.PRODUCTS,
            OASSyncType.INVENTORY,
            OASSyncType.INVOICES,
            OASSyncType.SHIPMENTS,
            OASSyncType.CONTACTS,
            OASSyncType.PRICES,
            OASSyncType.CONFIG,
            OASSyncType.BRANDING,
            OASSyncType.LEGAL
        };
        Set<OASSyncType> actual  = new Set<OASSyncType>(OASSyncType.values());
        System.assertEquals(expected, actual);
    }
}
