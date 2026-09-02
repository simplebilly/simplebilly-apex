@isTest
private class OASPayGapInfoResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayGapInfoResponse payGapInfoResponse1 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse2 = payGapInfoResponse1;
        OASPayGapInfoResponse payGapInfoResponse3 = new OASPayGapInfoResponse();
        OASPayGapInfoResponse payGapInfoResponse4 = payGapInfoResponse3;

        System.assert(payGapInfoResponse1.equals(payGapInfoResponse2));
        System.assert(payGapInfoResponse2.equals(payGapInfoResponse1));
        System.assert(payGapInfoResponse1.equals(payGapInfoResponse1));
        System.assert(payGapInfoResponse3.equals(payGapInfoResponse4));
        System.assert(payGapInfoResponse4.equals(payGapInfoResponse3));
        System.assert(payGapInfoResponse3.equals(payGapInfoResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayGapInfoResponse payGapInfoResponse1 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse2 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse3 = new OASPayGapInfoResponse();
        OASPayGapInfoResponse payGapInfoResponse4 = new OASPayGapInfoResponse();

        System.assert(payGapInfoResponse1.equals(payGapInfoResponse2));
        System.assert(payGapInfoResponse2.equals(payGapInfoResponse1));
        System.assert(payGapInfoResponse3.equals(payGapInfoResponse4));
        System.assert(payGapInfoResponse4.equals(payGapInfoResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayGapInfoResponse payGapInfoResponse1 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse2 = new OASPayGapInfoResponse();

        System.assertEquals(false, payGapInfoResponse1.equals('foo'));
        System.assertEquals(false, payGapInfoResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayGapInfoResponse payGapInfoResponse1 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse2 = new OASPayGapInfoResponse();
        OASPayGapInfoResponse payGapInfoResponse3;

        System.assertEquals(false, payGapInfoResponse1.equals(payGapInfoResponse3));
        System.assertEquals(false, payGapInfoResponse2.equals(payGapInfoResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayGapInfoResponse payGapInfoResponse1 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse2 = new OASPayGapInfoResponse();

        System.assertEquals(payGapInfoResponse1.hashCode(), payGapInfoResponse1.hashCode());
        System.assertEquals(payGapInfoResponse2.hashCode(), payGapInfoResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayGapInfoResponse payGapInfoResponse1 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse2 = OASPayGapInfoResponse.getExample();
        OASPayGapInfoResponse payGapInfoResponse3 = new OASPayGapInfoResponse();
        OASPayGapInfoResponse payGapInfoResponse4 = new OASPayGapInfoResponse();

        System.assert(payGapInfoResponse1.equals(payGapInfoResponse2));
        System.assert(payGapInfoResponse3.equals(payGapInfoResponse4));
        System.assertEquals(payGapInfoResponse1.hashCode(), payGapInfoResponse2.hashCode());
        System.assertEquals(payGapInfoResponse3.hashCode(), payGapInfoResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayGapInfoResponse payGapInfoResponse = new OASPayGapInfoResponse();
        Map<String, String> x-property-mappings = payGapInfoResponse.getx-property-mappings();
        System.assertEquals('employeeId', x-property-mappings.get('employee_id'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('groupMedianHourly', x-property-mappings.get('group_median_hourly'));
        System.assertEquals('groupMedianMonthly', x-property-mappings.get('group_median_monthly'));
        System.assertEquals('groupSize', x-property-mappings.get('group_size'));
        System.assertEquals('jobTitle', x-property-mappings.get('job_title'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
        System.assertEquals('overallMedianHourly', x-property-mappings.get('overall_median_hourly'));
        System.assertEquals('ownHourlyGross', x-property-mappings.get('own_hourly_gross'));
        System.assertEquals('ownMonthlyGross', x-property-mappings.get('own_monthly_gross'));
    }
}
