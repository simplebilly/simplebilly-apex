@isTest
private class OASJobTitleGapTest {
    @isTest
    private static void equalsSameInstance() {
        OASJobTitleGap jobTitleGap1 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap2 = jobTitleGap1;
        OASJobTitleGap jobTitleGap3 = new OASJobTitleGap();
        OASJobTitleGap jobTitleGap4 = jobTitleGap3;

        System.assert(jobTitleGap1.equals(jobTitleGap2));
        System.assert(jobTitleGap2.equals(jobTitleGap1));
        System.assert(jobTitleGap1.equals(jobTitleGap1));
        System.assert(jobTitleGap3.equals(jobTitleGap4));
        System.assert(jobTitleGap4.equals(jobTitleGap3));
        System.assert(jobTitleGap3.equals(jobTitleGap3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJobTitleGap jobTitleGap1 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap2 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap3 = new OASJobTitleGap();
        OASJobTitleGap jobTitleGap4 = new OASJobTitleGap();

        System.assert(jobTitleGap1.equals(jobTitleGap2));
        System.assert(jobTitleGap2.equals(jobTitleGap1));
        System.assert(jobTitleGap3.equals(jobTitleGap4));
        System.assert(jobTitleGap4.equals(jobTitleGap3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJobTitleGap jobTitleGap1 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap2 = new OASJobTitleGap();

        System.assertEquals(false, jobTitleGap1.equals('foo'));
        System.assertEquals(false, jobTitleGap2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJobTitleGap jobTitleGap1 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap2 = new OASJobTitleGap();
        OASJobTitleGap jobTitleGap3;

        System.assertEquals(false, jobTitleGap1.equals(jobTitleGap3));
        System.assertEquals(false, jobTitleGap2.equals(jobTitleGap3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJobTitleGap jobTitleGap1 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap2 = new OASJobTitleGap();

        System.assertEquals(jobTitleGap1.hashCode(), jobTitleGap1.hashCode());
        System.assertEquals(jobTitleGap2.hashCode(), jobTitleGap2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJobTitleGap jobTitleGap1 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap2 = OASJobTitleGap.getExample();
        OASJobTitleGap jobTitleGap3 = new OASJobTitleGap();
        OASJobTitleGap jobTitleGap4 = new OASJobTitleGap();

        System.assert(jobTitleGap1.equals(jobTitleGap2));
        System.assert(jobTitleGap3.equals(jobTitleGap4));
        System.assertEquals(jobTitleGap1.hashCode(), jobTitleGap2.hashCode());
        System.assertEquals(jobTitleGap3.hashCode(), jobTitleGap4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASJobTitleGap jobTitleGap = new OASJobTitleGap();
        Map<String, String> x-property-mappings = jobTitleGap.getx-property-mappings();
        System.assertEquals('employeeCount', x-property-mappings.get('employee_count'));
        System.assertEquals('femaleMeanHourly', x-property-mappings.get('female_mean_hourly'));
        System.assertEquals('jobTitle', x-property-mappings.get('job_title'));
        System.assertEquals('maleMeanHourly', x-property-mappings.get('male_mean_hourly'));
        System.assertEquals('meanGapPct', x-property-mappings.get('mean_gap_pct'));
        System.assertEquals('medianGapPct', x-property-mappings.get('median_gap_pct'));
    }
}
