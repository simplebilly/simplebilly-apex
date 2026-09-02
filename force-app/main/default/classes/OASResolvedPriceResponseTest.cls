@isTest
private class OASResolvedPriceResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASResolvedPriceResponse resolvedPriceResponse1 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse2 = resolvedPriceResponse1;
        OASResolvedPriceResponse resolvedPriceResponse3 = new OASResolvedPriceResponse();
        OASResolvedPriceResponse resolvedPriceResponse4 = resolvedPriceResponse3;

        System.assert(resolvedPriceResponse1.equals(resolvedPriceResponse2));
        System.assert(resolvedPriceResponse2.equals(resolvedPriceResponse1));
        System.assert(resolvedPriceResponse1.equals(resolvedPriceResponse1));
        System.assert(resolvedPriceResponse3.equals(resolvedPriceResponse4));
        System.assert(resolvedPriceResponse4.equals(resolvedPriceResponse3));
        System.assert(resolvedPriceResponse3.equals(resolvedPriceResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResolvedPriceResponse resolvedPriceResponse1 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse2 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse3 = new OASResolvedPriceResponse();
        OASResolvedPriceResponse resolvedPriceResponse4 = new OASResolvedPriceResponse();

        System.assert(resolvedPriceResponse1.equals(resolvedPriceResponse2));
        System.assert(resolvedPriceResponse2.equals(resolvedPriceResponse1));
        System.assert(resolvedPriceResponse3.equals(resolvedPriceResponse4));
        System.assert(resolvedPriceResponse4.equals(resolvedPriceResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResolvedPriceResponse resolvedPriceResponse1 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse2 = new OASResolvedPriceResponse();

        System.assertEquals(false, resolvedPriceResponse1.equals('foo'));
        System.assertEquals(false, resolvedPriceResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResolvedPriceResponse resolvedPriceResponse1 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse2 = new OASResolvedPriceResponse();
        OASResolvedPriceResponse resolvedPriceResponse3;

        System.assertEquals(false, resolvedPriceResponse1.equals(resolvedPriceResponse3));
        System.assertEquals(false, resolvedPriceResponse2.equals(resolvedPriceResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResolvedPriceResponse resolvedPriceResponse1 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse2 = new OASResolvedPriceResponse();

        System.assertEquals(resolvedPriceResponse1.hashCode(), resolvedPriceResponse1.hashCode());
        System.assertEquals(resolvedPriceResponse2.hashCode(), resolvedPriceResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResolvedPriceResponse resolvedPriceResponse1 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse2 = OASResolvedPriceResponse.getExample();
        OASResolvedPriceResponse resolvedPriceResponse3 = new OASResolvedPriceResponse();
        OASResolvedPriceResponse resolvedPriceResponse4 = new OASResolvedPriceResponse();

        System.assert(resolvedPriceResponse1.equals(resolvedPriceResponse2));
        System.assert(resolvedPriceResponse3.equals(resolvedPriceResponse4));
        System.assertEquals(resolvedPriceResponse1.hashCode(), resolvedPriceResponse2.hashCode());
        System.assertEquals(resolvedPriceResponse3.hashCode(), resolvedPriceResponse4.hashCode());
    }
}
