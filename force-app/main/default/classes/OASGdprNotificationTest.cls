@isTest
private class OASGdprNotificationTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprNotification gdprNotification1 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification2 = gdprNotification1;
        OASGdprNotification gdprNotification3 = new OASGdprNotification();
        OASGdprNotification gdprNotification4 = gdprNotification3;

        System.assert(gdprNotification1.equals(gdprNotification2));
        System.assert(gdprNotification2.equals(gdprNotification1));
        System.assert(gdprNotification1.equals(gdprNotification1));
        System.assert(gdprNotification3.equals(gdprNotification4));
        System.assert(gdprNotification4.equals(gdprNotification3));
        System.assert(gdprNotification3.equals(gdprNotification3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprNotification gdprNotification1 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification2 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification3 = new OASGdprNotification();
        OASGdprNotification gdprNotification4 = new OASGdprNotification();

        System.assert(gdprNotification1.equals(gdprNotification2));
        System.assert(gdprNotification2.equals(gdprNotification1));
        System.assert(gdprNotification3.equals(gdprNotification4));
        System.assert(gdprNotification4.equals(gdprNotification3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprNotification gdprNotification1 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification2 = new OASGdprNotification();

        System.assertEquals(false, gdprNotification1.equals('foo'));
        System.assertEquals(false, gdprNotification2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprNotification gdprNotification1 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification2 = new OASGdprNotification();
        OASGdprNotification gdprNotification3;

        System.assertEquals(false, gdprNotification1.equals(gdprNotification3));
        System.assertEquals(false, gdprNotification2.equals(gdprNotification3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprNotification gdprNotification1 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification2 = new OASGdprNotification();

        System.assertEquals(gdprNotification1.hashCode(), gdprNotification1.hashCode());
        System.assertEquals(gdprNotification2.hashCode(), gdprNotification2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprNotification gdprNotification1 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification2 = OASGdprNotification.getExample();
        OASGdprNotification gdprNotification3 = new OASGdprNotification();
        OASGdprNotification gdprNotification4 = new OASGdprNotification();

        System.assert(gdprNotification1.equals(gdprNotification2));
        System.assert(gdprNotification3.equals(gdprNotification4));
        System.assertEquals(gdprNotification1.hashCode(), gdprNotification2.hashCode());
        System.assertEquals(gdprNotification3.hashCode(), gdprNotification4.hashCode());
    }
}
