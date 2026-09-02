@isTest
private class OASPostingCategoryCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPostingCategoryCreate postingCategoryCreate1 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate2 = postingCategoryCreate1;
        OASPostingCategoryCreate postingCategoryCreate3 = new OASPostingCategoryCreate();
        OASPostingCategoryCreate postingCategoryCreate4 = postingCategoryCreate3;

        System.assert(postingCategoryCreate1.equals(postingCategoryCreate2));
        System.assert(postingCategoryCreate2.equals(postingCategoryCreate1));
        System.assert(postingCategoryCreate1.equals(postingCategoryCreate1));
        System.assert(postingCategoryCreate3.equals(postingCategoryCreate4));
        System.assert(postingCategoryCreate4.equals(postingCategoryCreate3));
        System.assert(postingCategoryCreate3.equals(postingCategoryCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPostingCategoryCreate postingCategoryCreate1 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate2 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate3 = new OASPostingCategoryCreate();
        OASPostingCategoryCreate postingCategoryCreate4 = new OASPostingCategoryCreate();

        System.assert(postingCategoryCreate1.equals(postingCategoryCreate2));
        System.assert(postingCategoryCreate2.equals(postingCategoryCreate1));
        System.assert(postingCategoryCreate3.equals(postingCategoryCreate4));
        System.assert(postingCategoryCreate4.equals(postingCategoryCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPostingCategoryCreate postingCategoryCreate1 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate2 = new OASPostingCategoryCreate();

        System.assertEquals(false, postingCategoryCreate1.equals('foo'));
        System.assertEquals(false, postingCategoryCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPostingCategoryCreate postingCategoryCreate1 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate2 = new OASPostingCategoryCreate();
        OASPostingCategoryCreate postingCategoryCreate3;

        System.assertEquals(false, postingCategoryCreate1.equals(postingCategoryCreate3));
        System.assertEquals(false, postingCategoryCreate2.equals(postingCategoryCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPostingCategoryCreate postingCategoryCreate1 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate2 = new OASPostingCategoryCreate();

        System.assertEquals(postingCategoryCreate1.hashCode(), postingCategoryCreate1.hashCode());
        System.assertEquals(postingCategoryCreate2.hashCode(), postingCategoryCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPostingCategoryCreate postingCategoryCreate1 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate2 = OASPostingCategoryCreate.getExample();
        OASPostingCategoryCreate postingCategoryCreate3 = new OASPostingCategoryCreate();
        OASPostingCategoryCreate postingCategoryCreate4 = new OASPostingCategoryCreate();

        System.assert(postingCategoryCreate1.equals(postingCategoryCreate2));
        System.assert(postingCategoryCreate3.equals(postingCategoryCreate4));
        System.assertEquals(postingCategoryCreate1.hashCode(), postingCategoryCreate2.hashCode());
        System.assertEquals(postingCategoryCreate3.hashCode(), postingCategoryCreate4.hashCode());
    }
}
