@isTest
private class OASPlausibilityCheckTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlausibilityCheck plausibilityCheck1 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck2 = plausibilityCheck1;
        OASPlausibilityCheck plausibilityCheck3 = new OASPlausibilityCheck();
        OASPlausibilityCheck plausibilityCheck4 = plausibilityCheck3;

        System.assert(plausibilityCheck1.equals(plausibilityCheck2));
        System.assert(plausibilityCheck2.equals(plausibilityCheck1));
        System.assert(plausibilityCheck1.equals(plausibilityCheck1));
        System.assert(plausibilityCheck3.equals(plausibilityCheck4));
        System.assert(plausibilityCheck4.equals(plausibilityCheck3));
        System.assert(plausibilityCheck3.equals(plausibilityCheck3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlausibilityCheck plausibilityCheck1 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck2 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck3 = new OASPlausibilityCheck();
        OASPlausibilityCheck plausibilityCheck4 = new OASPlausibilityCheck();

        System.assert(plausibilityCheck1.equals(plausibilityCheck2));
        System.assert(plausibilityCheck2.equals(plausibilityCheck1));
        System.assert(plausibilityCheck3.equals(plausibilityCheck4));
        System.assert(plausibilityCheck4.equals(plausibilityCheck3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlausibilityCheck plausibilityCheck1 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck2 = new OASPlausibilityCheck();

        System.assertEquals(false, plausibilityCheck1.equals('foo'));
        System.assertEquals(false, plausibilityCheck2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlausibilityCheck plausibilityCheck1 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck2 = new OASPlausibilityCheck();
        OASPlausibilityCheck plausibilityCheck3;

        System.assertEquals(false, plausibilityCheck1.equals(plausibilityCheck3));
        System.assertEquals(false, plausibilityCheck2.equals(plausibilityCheck3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlausibilityCheck plausibilityCheck1 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck2 = new OASPlausibilityCheck();

        System.assertEquals(plausibilityCheck1.hashCode(), plausibilityCheck1.hashCode());
        System.assertEquals(plausibilityCheck2.hashCode(), plausibilityCheck2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlausibilityCheck plausibilityCheck1 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck2 = OASPlausibilityCheck.getExample();
        OASPlausibilityCheck plausibilityCheck3 = new OASPlausibilityCheck();
        OASPlausibilityCheck plausibilityCheck4 = new OASPlausibilityCheck();

        System.assert(plausibilityCheck1.equals(plausibilityCheck2));
        System.assert(plausibilityCheck3.equals(plausibilityCheck4));
        System.assertEquals(plausibilityCheck1.hashCode(), plausibilityCheck2.hashCode());
        System.assertEquals(plausibilityCheck3.hashCode(), plausibilityCheck4.hashCode());
    }
}
