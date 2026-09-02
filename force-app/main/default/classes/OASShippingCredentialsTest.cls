@isTest
private class OASShippingCredentialsTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingCredentials shippingCredentials1 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials2 = shippingCredentials1;
        OASShippingCredentials shippingCredentials3 = new OASShippingCredentials();
        OASShippingCredentials shippingCredentials4 = shippingCredentials3;

        System.assert(shippingCredentials1.equals(shippingCredentials2));
        System.assert(shippingCredentials2.equals(shippingCredentials1));
        System.assert(shippingCredentials1.equals(shippingCredentials1));
        System.assert(shippingCredentials3.equals(shippingCredentials4));
        System.assert(shippingCredentials4.equals(shippingCredentials3));
        System.assert(shippingCredentials3.equals(shippingCredentials3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingCredentials shippingCredentials1 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials2 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials3 = new OASShippingCredentials();
        OASShippingCredentials shippingCredentials4 = new OASShippingCredentials();

        System.assert(shippingCredentials1.equals(shippingCredentials2));
        System.assert(shippingCredentials2.equals(shippingCredentials1));
        System.assert(shippingCredentials3.equals(shippingCredentials4));
        System.assert(shippingCredentials4.equals(shippingCredentials3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingCredentials shippingCredentials1 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials2 = new OASShippingCredentials();

        System.assertEquals(false, shippingCredentials1.equals('foo'));
        System.assertEquals(false, shippingCredentials2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingCredentials shippingCredentials1 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials2 = new OASShippingCredentials();
        OASShippingCredentials shippingCredentials3;

        System.assertEquals(false, shippingCredentials1.equals(shippingCredentials3));
        System.assertEquals(false, shippingCredentials2.equals(shippingCredentials3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingCredentials shippingCredentials1 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials2 = new OASShippingCredentials();

        System.assertEquals(shippingCredentials1.hashCode(), shippingCredentials1.hashCode());
        System.assertEquals(shippingCredentials2.hashCode(), shippingCredentials2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingCredentials shippingCredentials1 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials2 = OASShippingCredentials.getExample();
        OASShippingCredentials shippingCredentials3 = new OASShippingCredentials();
        OASShippingCredentials shippingCredentials4 = new OASShippingCredentials();

        System.assert(shippingCredentials1.equals(shippingCredentials2));
        System.assert(shippingCredentials3.equals(shippingCredentials4));
        System.assertEquals(shippingCredentials1.hashCode(), shippingCredentials2.hashCode());
        System.assertEquals(shippingCredentials3.hashCode(), shippingCredentials4.hashCode());
    }
}
