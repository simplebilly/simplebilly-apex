@isTest
private class OASTenantUserTest {
    @isTest
    private static void equalsSameInstance() {
        OASTenantUser tenantUser1 = OASTenantUser.getExample();
        OASTenantUser tenantUser2 = tenantUser1;
        OASTenantUser tenantUser3 = new OASTenantUser();
        OASTenantUser tenantUser4 = tenantUser3;

        System.assert(tenantUser1.equals(tenantUser2));
        System.assert(tenantUser2.equals(tenantUser1));
        System.assert(tenantUser1.equals(tenantUser1));
        System.assert(tenantUser3.equals(tenantUser4));
        System.assert(tenantUser4.equals(tenantUser3));
        System.assert(tenantUser3.equals(tenantUser3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTenantUser tenantUser1 = OASTenantUser.getExample();
        OASTenantUser tenantUser2 = OASTenantUser.getExample();
        OASTenantUser tenantUser3 = new OASTenantUser();
        OASTenantUser tenantUser4 = new OASTenantUser();

        System.assert(tenantUser1.equals(tenantUser2));
        System.assert(tenantUser2.equals(tenantUser1));
        System.assert(tenantUser3.equals(tenantUser4));
        System.assert(tenantUser4.equals(tenantUser3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTenantUser tenantUser1 = OASTenantUser.getExample();
        OASTenantUser tenantUser2 = new OASTenantUser();

        System.assertEquals(false, tenantUser1.equals('foo'));
        System.assertEquals(false, tenantUser2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTenantUser tenantUser1 = OASTenantUser.getExample();
        OASTenantUser tenantUser2 = new OASTenantUser();
        OASTenantUser tenantUser3;

        System.assertEquals(false, tenantUser1.equals(tenantUser3));
        System.assertEquals(false, tenantUser2.equals(tenantUser3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTenantUser tenantUser1 = OASTenantUser.getExample();
        OASTenantUser tenantUser2 = new OASTenantUser();

        System.assertEquals(tenantUser1.hashCode(), tenantUser1.hashCode());
        System.assertEquals(tenantUser2.hashCode(), tenantUser2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTenantUser tenantUser1 = OASTenantUser.getExample();
        OASTenantUser tenantUser2 = OASTenantUser.getExample();
        OASTenantUser tenantUser3 = new OASTenantUser();
        OASTenantUser tenantUser4 = new OASTenantUser();

        System.assert(tenantUser1.equals(tenantUser2));
        System.assert(tenantUser3.equals(tenantUser4));
        System.assertEquals(tenantUser1.hashCode(), tenantUser2.hashCode());
        System.assertEquals(tenantUser3.hashCode(), tenantUser4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTenantUser tenantUser = new OASTenantUser();
        Map<String, String> x-property-mappings = tenantUser.getx-property-mappings();
        System.assertEquals('emailVerified', x-property-mappings.get('email_verified'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('joinedAt', x-property-mappings.get('joined_at'));
        System.assertEquals('lastLogin', x-property-mappings.get('last_login'));
        System.assertEquals('userId', x-property-mappings.get('user_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTenantUser tenantUser = new OASTenantUser();
        System.assertEquals(new List<String>(), tenantUser.permissions);
        System.assertEquals(null, tenantUser.email);
        System.assertEquals(null, tenantUser.emailVerified);
        System.assertEquals(null, tenantUser.isActive);
        System.assertEquals(null, tenantUser.joinedAt);
        System.assertEquals(null, tenantUser.lastLogin);
        System.assertEquals(null, tenantUser.name);
        System.assertEquals(null, tenantUser.role);
        System.assertEquals(null, tenantUser.userId);
    }
}
