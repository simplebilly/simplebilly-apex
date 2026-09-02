@isTest
private class OASAttachmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASAttachment attachment1 = OASAttachment.getExample();
        OASAttachment attachment2 = attachment1;
        OASAttachment attachment3 = new OASAttachment();
        OASAttachment attachment4 = attachment3;

        System.assert(attachment1.equals(attachment2));
        System.assert(attachment2.equals(attachment1));
        System.assert(attachment1.equals(attachment1));
        System.assert(attachment3.equals(attachment4));
        System.assert(attachment4.equals(attachment3));
        System.assert(attachment3.equals(attachment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAttachment attachment1 = OASAttachment.getExample();
        OASAttachment attachment2 = OASAttachment.getExample();
        OASAttachment attachment3 = new OASAttachment();
        OASAttachment attachment4 = new OASAttachment();

        System.assert(attachment1.equals(attachment2));
        System.assert(attachment2.equals(attachment1));
        System.assert(attachment3.equals(attachment4));
        System.assert(attachment4.equals(attachment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAttachment attachment1 = OASAttachment.getExample();
        OASAttachment attachment2 = new OASAttachment();

        System.assertEquals(false, attachment1.equals('foo'));
        System.assertEquals(false, attachment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAttachment attachment1 = OASAttachment.getExample();
        OASAttachment attachment2 = new OASAttachment();
        OASAttachment attachment3;

        System.assertEquals(false, attachment1.equals(attachment3));
        System.assertEquals(false, attachment2.equals(attachment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAttachment attachment1 = OASAttachment.getExample();
        OASAttachment attachment2 = new OASAttachment();

        System.assertEquals(attachment1.hashCode(), attachment1.hashCode());
        System.assertEquals(attachment2.hashCode(), attachment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAttachment attachment1 = OASAttachment.getExample();
        OASAttachment attachment2 = OASAttachment.getExample();
        OASAttachment attachment3 = new OASAttachment();
        OASAttachment attachment4 = new OASAttachment();

        System.assert(attachment1.equals(attachment2));
        System.assert(attachment3.equals(attachment4));
        System.assertEquals(attachment1.hashCode(), attachment2.hashCode());
        System.assertEquals(attachment3.hashCode(), attachment4.hashCode());
    }
}
