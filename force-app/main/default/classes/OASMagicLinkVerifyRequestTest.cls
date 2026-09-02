@isTest
private class OASMagicLinkVerifyRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASMagicLinkVerifyRequest magicLinkVerifyRequest1 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest2 = magicLinkVerifyRequest1;
        OASMagicLinkVerifyRequest magicLinkVerifyRequest3 = new OASMagicLinkVerifyRequest();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest4 = magicLinkVerifyRequest3;

        System.assert(magicLinkVerifyRequest1.equals(magicLinkVerifyRequest2));
        System.assert(magicLinkVerifyRequest2.equals(magicLinkVerifyRequest1));
        System.assert(magicLinkVerifyRequest1.equals(magicLinkVerifyRequest1));
        System.assert(magicLinkVerifyRequest3.equals(magicLinkVerifyRequest4));
        System.assert(magicLinkVerifyRequest4.equals(magicLinkVerifyRequest3));
        System.assert(magicLinkVerifyRequest3.equals(magicLinkVerifyRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMagicLinkVerifyRequest magicLinkVerifyRequest1 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest2 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest3 = new OASMagicLinkVerifyRequest();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest4 = new OASMagicLinkVerifyRequest();

        System.assert(magicLinkVerifyRequest1.equals(magicLinkVerifyRequest2));
        System.assert(magicLinkVerifyRequest2.equals(magicLinkVerifyRequest1));
        System.assert(magicLinkVerifyRequest3.equals(magicLinkVerifyRequest4));
        System.assert(magicLinkVerifyRequest4.equals(magicLinkVerifyRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMagicLinkVerifyRequest magicLinkVerifyRequest1 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest2 = new OASMagicLinkVerifyRequest();

        System.assertEquals(false, magicLinkVerifyRequest1.equals('foo'));
        System.assertEquals(false, magicLinkVerifyRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMagicLinkVerifyRequest magicLinkVerifyRequest1 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest2 = new OASMagicLinkVerifyRequest();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest3;

        System.assertEquals(false, magicLinkVerifyRequest1.equals(magicLinkVerifyRequest3));
        System.assertEquals(false, magicLinkVerifyRequest2.equals(magicLinkVerifyRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMagicLinkVerifyRequest magicLinkVerifyRequest1 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest2 = new OASMagicLinkVerifyRequest();

        System.assertEquals(magicLinkVerifyRequest1.hashCode(), magicLinkVerifyRequest1.hashCode());
        System.assertEquals(magicLinkVerifyRequest2.hashCode(), magicLinkVerifyRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMagicLinkVerifyRequest magicLinkVerifyRequest1 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest2 = OASMagicLinkVerifyRequest.getExample();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest3 = new OASMagicLinkVerifyRequest();
        OASMagicLinkVerifyRequest magicLinkVerifyRequest4 = new OASMagicLinkVerifyRequest();

        System.assert(magicLinkVerifyRequest1.equals(magicLinkVerifyRequest2));
        System.assert(magicLinkVerifyRequest3.equals(magicLinkVerifyRequest4));
        System.assertEquals(magicLinkVerifyRequest1.hashCode(), magicLinkVerifyRequest2.hashCode());
        System.assertEquals(magicLinkVerifyRequest3.hashCode(), magicLinkVerifyRequest4.hashCode());
    }
}
