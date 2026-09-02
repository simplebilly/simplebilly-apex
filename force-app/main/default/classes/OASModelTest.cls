@isTest
private class OASModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASModel model1 = OASModel.getExample();
        OASModel model2 = model1;
        OASModel model3 = new OASModel();
        OASModel model4 = model3;

        System.assert(model1.equals(model2));
        System.assert(model2.equals(model1));
        System.assert(model1.equals(model1));
        System.assert(model3.equals(model4));
        System.assert(model4.equals(model3));
        System.assert(model3.equals(model3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASModel model1 = OASModel.getExample();
        OASModel model2 = OASModel.getExample();
        OASModel model3 = new OASModel();
        OASModel model4 = new OASModel();

        System.assert(model1.equals(model2));
        System.assert(model2.equals(model1));
        System.assert(model3.equals(model4));
        System.assert(model4.equals(model3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASModel model1 = OASModel.getExample();
        OASModel model2 = new OASModel();

        System.assertEquals(false, model1.equals('foo'));
        System.assertEquals(false, model2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASModel model1 = OASModel.getExample();
        OASModel model2 = new OASModel();
        OASModel model3;

        System.assertEquals(false, model1.equals(model3));
        System.assertEquals(false, model2.equals(model3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASModel model1 = OASModel.getExample();
        OASModel model2 = new OASModel();

        System.assertEquals(model1.hashCode(), model1.hashCode());
        System.assertEquals(model2.hashCode(), model2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASModel model1 = OASModel.getExample();
        OASModel model2 = OASModel.getExample();
        OASModel model3 = new OASModel();
        OASModel model4 = new OASModel();

        System.assert(model1.equals(model2));
        System.assert(model3.equals(model4));
        System.assertEquals(model1.hashCode(), model2.hashCode());
        System.assertEquals(model3.hashCode(), model4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASModel model = new OASModel();
        Map<String, String> x-property-mappings = model.getx-property-mappings();
        System.assertEquals('backupCodes', x-property-mappings.get('backup_codes'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('deletedAt', x-property-mappings.get('deleted_at'));
        System.assertEquals('emailVerified', x-property-mappings.get('email_verified'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('isTotpEnabled', x-property-mappings.get('is_totp_enabled'));
        System.assertEquals('lastLogin', x-property-mappings.get('last_login'));
        System.assertEquals('oauthId', x-property-mappings.get('oauth_id'));
        System.assertEquals('oauthProvider', x-property-mappings.get('oauth_provider'));
        System.assertEquals('passwordChangedAt', x-property-mappings.get('password_changed_at'));
        System.assertEquals('passwordHash', x-property-mappings.get('password_hash'));
        System.assertEquals('privacyAcceptedAt', x-property-mappings.get('privacy_accepted_at'));
        System.assertEquals('totpSecret', x-property-mappings.get('totp_secret'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASModel model = new OASModel();
        System.assertEquals(new List<String>(), model.backupCodes);
        System.assertEquals(null, model.createdAt);
        System.assertEquals(null, model.deletedAt);
        System.assertEquals(null, model.email);
        System.assertEquals(null, model.emailVerified);
        System.assertEquals(null, model.id);
        System.assertEquals(null, model.isActive);
        System.assertEquals(null, model.isTotpEnabled);
        System.assertEquals(null, model.lastLogin);
        System.assertEquals(null, model.name);
        System.assertEquals(null, model.oauthId);
        System.assertEquals(null, model.oauthProvider);
        System.assertEquals(null, model.passwordChangedAt);
        System.assertEquals(null, model.passwordHash);
        System.assertEquals(null, model.picture);
        System.assertEquals(null, model.privacyAcceptedAt);
        System.assertEquals(null, model.totpSecret);
        System.assertEquals(null, model.updatedAt);
    }
}
