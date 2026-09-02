@isTest
private class OASTargetProgressTest {
    @isTest
    private static void equalsSameInstance() {
        OASTargetProgress targetProgress1 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress2 = targetProgress1;
        OASTargetProgress targetProgress3 = new OASTargetProgress();
        OASTargetProgress targetProgress4 = targetProgress3;

        System.assert(targetProgress1.equals(targetProgress2));
        System.assert(targetProgress2.equals(targetProgress1));
        System.assert(targetProgress1.equals(targetProgress1));
        System.assert(targetProgress3.equals(targetProgress4));
        System.assert(targetProgress4.equals(targetProgress3));
        System.assert(targetProgress3.equals(targetProgress3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTargetProgress targetProgress1 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress2 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress3 = new OASTargetProgress();
        OASTargetProgress targetProgress4 = new OASTargetProgress();

        System.assert(targetProgress1.equals(targetProgress2));
        System.assert(targetProgress2.equals(targetProgress1));
        System.assert(targetProgress3.equals(targetProgress4));
        System.assert(targetProgress4.equals(targetProgress3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTargetProgress targetProgress1 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress2 = new OASTargetProgress();

        System.assertEquals(false, targetProgress1.equals('foo'));
        System.assertEquals(false, targetProgress2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTargetProgress targetProgress1 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress2 = new OASTargetProgress();
        OASTargetProgress targetProgress3;

        System.assertEquals(false, targetProgress1.equals(targetProgress3));
        System.assertEquals(false, targetProgress2.equals(targetProgress3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTargetProgress targetProgress1 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress2 = new OASTargetProgress();

        System.assertEquals(targetProgress1.hashCode(), targetProgress1.hashCode());
        System.assertEquals(targetProgress2.hashCode(), targetProgress2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTargetProgress targetProgress1 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress2 = OASTargetProgress.getExample();
        OASTargetProgress targetProgress3 = new OASTargetProgress();
        OASTargetProgress targetProgress4 = new OASTargetProgress();

        System.assert(targetProgress1.equals(targetProgress2));
        System.assert(targetProgress3.equals(targetProgress4));
        System.assertEquals(targetProgress1.hashCode(), targetProgress2.hashCode());
        System.assertEquals(targetProgress3.hashCode(), targetProgress4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTargetProgress targetProgress = new OASTargetProgress();
        Map<String, String> x-property-mappings = targetProgress.getx-property-mappings();
        System.assertEquals('baseValue', x-property-mappings.get('base_value'));
        System.assertEquals('baseYear', x-property-mappings.get('base_year'));
        System.assertEquals('progressPct', x-property-mappings.get('progress_pct'));
        System.assertEquals('targetValue', x-property-mappings.get('target_value'));
        System.assertEquals('targetYear', x-property-mappings.get('target_year'));
    }
}
