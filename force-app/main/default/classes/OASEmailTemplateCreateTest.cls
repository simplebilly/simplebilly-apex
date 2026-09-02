@isTest
private class OASEmailTemplateCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmailTemplateCreate emailTemplateCreate1 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate2 = emailTemplateCreate1;
        OASEmailTemplateCreate emailTemplateCreate3 = new OASEmailTemplateCreate();
        OASEmailTemplateCreate emailTemplateCreate4 = emailTemplateCreate3;

        System.assert(emailTemplateCreate1.equals(emailTemplateCreate2));
        System.assert(emailTemplateCreate2.equals(emailTemplateCreate1));
        System.assert(emailTemplateCreate1.equals(emailTemplateCreate1));
        System.assert(emailTemplateCreate3.equals(emailTemplateCreate4));
        System.assert(emailTemplateCreate4.equals(emailTemplateCreate3));
        System.assert(emailTemplateCreate3.equals(emailTemplateCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmailTemplateCreate emailTemplateCreate1 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate2 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate3 = new OASEmailTemplateCreate();
        OASEmailTemplateCreate emailTemplateCreate4 = new OASEmailTemplateCreate();

        System.assert(emailTemplateCreate1.equals(emailTemplateCreate2));
        System.assert(emailTemplateCreate2.equals(emailTemplateCreate1));
        System.assert(emailTemplateCreate3.equals(emailTemplateCreate4));
        System.assert(emailTemplateCreate4.equals(emailTemplateCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmailTemplateCreate emailTemplateCreate1 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate2 = new OASEmailTemplateCreate();

        System.assertEquals(false, emailTemplateCreate1.equals('foo'));
        System.assertEquals(false, emailTemplateCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmailTemplateCreate emailTemplateCreate1 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate2 = new OASEmailTemplateCreate();
        OASEmailTemplateCreate emailTemplateCreate3;

        System.assertEquals(false, emailTemplateCreate1.equals(emailTemplateCreate3));
        System.assertEquals(false, emailTemplateCreate2.equals(emailTemplateCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmailTemplateCreate emailTemplateCreate1 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate2 = new OASEmailTemplateCreate();

        System.assertEquals(emailTemplateCreate1.hashCode(), emailTemplateCreate1.hashCode());
        System.assertEquals(emailTemplateCreate2.hashCode(), emailTemplateCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmailTemplateCreate emailTemplateCreate1 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate2 = OASEmailTemplateCreate.getExample();
        OASEmailTemplateCreate emailTemplateCreate3 = new OASEmailTemplateCreate();
        OASEmailTemplateCreate emailTemplateCreate4 = new OASEmailTemplateCreate();

        System.assert(emailTemplateCreate1.equals(emailTemplateCreate2));
        System.assert(emailTemplateCreate3.equals(emailTemplateCreate4));
        System.assertEquals(emailTemplateCreate1.hashCode(), emailTemplateCreate2.hashCode());
        System.assertEquals(emailTemplateCreate3.hashCode(), emailTemplateCreate4.hashCode());
    }
}
