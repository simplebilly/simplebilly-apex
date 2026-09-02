@isTest
private class OASEmailTemplateUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmailTemplateUpdate emailTemplateUpdate1 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate2 = emailTemplateUpdate1;
        OASEmailTemplateUpdate emailTemplateUpdate3 = new OASEmailTemplateUpdate();
        OASEmailTemplateUpdate emailTemplateUpdate4 = emailTemplateUpdate3;

        System.assert(emailTemplateUpdate1.equals(emailTemplateUpdate2));
        System.assert(emailTemplateUpdate2.equals(emailTemplateUpdate1));
        System.assert(emailTemplateUpdate1.equals(emailTemplateUpdate1));
        System.assert(emailTemplateUpdate3.equals(emailTemplateUpdate4));
        System.assert(emailTemplateUpdate4.equals(emailTemplateUpdate3));
        System.assert(emailTemplateUpdate3.equals(emailTemplateUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmailTemplateUpdate emailTemplateUpdate1 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate2 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate3 = new OASEmailTemplateUpdate();
        OASEmailTemplateUpdate emailTemplateUpdate4 = new OASEmailTemplateUpdate();

        System.assert(emailTemplateUpdate1.equals(emailTemplateUpdate2));
        System.assert(emailTemplateUpdate2.equals(emailTemplateUpdate1));
        System.assert(emailTemplateUpdate3.equals(emailTemplateUpdate4));
        System.assert(emailTemplateUpdate4.equals(emailTemplateUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmailTemplateUpdate emailTemplateUpdate1 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate2 = new OASEmailTemplateUpdate();

        System.assertEquals(false, emailTemplateUpdate1.equals('foo'));
        System.assertEquals(false, emailTemplateUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmailTemplateUpdate emailTemplateUpdate1 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate2 = new OASEmailTemplateUpdate();
        OASEmailTemplateUpdate emailTemplateUpdate3;

        System.assertEquals(false, emailTemplateUpdate1.equals(emailTemplateUpdate3));
        System.assertEquals(false, emailTemplateUpdate2.equals(emailTemplateUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmailTemplateUpdate emailTemplateUpdate1 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate2 = new OASEmailTemplateUpdate();

        System.assertEquals(emailTemplateUpdate1.hashCode(), emailTemplateUpdate1.hashCode());
        System.assertEquals(emailTemplateUpdate2.hashCode(), emailTemplateUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmailTemplateUpdate emailTemplateUpdate1 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate2 = OASEmailTemplateUpdate.getExample();
        OASEmailTemplateUpdate emailTemplateUpdate3 = new OASEmailTemplateUpdate();
        OASEmailTemplateUpdate emailTemplateUpdate4 = new OASEmailTemplateUpdate();

        System.assert(emailTemplateUpdate1.equals(emailTemplateUpdate2));
        System.assert(emailTemplateUpdate3.equals(emailTemplateUpdate4));
        System.assertEquals(emailTemplateUpdate1.hashCode(), emailTemplateUpdate2.hashCode());
        System.assertEquals(emailTemplateUpdate3.hashCode(), emailTemplateUpdate4.hashCode());
    }
}
