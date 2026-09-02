@isTest
private class OASPartialFeatureSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPartialFeatureSettings partialFeatureSettings1 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings2 = partialFeatureSettings1;
        OASPartialFeatureSettings partialFeatureSettings3 = new OASPartialFeatureSettings();
        OASPartialFeatureSettings partialFeatureSettings4 = partialFeatureSettings3;

        System.assert(partialFeatureSettings1.equals(partialFeatureSettings2));
        System.assert(partialFeatureSettings2.equals(partialFeatureSettings1));
        System.assert(partialFeatureSettings1.equals(partialFeatureSettings1));
        System.assert(partialFeatureSettings3.equals(partialFeatureSettings4));
        System.assert(partialFeatureSettings4.equals(partialFeatureSettings3));
        System.assert(partialFeatureSettings3.equals(partialFeatureSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPartialFeatureSettings partialFeatureSettings1 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings2 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings3 = new OASPartialFeatureSettings();
        OASPartialFeatureSettings partialFeatureSettings4 = new OASPartialFeatureSettings();

        System.assert(partialFeatureSettings1.equals(partialFeatureSettings2));
        System.assert(partialFeatureSettings2.equals(partialFeatureSettings1));
        System.assert(partialFeatureSettings3.equals(partialFeatureSettings4));
        System.assert(partialFeatureSettings4.equals(partialFeatureSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPartialFeatureSettings partialFeatureSettings1 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings2 = new OASPartialFeatureSettings();

        System.assertEquals(false, partialFeatureSettings1.equals('foo'));
        System.assertEquals(false, partialFeatureSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPartialFeatureSettings partialFeatureSettings1 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings2 = new OASPartialFeatureSettings();
        OASPartialFeatureSettings partialFeatureSettings3;

        System.assertEquals(false, partialFeatureSettings1.equals(partialFeatureSettings3));
        System.assertEquals(false, partialFeatureSettings2.equals(partialFeatureSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPartialFeatureSettings partialFeatureSettings1 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings2 = new OASPartialFeatureSettings();

        System.assertEquals(partialFeatureSettings1.hashCode(), partialFeatureSettings1.hashCode());
        System.assertEquals(partialFeatureSettings2.hashCode(), partialFeatureSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPartialFeatureSettings partialFeatureSettings1 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings2 = OASPartialFeatureSettings.getExample();
        OASPartialFeatureSettings partialFeatureSettings3 = new OASPartialFeatureSettings();
        OASPartialFeatureSettings partialFeatureSettings4 = new OASPartialFeatureSettings();

        System.assert(partialFeatureSettings1.equals(partialFeatureSettings2));
        System.assert(partialFeatureSettings3.equals(partialFeatureSettings4));
        System.assertEquals(partialFeatureSettings1.hashCode(), partialFeatureSettings2.hashCode());
        System.assertEquals(partialFeatureSettings3.hashCode(), partialFeatureSettings4.hashCode());
    }
}
