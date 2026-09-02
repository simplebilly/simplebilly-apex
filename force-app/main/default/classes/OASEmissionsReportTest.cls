@isTest
private class OASEmissionsReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmissionsReport emissionsReport1 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport2 = emissionsReport1;
        OASEmissionsReport emissionsReport3 = new OASEmissionsReport();
        OASEmissionsReport emissionsReport4 = emissionsReport3;

        System.assert(emissionsReport1.equals(emissionsReport2));
        System.assert(emissionsReport2.equals(emissionsReport1));
        System.assert(emissionsReport1.equals(emissionsReport1));
        System.assert(emissionsReport3.equals(emissionsReport4));
        System.assert(emissionsReport4.equals(emissionsReport3));
        System.assert(emissionsReport3.equals(emissionsReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmissionsReport emissionsReport1 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport2 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport3 = new OASEmissionsReport();
        OASEmissionsReport emissionsReport4 = new OASEmissionsReport();

        System.assert(emissionsReport1.equals(emissionsReport2));
        System.assert(emissionsReport2.equals(emissionsReport1));
        System.assert(emissionsReport3.equals(emissionsReport4));
        System.assert(emissionsReport4.equals(emissionsReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmissionsReport emissionsReport1 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport2 = new OASEmissionsReport();

        System.assertEquals(false, emissionsReport1.equals('foo'));
        System.assertEquals(false, emissionsReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmissionsReport emissionsReport1 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport2 = new OASEmissionsReport();
        OASEmissionsReport emissionsReport3;

        System.assertEquals(false, emissionsReport1.equals(emissionsReport3));
        System.assertEquals(false, emissionsReport2.equals(emissionsReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmissionsReport emissionsReport1 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport2 = new OASEmissionsReport();

        System.assertEquals(emissionsReport1.hashCode(), emissionsReport1.hashCode());
        System.assertEquals(emissionsReport2.hashCode(), emissionsReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmissionsReport emissionsReport1 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport2 = OASEmissionsReport.getExample();
        OASEmissionsReport emissionsReport3 = new OASEmissionsReport();
        OASEmissionsReport emissionsReport4 = new OASEmissionsReport();

        System.assert(emissionsReport1.equals(emissionsReport2));
        System.assert(emissionsReport3.equals(emissionsReport4));
        System.assertEquals(emissionsReport1.hashCode(), emissionsReport2.hashCode());
        System.assertEquals(emissionsReport3.hashCode(), emissionsReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmissionsReport emissionsReport = new OASEmissionsReport();
        Map<String, String> x-property-mappings = emissionsReport.getx-property-mappings();
        System.assertEquals('byCategory', x-property-mappings.get('by_category'));
        System.assertEquals('byScope', x-property-mappings.get('by_scope'));
        System.assertEquals('byYear', x-property-mappings.get('by_year'));
        System.assertEquals('dataQuality', x-property-mappings.get('data_quality'));
        System.assertEquals('intensityPerEmployee', x-property-mappings.get('intensity_per_employee'));
        System.assertEquals('intensityPerRevenueMio', x-property-mappings.get('intensity_per_revenue_mio'));
        System.assertEquals('netRevenue', x-property-mappings.get('net_revenue'));
        System.assertEquals('spendBasedEstimateTco2e', x-property-mappings.get('spend_based_estimate_tco2e'));
        System.assertEquals('totalTco2e', x-property-mappings.get('total_tco2e'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEmissionsReport emissionsReport = new OASEmissionsReport();
        System.assertEquals(new List<OASCategoryTotal>(), emissionsReport.byCategory);
        System.assertEquals(new List<OASScopeTotal>(), emissionsReport.byScope);
        System.assertEquals(new List<OASYearTotal>(), emissionsReport.byYear);
        System.assertEquals(new List<OASTargetProgress>(), emissionsReport.targets);
        System.assertEquals(null, emissionsReport.dataQuality);
        System.assertEquals(null, emissionsReport.intensityPerEmployee);
        System.assertEquals(null, emissionsReport.intensityPerRevenueMio);
        System.assertEquals(null, emissionsReport.netRevenue);
        System.assertEquals(null, emissionsReport.spendBasedEstimateTco2e);
        System.assertEquals(null, emissionsReport.totalTco2e);
    }
}
