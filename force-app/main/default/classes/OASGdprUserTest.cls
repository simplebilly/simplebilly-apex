@isTest
private class OASGdprUserTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprUser gdprUser1 = OASGdprUser.getExample();
        OASGdprUser gdprUser2 = gdprUser1;
        OASGdprUser gdprUser3 = new OASGdprUser();
        OASGdprUser gdprUser4 = gdprUser3;

        System.assert(gdprUser1.equals(gdprUser2));
        System.assert(gdprUser2.equals(gdprUser1));
        System.assert(gdprUser1.equals(gdprUser1));
        System.assert(gdprUser3.equals(gdprUser4));
        System.assert(gdprUser4.equals(gdprUser3));
        System.assert(gdprUser3.equals(gdprUser3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprUser gdprUser1 = OASGdprUser.getExample();
        OASGdprUser gdprUser2 = OASGdprUser.getExample();
        OASGdprUser gdprUser3 = new OASGdprUser();
        OASGdprUser gdprUser4 = new OASGdprUser();

        System.assert(gdprUser1.equals(gdprUser2));
        System.assert(gdprUser2.equals(gdprUser1));
        System.assert(gdprUser3.equals(gdprUser4));
        System.assert(gdprUser4.equals(gdprUser3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprUser gdprUser1 = OASGdprUser.getExample();
        OASGdprUser gdprUser2 = new OASGdprUser();

        System.assertEquals(false, gdprUser1.equals('foo'));
        System.assertEquals(false, gdprUser2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprUser gdprUser1 = OASGdprUser.getExample();
        OASGdprUser gdprUser2 = new OASGdprUser();
        OASGdprUser gdprUser3;

        System.assertEquals(false, gdprUser1.equals(gdprUser3));
        System.assertEquals(false, gdprUser2.equals(gdprUser3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprUser gdprUser1 = OASGdprUser.getExample();
        OASGdprUser gdprUser2 = new OASGdprUser();

        System.assertEquals(gdprUser1.hashCode(), gdprUser1.hashCode());
        System.assertEquals(gdprUser2.hashCode(), gdprUser2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprUser gdprUser1 = OASGdprUser.getExample();
        OASGdprUser gdprUser2 = OASGdprUser.getExample();
        OASGdprUser gdprUser3 = new OASGdprUser();
        OASGdprUser gdprUser4 = new OASGdprUser();

        System.assert(gdprUser1.equals(gdprUser2));
        System.assert(gdprUser3.equals(gdprUser4));
        System.assertEquals(gdprUser1.hashCode(), gdprUser2.hashCode());
        System.assertEquals(gdprUser3.hashCode(), gdprUser4.hashCode());
    }
}
