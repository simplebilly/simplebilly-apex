@isTest
private class OASMagicLinkRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASMagicLinkRequest magicLinkRequest1 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest2 = magicLinkRequest1;
        OASMagicLinkRequest magicLinkRequest3 = new OASMagicLinkRequest();
        OASMagicLinkRequest magicLinkRequest4 = magicLinkRequest3;

        System.assert(magicLinkRequest1.equals(magicLinkRequest2));
        System.assert(magicLinkRequest2.equals(magicLinkRequest1));
        System.assert(magicLinkRequest1.equals(magicLinkRequest1));
        System.assert(magicLinkRequest3.equals(magicLinkRequest4));
        System.assert(magicLinkRequest4.equals(magicLinkRequest3));
        System.assert(magicLinkRequest3.equals(magicLinkRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMagicLinkRequest magicLinkRequest1 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest2 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest3 = new OASMagicLinkRequest();
        OASMagicLinkRequest magicLinkRequest4 = new OASMagicLinkRequest();

        System.assert(magicLinkRequest1.equals(magicLinkRequest2));
        System.assert(magicLinkRequest2.equals(magicLinkRequest1));
        System.assert(magicLinkRequest3.equals(magicLinkRequest4));
        System.assert(magicLinkRequest4.equals(magicLinkRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMagicLinkRequest magicLinkRequest1 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest2 = new OASMagicLinkRequest();

        System.assertEquals(false, magicLinkRequest1.equals('foo'));
        System.assertEquals(false, magicLinkRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMagicLinkRequest magicLinkRequest1 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest2 = new OASMagicLinkRequest();
        OASMagicLinkRequest magicLinkRequest3;

        System.assertEquals(false, magicLinkRequest1.equals(magicLinkRequest3));
        System.assertEquals(false, magicLinkRequest2.equals(magicLinkRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMagicLinkRequest magicLinkRequest1 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest2 = new OASMagicLinkRequest();

        System.assertEquals(magicLinkRequest1.hashCode(), magicLinkRequest1.hashCode());
        System.assertEquals(magicLinkRequest2.hashCode(), magicLinkRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMagicLinkRequest magicLinkRequest1 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest2 = OASMagicLinkRequest.getExample();
        OASMagicLinkRequest magicLinkRequest3 = new OASMagicLinkRequest();
        OASMagicLinkRequest magicLinkRequest4 = new OASMagicLinkRequest();

        System.assert(magicLinkRequest1.equals(magicLinkRequest2));
        System.assert(magicLinkRequest3.equals(magicLinkRequest4));
        System.assertEquals(magicLinkRequest1.hashCode(), magicLinkRequest2.hashCode());
        System.assertEquals(magicLinkRequest3.hashCode(), magicLinkRequest4.hashCode());
    }
}
