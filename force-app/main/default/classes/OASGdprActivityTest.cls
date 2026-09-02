@isTest
private class OASGdprActivityTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprActivity gdprActivity1 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity2 = gdprActivity1;
        OASGdprActivity gdprActivity3 = new OASGdprActivity();
        OASGdprActivity gdprActivity4 = gdprActivity3;

        System.assert(gdprActivity1.equals(gdprActivity2));
        System.assert(gdprActivity2.equals(gdprActivity1));
        System.assert(gdprActivity1.equals(gdprActivity1));
        System.assert(gdprActivity3.equals(gdprActivity4));
        System.assert(gdprActivity4.equals(gdprActivity3));
        System.assert(gdprActivity3.equals(gdprActivity3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprActivity gdprActivity1 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity2 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity3 = new OASGdprActivity();
        OASGdprActivity gdprActivity4 = new OASGdprActivity();

        System.assert(gdprActivity1.equals(gdprActivity2));
        System.assert(gdprActivity2.equals(gdprActivity1));
        System.assert(gdprActivity3.equals(gdprActivity4));
        System.assert(gdprActivity4.equals(gdprActivity3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprActivity gdprActivity1 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity2 = new OASGdprActivity();

        System.assertEquals(false, gdprActivity1.equals('foo'));
        System.assertEquals(false, gdprActivity2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprActivity gdprActivity1 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity2 = new OASGdprActivity();
        OASGdprActivity gdprActivity3;

        System.assertEquals(false, gdprActivity1.equals(gdprActivity3));
        System.assertEquals(false, gdprActivity2.equals(gdprActivity3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprActivity gdprActivity1 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity2 = new OASGdprActivity();

        System.assertEquals(gdprActivity1.hashCode(), gdprActivity1.hashCode());
        System.assertEquals(gdprActivity2.hashCode(), gdprActivity2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprActivity gdprActivity1 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity2 = OASGdprActivity.getExample();
        OASGdprActivity gdprActivity3 = new OASGdprActivity();
        OASGdprActivity gdprActivity4 = new OASGdprActivity();

        System.assert(gdprActivity1.equals(gdprActivity2));
        System.assert(gdprActivity3.equals(gdprActivity4));
        System.assertEquals(gdprActivity1.hashCode(), gdprActivity2.hashCode());
        System.assertEquals(gdprActivity3.hashCode(), gdprActivity4.hashCode());
    }
}
