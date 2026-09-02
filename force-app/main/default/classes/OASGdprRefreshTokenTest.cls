@isTest
private class OASGdprRefreshTokenTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprRefreshToken gdprRefreshToken1 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken2 = gdprRefreshToken1;
        OASGdprRefreshToken gdprRefreshToken3 = new OASGdprRefreshToken();
        OASGdprRefreshToken gdprRefreshToken4 = gdprRefreshToken3;

        System.assert(gdprRefreshToken1.equals(gdprRefreshToken2));
        System.assert(gdprRefreshToken2.equals(gdprRefreshToken1));
        System.assert(gdprRefreshToken1.equals(gdprRefreshToken1));
        System.assert(gdprRefreshToken3.equals(gdprRefreshToken4));
        System.assert(gdprRefreshToken4.equals(gdprRefreshToken3));
        System.assert(gdprRefreshToken3.equals(gdprRefreshToken3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprRefreshToken gdprRefreshToken1 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken2 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken3 = new OASGdprRefreshToken();
        OASGdprRefreshToken gdprRefreshToken4 = new OASGdprRefreshToken();

        System.assert(gdprRefreshToken1.equals(gdprRefreshToken2));
        System.assert(gdprRefreshToken2.equals(gdprRefreshToken1));
        System.assert(gdprRefreshToken3.equals(gdprRefreshToken4));
        System.assert(gdprRefreshToken4.equals(gdprRefreshToken3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprRefreshToken gdprRefreshToken1 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken2 = new OASGdprRefreshToken();

        System.assertEquals(false, gdprRefreshToken1.equals('foo'));
        System.assertEquals(false, gdprRefreshToken2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprRefreshToken gdprRefreshToken1 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken2 = new OASGdprRefreshToken();
        OASGdprRefreshToken gdprRefreshToken3;

        System.assertEquals(false, gdprRefreshToken1.equals(gdprRefreshToken3));
        System.assertEquals(false, gdprRefreshToken2.equals(gdprRefreshToken3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprRefreshToken gdprRefreshToken1 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken2 = new OASGdprRefreshToken();

        System.assertEquals(gdprRefreshToken1.hashCode(), gdprRefreshToken1.hashCode());
        System.assertEquals(gdprRefreshToken2.hashCode(), gdprRefreshToken2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprRefreshToken gdprRefreshToken1 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken2 = OASGdprRefreshToken.getExample();
        OASGdprRefreshToken gdprRefreshToken3 = new OASGdprRefreshToken();
        OASGdprRefreshToken gdprRefreshToken4 = new OASGdprRefreshToken();

        System.assert(gdprRefreshToken1.equals(gdprRefreshToken2));
        System.assert(gdprRefreshToken3.equals(gdprRefreshToken4));
        System.assertEquals(gdprRefreshToken1.hashCode(), gdprRefreshToken2.hashCode());
        System.assertEquals(gdprRefreshToken3.hashCode(), gdprRefreshToken4.hashCode());
    }
}
