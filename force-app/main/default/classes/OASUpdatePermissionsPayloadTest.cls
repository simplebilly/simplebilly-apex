@isTest
private class OASUpdatePermissionsPayloadTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdatePermissionsPayload updatePermissionsPayload1 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload2 = updatePermissionsPayload1;
        OASUpdatePermissionsPayload updatePermissionsPayload3 = new OASUpdatePermissionsPayload();
        OASUpdatePermissionsPayload updatePermissionsPayload4 = updatePermissionsPayload3;

        System.assert(updatePermissionsPayload1.equals(updatePermissionsPayload2));
        System.assert(updatePermissionsPayload2.equals(updatePermissionsPayload1));
        System.assert(updatePermissionsPayload1.equals(updatePermissionsPayload1));
        System.assert(updatePermissionsPayload3.equals(updatePermissionsPayload4));
        System.assert(updatePermissionsPayload4.equals(updatePermissionsPayload3));
        System.assert(updatePermissionsPayload3.equals(updatePermissionsPayload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdatePermissionsPayload updatePermissionsPayload1 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload2 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload3 = new OASUpdatePermissionsPayload();
        OASUpdatePermissionsPayload updatePermissionsPayload4 = new OASUpdatePermissionsPayload();

        System.assert(updatePermissionsPayload1.equals(updatePermissionsPayload2));
        System.assert(updatePermissionsPayload2.equals(updatePermissionsPayload1));
        System.assert(updatePermissionsPayload3.equals(updatePermissionsPayload4));
        System.assert(updatePermissionsPayload4.equals(updatePermissionsPayload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdatePermissionsPayload updatePermissionsPayload1 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload2 = new OASUpdatePermissionsPayload();

        System.assertEquals(false, updatePermissionsPayload1.equals('foo'));
        System.assertEquals(false, updatePermissionsPayload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdatePermissionsPayload updatePermissionsPayload1 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload2 = new OASUpdatePermissionsPayload();
        OASUpdatePermissionsPayload updatePermissionsPayload3;

        System.assertEquals(false, updatePermissionsPayload1.equals(updatePermissionsPayload3));
        System.assertEquals(false, updatePermissionsPayload2.equals(updatePermissionsPayload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdatePermissionsPayload updatePermissionsPayload1 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload2 = new OASUpdatePermissionsPayload();

        System.assertEquals(updatePermissionsPayload1.hashCode(), updatePermissionsPayload1.hashCode());
        System.assertEquals(updatePermissionsPayload2.hashCode(), updatePermissionsPayload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdatePermissionsPayload updatePermissionsPayload1 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload2 = OASUpdatePermissionsPayload.getExample();
        OASUpdatePermissionsPayload updatePermissionsPayload3 = new OASUpdatePermissionsPayload();
        OASUpdatePermissionsPayload updatePermissionsPayload4 = new OASUpdatePermissionsPayload();

        System.assert(updatePermissionsPayload1.equals(updatePermissionsPayload2));
        System.assert(updatePermissionsPayload3.equals(updatePermissionsPayload4));
        System.assertEquals(updatePermissionsPayload1.hashCode(), updatePermissionsPayload2.hashCode());
        System.assertEquals(updatePermissionsPayload3.hashCode(), updatePermissionsPayload4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpdatePermissionsPayload updatePermissionsPayload = new OASUpdatePermissionsPayload();
        System.assertEquals(new List<String>(), updatePermissionsPayload.permissions);
    }
}
