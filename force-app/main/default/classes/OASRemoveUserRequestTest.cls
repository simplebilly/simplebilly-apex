@isTest
private class OASRemoveUserRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASRemoveUserRequest removeUserRequest1 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest2 = removeUserRequest1;
        OASRemoveUserRequest removeUserRequest3 = new OASRemoveUserRequest();
        OASRemoveUserRequest removeUserRequest4 = removeUserRequest3;

        System.assert(removeUserRequest1.equals(removeUserRequest2));
        System.assert(removeUserRequest2.equals(removeUserRequest1));
        System.assert(removeUserRequest1.equals(removeUserRequest1));
        System.assert(removeUserRequest3.equals(removeUserRequest4));
        System.assert(removeUserRequest4.equals(removeUserRequest3));
        System.assert(removeUserRequest3.equals(removeUserRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRemoveUserRequest removeUserRequest1 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest2 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest3 = new OASRemoveUserRequest();
        OASRemoveUserRequest removeUserRequest4 = new OASRemoveUserRequest();

        System.assert(removeUserRequest1.equals(removeUserRequest2));
        System.assert(removeUserRequest2.equals(removeUserRequest1));
        System.assert(removeUserRequest3.equals(removeUserRequest4));
        System.assert(removeUserRequest4.equals(removeUserRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRemoveUserRequest removeUserRequest1 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest2 = new OASRemoveUserRequest();

        System.assertEquals(false, removeUserRequest1.equals('foo'));
        System.assertEquals(false, removeUserRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRemoveUserRequest removeUserRequest1 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest2 = new OASRemoveUserRequest();
        OASRemoveUserRequest removeUserRequest3;

        System.assertEquals(false, removeUserRequest1.equals(removeUserRequest3));
        System.assertEquals(false, removeUserRequest2.equals(removeUserRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRemoveUserRequest removeUserRequest1 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest2 = new OASRemoveUserRequest();

        System.assertEquals(removeUserRequest1.hashCode(), removeUserRequest1.hashCode());
        System.assertEquals(removeUserRequest2.hashCode(), removeUserRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRemoveUserRequest removeUserRequest1 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest2 = OASRemoveUserRequest.getExample();
        OASRemoveUserRequest removeUserRequest3 = new OASRemoveUserRequest();
        OASRemoveUserRequest removeUserRequest4 = new OASRemoveUserRequest();

        System.assert(removeUserRequest1.equals(removeUserRequest2));
        System.assert(removeUserRequest3.equals(removeUserRequest4));
        System.assertEquals(removeUserRequest1.hashCode(), removeUserRequest2.hashCode());
        System.assertEquals(removeUserRequest3.hashCode(), removeUserRequest4.hashCode());
    }
}
