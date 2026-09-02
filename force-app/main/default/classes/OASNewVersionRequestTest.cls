@isTest
private class OASNewVersionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASNewVersionRequest newVersionRequest1 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest2 = newVersionRequest1;
        OASNewVersionRequest newVersionRequest3 = new OASNewVersionRequest();
        OASNewVersionRequest newVersionRequest4 = newVersionRequest3;

        System.assert(newVersionRequest1.equals(newVersionRequest2));
        System.assert(newVersionRequest2.equals(newVersionRequest1));
        System.assert(newVersionRequest1.equals(newVersionRequest1));
        System.assert(newVersionRequest3.equals(newVersionRequest4));
        System.assert(newVersionRequest4.equals(newVersionRequest3));
        System.assert(newVersionRequest3.equals(newVersionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASNewVersionRequest newVersionRequest1 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest2 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest3 = new OASNewVersionRequest();
        OASNewVersionRequest newVersionRequest4 = new OASNewVersionRequest();

        System.assert(newVersionRequest1.equals(newVersionRequest2));
        System.assert(newVersionRequest2.equals(newVersionRequest1));
        System.assert(newVersionRequest3.equals(newVersionRequest4));
        System.assert(newVersionRequest4.equals(newVersionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASNewVersionRequest newVersionRequest1 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest2 = new OASNewVersionRequest();

        System.assertEquals(false, newVersionRequest1.equals('foo'));
        System.assertEquals(false, newVersionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASNewVersionRequest newVersionRequest1 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest2 = new OASNewVersionRequest();
        OASNewVersionRequest newVersionRequest3;

        System.assertEquals(false, newVersionRequest1.equals(newVersionRequest3));
        System.assertEquals(false, newVersionRequest2.equals(newVersionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASNewVersionRequest newVersionRequest1 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest2 = new OASNewVersionRequest();

        System.assertEquals(newVersionRequest1.hashCode(), newVersionRequest1.hashCode());
        System.assertEquals(newVersionRequest2.hashCode(), newVersionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASNewVersionRequest newVersionRequest1 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest2 = OASNewVersionRequest.getExample();
        OASNewVersionRequest newVersionRequest3 = new OASNewVersionRequest();
        OASNewVersionRequest newVersionRequest4 = new OASNewVersionRequest();

        System.assert(newVersionRequest1.equals(newVersionRequest2));
        System.assert(newVersionRequest3.equals(newVersionRequest4));
        System.assertEquals(newVersionRequest1.hashCode(), newVersionRequest2.hashCode());
        System.assertEquals(newVersionRequest3.hashCode(), newVersionRequest4.hashCode());
    }
}
