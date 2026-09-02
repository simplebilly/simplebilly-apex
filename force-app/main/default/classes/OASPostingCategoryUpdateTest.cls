@isTest
private class OASPostingCategoryUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPostingCategoryUpdate postingCategoryUpdate1 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate2 = postingCategoryUpdate1;
        OASPostingCategoryUpdate postingCategoryUpdate3 = new OASPostingCategoryUpdate();
        OASPostingCategoryUpdate postingCategoryUpdate4 = postingCategoryUpdate3;

        System.assert(postingCategoryUpdate1.equals(postingCategoryUpdate2));
        System.assert(postingCategoryUpdate2.equals(postingCategoryUpdate1));
        System.assert(postingCategoryUpdate1.equals(postingCategoryUpdate1));
        System.assert(postingCategoryUpdate3.equals(postingCategoryUpdate4));
        System.assert(postingCategoryUpdate4.equals(postingCategoryUpdate3));
        System.assert(postingCategoryUpdate3.equals(postingCategoryUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPostingCategoryUpdate postingCategoryUpdate1 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate2 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate3 = new OASPostingCategoryUpdate();
        OASPostingCategoryUpdate postingCategoryUpdate4 = new OASPostingCategoryUpdate();

        System.assert(postingCategoryUpdate1.equals(postingCategoryUpdate2));
        System.assert(postingCategoryUpdate2.equals(postingCategoryUpdate1));
        System.assert(postingCategoryUpdate3.equals(postingCategoryUpdate4));
        System.assert(postingCategoryUpdate4.equals(postingCategoryUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPostingCategoryUpdate postingCategoryUpdate1 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate2 = new OASPostingCategoryUpdate();

        System.assertEquals(false, postingCategoryUpdate1.equals('foo'));
        System.assertEquals(false, postingCategoryUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPostingCategoryUpdate postingCategoryUpdate1 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate2 = new OASPostingCategoryUpdate();
        OASPostingCategoryUpdate postingCategoryUpdate3;

        System.assertEquals(false, postingCategoryUpdate1.equals(postingCategoryUpdate3));
        System.assertEquals(false, postingCategoryUpdate2.equals(postingCategoryUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPostingCategoryUpdate postingCategoryUpdate1 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate2 = new OASPostingCategoryUpdate();

        System.assertEquals(postingCategoryUpdate1.hashCode(), postingCategoryUpdate1.hashCode());
        System.assertEquals(postingCategoryUpdate2.hashCode(), postingCategoryUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPostingCategoryUpdate postingCategoryUpdate1 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate2 = OASPostingCategoryUpdate.getExample();
        OASPostingCategoryUpdate postingCategoryUpdate3 = new OASPostingCategoryUpdate();
        OASPostingCategoryUpdate postingCategoryUpdate4 = new OASPostingCategoryUpdate();

        System.assert(postingCategoryUpdate1.equals(postingCategoryUpdate2));
        System.assert(postingCategoryUpdate3.equals(postingCategoryUpdate4));
        System.assertEquals(postingCategoryUpdate1.hashCode(), postingCategoryUpdate2.hashCode());
        System.assertEquals(postingCategoryUpdate3.hashCode(), postingCategoryUpdate4.hashCode());
    }
}
