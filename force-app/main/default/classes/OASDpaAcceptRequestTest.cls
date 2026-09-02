@isTest
private class OASDpaAcceptRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASDpaAcceptRequest dpaAcceptRequest1 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest2 = dpaAcceptRequest1;
        OASDpaAcceptRequest dpaAcceptRequest3 = new OASDpaAcceptRequest();
        OASDpaAcceptRequest dpaAcceptRequest4 = dpaAcceptRequest3;

        System.assert(dpaAcceptRequest1.equals(dpaAcceptRequest2));
        System.assert(dpaAcceptRequest2.equals(dpaAcceptRequest1));
        System.assert(dpaAcceptRequest1.equals(dpaAcceptRequest1));
        System.assert(dpaAcceptRequest3.equals(dpaAcceptRequest4));
        System.assert(dpaAcceptRequest4.equals(dpaAcceptRequest3));
        System.assert(dpaAcceptRequest3.equals(dpaAcceptRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDpaAcceptRequest dpaAcceptRequest1 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest2 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest3 = new OASDpaAcceptRequest();
        OASDpaAcceptRequest dpaAcceptRequest4 = new OASDpaAcceptRequest();

        System.assert(dpaAcceptRequest1.equals(dpaAcceptRequest2));
        System.assert(dpaAcceptRequest2.equals(dpaAcceptRequest1));
        System.assert(dpaAcceptRequest3.equals(dpaAcceptRequest4));
        System.assert(dpaAcceptRequest4.equals(dpaAcceptRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDpaAcceptRequest dpaAcceptRequest1 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest2 = new OASDpaAcceptRequest();

        System.assertEquals(false, dpaAcceptRequest1.equals('foo'));
        System.assertEquals(false, dpaAcceptRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDpaAcceptRequest dpaAcceptRequest1 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest2 = new OASDpaAcceptRequest();
        OASDpaAcceptRequest dpaAcceptRequest3;

        System.assertEquals(false, dpaAcceptRequest1.equals(dpaAcceptRequest3));
        System.assertEquals(false, dpaAcceptRequest2.equals(dpaAcceptRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDpaAcceptRequest dpaAcceptRequest1 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest2 = new OASDpaAcceptRequest();

        System.assertEquals(dpaAcceptRequest1.hashCode(), dpaAcceptRequest1.hashCode());
        System.assertEquals(dpaAcceptRequest2.hashCode(), dpaAcceptRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDpaAcceptRequest dpaAcceptRequest1 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest2 = OASDpaAcceptRequest.getExample();
        OASDpaAcceptRequest dpaAcceptRequest3 = new OASDpaAcceptRequest();
        OASDpaAcceptRequest dpaAcceptRequest4 = new OASDpaAcceptRequest();

        System.assert(dpaAcceptRequest1.equals(dpaAcceptRequest2));
        System.assert(dpaAcceptRequest3.equals(dpaAcceptRequest4));
        System.assertEquals(dpaAcceptRequest1.hashCode(), dpaAcceptRequest2.hashCode());
        System.assertEquals(dpaAcceptRequest3.hashCode(), dpaAcceptRequest4.hashCode());
    }
}
