@isTest
private class OASOrderTagsRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderTagsRequest orderTagsRequest1 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest2 = orderTagsRequest1;
        OASOrderTagsRequest orderTagsRequest3 = new OASOrderTagsRequest();
        OASOrderTagsRequest orderTagsRequest4 = orderTagsRequest3;

        System.assert(orderTagsRequest1.equals(orderTagsRequest2));
        System.assert(orderTagsRequest2.equals(orderTagsRequest1));
        System.assert(orderTagsRequest1.equals(orderTagsRequest1));
        System.assert(orderTagsRequest3.equals(orderTagsRequest4));
        System.assert(orderTagsRequest4.equals(orderTagsRequest3));
        System.assert(orderTagsRequest3.equals(orderTagsRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderTagsRequest orderTagsRequest1 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest2 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest3 = new OASOrderTagsRequest();
        OASOrderTagsRequest orderTagsRequest4 = new OASOrderTagsRequest();

        System.assert(orderTagsRequest1.equals(orderTagsRequest2));
        System.assert(orderTagsRequest2.equals(orderTagsRequest1));
        System.assert(orderTagsRequest3.equals(orderTagsRequest4));
        System.assert(orderTagsRequest4.equals(orderTagsRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderTagsRequest orderTagsRequest1 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest2 = new OASOrderTagsRequest();

        System.assertEquals(false, orderTagsRequest1.equals('foo'));
        System.assertEquals(false, orderTagsRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderTagsRequest orderTagsRequest1 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest2 = new OASOrderTagsRequest();
        OASOrderTagsRequest orderTagsRequest3;

        System.assertEquals(false, orderTagsRequest1.equals(orderTagsRequest3));
        System.assertEquals(false, orderTagsRequest2.equals(orderTagsRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderTagsRequest orderTagsRequest1 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest2 = new OASOrderTagsRequest();

        System.assertEquals(orderTagsRequest1.hashCode(), orderTagsRequest1.hashCode());
        System.assertEquals(orderTagsRequest2.hashCode(), orderTagsRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderTagsRequest orderTagsRequest1 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest2 = OASOrderTagsRequest.getExample();
        OASOrderTagsRequest orderTagsRequest3 = new OASOrderTagsRequest();
        OASOrderTagsRequest orderTagsRequest4 = new OASOrderTagsRequest();

        System.assert(orderTagsRequest1.equals(orderTagsRequest2));
        System.assert(orderTagsRequest3.equals(orderTagsRequest4));
        System.assertEquals(orderTagsRequest1.hashCode(), orderTagsRequest2.hashCode());
        System.assertEquals(orderTagsRequest3.hashCode(), orderTagsRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderTagsRequest orderTagsRequest = new OASOrderTagsRequest();
        System.assertEquals(new List<String>(), orderTagsRequest.tags);
    }
}
