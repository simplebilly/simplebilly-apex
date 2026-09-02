@isTest
private class OASAttachmentCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASAttachmentCreate attachmentCreate1 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate2 = attachmentCreate1;
        OASAttachmentCreate attachmentCreate3 = new OASAttachmentCreate();
        OASAttachmentCreate attachmentCreate4 = attachmentCreate3;

        System.assert(attachmentCreate1.equals(attachmentCreate2));
        System.assert(attachmentCreate2.equals(attachmentCreate1));
        System.assert(attachmentCreate1.equals(attachmentCreate1));
        System.assert(attachmentCreate3.equals(attachmentCreate4));
        System.assert(attachmentCreate4.equals(attachmentCreate3));
        System.assert(attachmentCreate3.equals(attachmentCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAttachmentCreate attachmentCreate1 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate2 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate3 = new OASAttachmentCreate();
        OASAttachmentCreate attachmentCreate4 = new OASAttachmentCreate();

        System.assert(attachmentCreate1.equals(attachmentCreate2));
        System.assert(attachmentCreate2.equals(attachmentCreate1));
        System.assert(attachmentCreate3.equals(attachmentCreate4));
        System.assert(attachmentCreate4.equals(attachmentCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAttachmentCreate attachmentCreate1 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate2 = new OASAttachmentCreate();

        System.assertEquals(false, attachmentCreate1.equals('foo'));
        System.assertEquals(false, attachmentCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAttachmentCreate attachmentCreate1 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate2 = new OASAttachmentCreate();
        OASAttachmentCreate attachmentCreate3;

        System.assertEquals(false, attachmentCreate1.equals(attachmentCreate3));
        System.assertEquals(false, attachmentCreate2.equals(attachmentCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAttachmentCreate attachmentCreate1 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate2 = new OASAttachmentCreate();

        System.assertEquals(attachmentCreate1.hashCode(), attachmentCreate1.hashCode());
        System.assertEquals(attachmentCreate2.hashCode(), attachmentCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAttachmentCreate attachmentCreate1 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate2 = OASAttachmentCreate.getExample();
        OASAttachmentCreate attachmentCreate3 = new OASAttachmentCreate();
        OASAttachmentCreate attachmentCreate4 = new OASAttachmentCreate();

        System.assert(attachmentCreate1.equals(attachmentCreate2));
        System.assert(attachmentCreate3.equals(attachmentCreate4));
        System.assertEquals(attachmentCreate1.hashCode(), attachmentCreate2.hashCode());
        System.assertEquals(attachmentCreate3.hashCode(), attachmentCreate4.hashCode());
    }
}
