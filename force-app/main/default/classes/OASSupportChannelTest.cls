@isTest
private class OASSupportChannelTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupportChannel supportChannel1 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel2 = supportChannel1;
        OASSupportChannel supportChannel3 = new OASSupportChannel();
        OASSupportChannel supportChannel4 = supportChannel3;

        System.assert(supportChannel1.equals(supportChannel2));
        System.assert(supportChannel2.equals(supportChannel1));
        System.assert(supportChannel1.equals(supportChannel1));
        System.assert(supportChannel3.equals(supportChannel4));
        System.assert(supportChannel4.equals(supportChannel3));
        System.assert(supportChannel3.equals(supportChannel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupportChannel supportChannel1 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel2 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel3 = new OASSupportChannel();
        OASSupportChannel supportChannel4 = new OASSupportChannel();

        System.assert(supportChannel1.equals(supportChannel2));
        System.assert(supportChannel2.equals(supportChannel1));
        System.assert(supportChannel3.equals(supportChannel4));
        System.assert(supportChannel4.equals(supportChannel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupportChannel supportChannel1 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel2 = new OASSupportChannel();

        System.assertEquals(false, supportChannel1.equals('foo'));
        System.assertEquals(false, supportChannel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupportChannel supportChannel1 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel2 = new OASSupportChannel();
        OASSupportChannel supportChannel3;

        System.assertEquals(false, supportChannel1.equals(supportChannel3));
        System.assertEquals(false, supportChannel2.equals(supportChannel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupportChannel supportChannel1 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel2 = new OASSupportChannel();

        System.assertEquals(supportChannel1.hashCode(), supportChannel1.hashCode());
        System.assertEquals(supportChannel2.hashCode(), supportChannel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupportChannel supportChannel1 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel2 = OASSupportChannel.getExample();
        OASSupportChannel supportChannel3 = new OASSupportChannel();
        OASSupportChannel supportChannel4 = new OASSupportChannel();

        System.assert(supportChannel1.equals(supportChannel2));
        System.assert(supportChannel3.equals(supportChannel4));
        System.assertEquals(supportChannel1.hashCode(), supportChannel2.hashCode());
        System.assertEquals(supportChannel3.hashCode(), supportChannel4.hashCode());
    }
}
