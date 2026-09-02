@isTest
private class OASEmailTemplateTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmailTemplate emailTemplate1 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate2 = emailTemplate1;
        OASEmailTemplate emailTemplate3 = new OASEmailTemplate();
        OASEmailTemplate emailTemplate4 = emailTemplate3;

        System.assert(emailTemplate1.equals(emailTemplate2));
        System.assert(emailTemplate2.equals(emailTemplate1));
        System.assert(emailTemplate1.equals(emailTemplate1));
        System.assert(emailTemplate3.equals(emailTemplate4));
        System.assert(emailTemplate4.equals(emailTemplate3));
        System.assert(emailTemplate3.equals(emailTemplate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmailTemplate emailTemplate1 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate2 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate3 = new OASEmailTemplate();
        OASEmailTemplate emailTemplate4 = new OASEmailTemplate();

        System.assert(emailTemplate1.equals(emailTemplate2));
        System.assert(emailTemplate2.equals(emailTemplate1));
        System.assert(emailTemplate3.equals(emailTemplate4));
        System.assert(emailTemplate4.equals(emailTemplate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmailTemplate emailTemplate1 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate2 = new OASEmailTemplate();

        System.assertEquals(false, emailTemplate1.equals('foo'));
        System.assertEquals(false, emailTemplate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmailTemplate emailTemplate1 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate2 = new OASEmailTemplate();
        OASEmailTemplate emailTemplate3;

        System.assertEquals(false, emailTemplate1.equals(emailTemplate3));
        System.assertEquals(false, emailTemplate2.equals(emailTemplate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmailTemplate emailTemplate1 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate2 = new OASEmailTemplate();

        System.assertEquals(emailTemplate1.hashCode(), emailTemplate1.hashCode());
        System.assertEquals(emailTemplate2.hashCode(), emailTemplate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmailTemplate emailTemplate1 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate2 = OASEmailTemplate.getExample();
        OASEmailTemplate emailTemplate3 = new OASEmailTemplate();
        OASEmailTemplate emailTemplate4 = new OASEmailTemplate();

        System.assert(emailTemplate1.equals(emailTemplate2));
        System.assert(emailTemplate3.equals(emailTemplate4));
        System.assertEquals(emailTemplate1.hashCode(), emailTemplate2.hashCode());
        System.assertEquals(emailTemplate3.hashCode(), emailTemplate4.hashCode());
    }
}
