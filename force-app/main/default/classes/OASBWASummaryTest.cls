@isTest
private class OASBWASummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASBWASummary bwASummary1 = OASBWASummary.getExample();
        OASBWASummary bwASummary2 = bwASummary1;
        OASBWASummary bwASummary3 = new OASBWASummary();
        OASBWASummary bwASummary4 = bwASummary3;

        System.assert(bwASummary1.equals(bwASummary2));
        System.assert(bwASummary2.equals(bwASummary1));
        System.assert(bwASummary1.equals(bwASummary1));
        System.assert(bwASummary3.equals(bwASummary4));
        System.assert(bwASummary4.equals(bwASummary3));
        System.assert(bwASummary3.equals(bwASummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBWASummary bwASummary1 = OASBWASummary.getExample();
        OASBWASummary bwASummary2 = OASBWASummary.getExample();
        OASBWASummary bwASummary3 = new OASBWASummary();
        OASBWASummary bwASummary4 = new OASBWASummary();

        System.assert(bwASummary1.equals(bwASummary2));
        System.assert(bwASummary2.equals(bwASummary1));
        System.assert(bwASummary3.equals(bwASummary4));
        System.assert(bwASummary4.equals(bwASummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBWASummary bwASummary1 = OASBWASummary.getExample();
        OASBWASummary bwASummary2 = new OASBWASummary();

        System.assertEquals(false, bwASummary1.equals('foo'));
        System.assertEquals(false, bwASummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBWASummary bwASummary1 = OASBWASummary.getExample();
        OASBWASummary bwASummary2 = new OASBWASummary();
        OASBWASummary bwASummary3;

        System.assertEquals(false, bwASummary1.equals(bwASummary3));
        System.assertEquals(false, bwASummary2.equals(bwASummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBWASummary bwASummary1 = OASBWASummary.getExample();
        OASBWASummary bwASummary2 = new OASBWASummary();

        System.assertEquals(bwASummary1.hashCode(), bwASummary1.hashCode());
        System.assertEquals(bwASummary2.hashCode(), bwASummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBWASummary bwASummary1 = OASBWASummary.getExample();
        OASBWASummary bwASummary2 = OASBWASummary.getExample();
        OASBWASummary bwASummary3 = new OASBWASummary();
        OASBWASummary bwASummary4 = new OASBWASummary();

        System.assert(bwASummary1.equals(bwASummary2));
        System.assert(bwASummary3.equals(bwASummary4));
        System.assertEquals(bwASummary1.hashCode(), bwASummary2.hashCode());
        System.assertEquals(bwASummary3.hashCode(), bwASummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBWASummary bwASummary = new OASBWASummary();
        Map<String, String> x-property-mappings = bwASummary.getx-property-mappings();
        System.assertEquals('grossProfit', x-property-mappings.get('gross_profit'));
        System.assertEquals('netProfit', x-property-mappings.get('net_profit'));
        System.assertEquals('openInvoicesCount', x-property-mappings.get('open_invoices_count'));
        System.assertEquals('openInvoicesTotal', x-property-mappings.get('open_invoices_total'));
        System.assertEquals('overdueInvoicesCount', x-property-mappings.get('overdue_invoices_count'));
        System.assertEquals('overdueInvoicesTotal', x-property-mappings.get('overdue_invoices_total'));
        System.assertEquals('profitMargin', x-property-mappings.get('profit_margin'));
    }
}
