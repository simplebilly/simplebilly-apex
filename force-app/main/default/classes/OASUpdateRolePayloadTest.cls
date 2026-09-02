@isTest
private class OASUpdateRolePayloadTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateRolePayload updateRolePayload1 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload2 = updateRolePayload1;
        OASUpdateRolePayload updateRolePayload3 = new OASUpdateRolePayload();
        OASUpdateRolePayload updateRolePayload4 = updateRolePayload3;

        System.assert(updateRolePayload1.equals(updateRolePayload2));
        System.assert(updateRolePayload2.equals(updateRolePayload1));
        System.assert(updateRolePayload1.equals(updateRolePayload1));
        System.assert(updateRolePayload3.equals(updateRolePayload4));
        System.assert(updateRolePayload4.equals(updateRolePayload3));
        System.assert(updateRolePayload3.equals(updateRolePayload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateRolePayload updateRolePayload1 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload2 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload3 = new OASUpdateRolePayload();
        OASUpdateRolePayload updateRolePayload4 = new OASUpdateRolePayload();

        System.assert(updateRolePayload1.equals(updateRolePayload2));
        System.assert(updateRolePayload2.equals(updateRolePayload1));
        System.assert(updateRolePayload3.equals(updateRolePayload4));
        System.assert(updateRolePayload4.equals(updateRolePayload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateRolePayload updateRolePayload1 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload2 = new OASUpdateRolePayload();

        System.assertEquals(false, updateRolePayload1.equals('foo'));
        System.assertEquals(false, updateRolePayload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateRolePayload updateRolePayload1 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload2 = new OASUpdateRolePayload();
        OASUpdateRolePayload updateRolePayload3;

        System.assertEquals(false, updateRolePayload1.equals(updateRolePayload3));
        System.assertEquals(false, updateRolePayload2.equals(updateRolePayload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateRolePayload updateRolePayload1 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload2 = new OASUpdateRolePayload();

        System.assertEquals(updateRolePayload1.hashCode(), updateRolePayload1.hashCode());
        System.assertEquals(updateRolePayload2.hashCode(), updateRolePayload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateRolePayload updateRolePayload1 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload2 = OASUpdateRolePayload.getExample();
        OASUpdateRolePayload updateRolePayload3 = new OASUpdateRolePayload();
        OASUpdateRolePayload updateRolePayload4 = new OASUpdateRolePayload();

        System.assert(updateRolePayload1.equals(updateRolePayload2));
        System.assert(updateRolePayload3.equals(updateRolePayload4));
        System.assertEquals(updateRolePayload1.hashCode(), updateRolePayload2.hashCode());
        System.assertEquals(updateRolePayload3.hashCode(), updateRolePayload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateRolePayload updateRolePayload = new OASUpdateRolePayload();
        Map<String, String> x-property-mappings = updateRolePayload.getx-property-mappings();
        System.assertEquals('syncPermissions', x-property-mappings.get('sync_permissions'));
    }
}
