@isTest
private class OASAttachmentVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASAttachmentVersion attachmentVersion1 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion2 = attachmentVersion1;
        OASAttachmentVersion attachmentVersion3 = new OASAttachmentVersion();
        OASAttachmentVersion attachmentVersion4 = attachmentVersion3;

        System.assert(attachmentVersion1.equals(attachmentVersion2));
        System.assert(attachmentVersion2.equals(attachmentVersion1));
        System.assert(attachmentVersion1.equals(attachmentVersion1));
        System.assert(attachmentVersion3.equals(attachmentVersion4));
        System.assert(attachmentVersion4.equals(attachmentVersion3));
        System.assert(attachmentVersion3.equals(attachmentVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAttachmentVersion attachmentVersion1 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion2 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion3 = new OASAttachmentVersion();
        OASAttachmentVersion attachmentVersion4 = new OASAttachmentVersion();

        System.assert(attachmentVersion1.equals(attachmentVersion2));
        System.assert(attachmentVersion2.equals(attachmentVersion1));
        System.assert(attachmentVersion3.equals(attachmentVersion4));
        System.assert(attachmentVersion4.equals(attachmentVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAttachmentVersion attachmentVersion1 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion2 = new OASAttachmentVersion();

        System.assertEquals(false, attachmentVersion1.equals('foo'));
        System.assertEquals(false, attachmentVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAttachmentVersion attachmentVersion1 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion2 = new OASAttachmentVersion();
        OASAttachmentVersion attachmentVersion3;

        System.assertEquals(false, attachmentVersion1.equals(attachmentVersion3));
        System.assertEquals(false, attachmentVersion2.equals(attachmentVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAttachmentVersion attachmentVersion1 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion2 = new OASAttachmentVersion();

        System.assertEquals(attachmentVersion1.hashCode(), attachmentVersion1.hashCode());
        System.assertEquals(attachmentVersion2.hashCode(), attachmentVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAttachmentVersion attachmentVersion1 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion2 = OASAttachmentVersion.getExample();
        OASAttachmentVersion attachmentVersion3 = new OASAttachmentVersion();
        OASAttachmentVersion attachmentVersion4 = new OASAttachmentVersion();

        System.assert(attachmentVersion1.equals(attachmentVersion2));
        System.assert(attachmentVersion3.equals(attachmentVersion4));
        System.assertEquals(attachmentVersion1.hashCode(), attachmentVersion2.hashCode());
        System.assertEquals(attachmentVersion3.hashCode(), attachmentVersion4.hashCode());
    }
}
