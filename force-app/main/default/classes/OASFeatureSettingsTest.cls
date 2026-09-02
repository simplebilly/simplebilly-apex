@isTest
private class OASFeatureSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASFeatureSettings featureSettings1 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings2 = featureSettings1;
        OASFeatureSettings featureSettings3 = new OASFeatureSettings();
        OASFeatureSettings featureSettings4 = featureSettings3;

        System.assert(featureSettings1.equals(featureSettings2));
        System.assert(featureSettings2.equals(featureSettings1));
        System.assert(featureSettings1.equals(featureSettings1));
        System.assert(featureSettings3.equals(featureSettings4));
        System.assert(featureSettings4.equals(featureSettings3));
        System.assert(featureSettings3.equals(featureSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFeatureSettings featureSettings1 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings2 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings3 = new OASFeatureSettings();
        OASFeatureSettings featureSettings4 = new OASFeatureSettings();

        System.assert(featureSettings1.equals(featureSettings2));
        System.assert(featureSettings2.equals(featureSettings1));
        System.assert(featureSettings3.equals(featureSettings4));
        System.assert(featureSettings4.equals(featureSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFeatureSettings featureSettings1 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings2 = new OASFeatureSettings();

        System.assertEquals(false, featureSettings1.equals('foo'));
        System.assertEquals(false, featureSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFeatureSettings featureSettings1 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings2 = new OASFeatureSettings();
        OASFeatureSettings featureSettings3;

        System.assertEquals(false, featureSettings1.equals(featureSettings3));
        System.assertEquals(false, featureSettings2.equals(featureSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFeatureSettings featureSettings1 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings2 = new OASFeatureSettings();

        System.assertEquals(featureSettings1.hashCode(), featureSettings1.hashCode());
        System.assertEquals(featureSettings2.hashCode(), featureSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFeatureSettings featureSettings1 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings2 = OASFeatureSettings.getExample();
        OASFeatureSettings featureSettings3 = new OASFeatureSettings();
        OASFeatureSettings featureSettings4 = new OASFeatureSettings();

        System.assert(featureSettings1.equals(featureSettings2));
        System.assert(featureSettings3.equals(featureSettings4));
        System.assertEquals(featureSettings1.hashCode(), featureSettings2.hashCode());
        System.assertEquals(featureSettings3.hashCode(), featureSettings4.hashCode());
    }
}
