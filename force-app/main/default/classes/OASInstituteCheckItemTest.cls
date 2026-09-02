@isTest
private class OASInstituteCheckItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASInstituteCheckItem instituteCheckItem1 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem2 = instituteCheckItem1;
        OASInstituteCheckItem instituteCheckItem3 = new OASInstituteCheckItem();
        OASInstituteCheckItem instituteCheckItem4 = instituteCheckItem3;

        System.assert(instituteCheckItem1.equals(instituteCheckItem2));
        System.assert(instituteCheckItem2.equals(instituteCheckItem1));
        System.assert(instituteCheckItem1.equals(instituteCheckItem1));
        System.assert(instituteCheckItem3.equals(instituteCheckItem4));
        System.assert(instituteCheckItem4.equals(instituteCheckItem3));
        System.assert(instituteCheckItem3.equals(instituteCheckItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInstituteCheckItem instituteCheckItem1 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem2 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem3 = new OASInstituteCheckItem();
        OASInstituteCheckItem instituteCheckItem4 = new OASInstituteCheckItem();

        System.assert(instituteCheckItem1.equals(instituteCheckItem2));
        System.assert(instituteCheckItem2.equals(instituteCheckItem1));
        System.assert(instituteCheckItem3.equals(instituteCheckItem4));
        System.assert(instituteCheckItem4.equals(instituteCheckItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInstituteCheckItem instituteCheckItem1 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem2 = new OASInstituteCheckItem();

        System.assertEquals(false, instituteCheckItem1.equals('foo'));
        System.assertEquals(false, instituteCheckItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInstituteCheckItem instituteCheckItem1 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem2 = new OASInstituteCheckItem();
        OASInstituteCheckItem instituteCheckItem3;

        System.assertEquals(false, instituteCheckItem1.equals(instituteCheckItem3));
        System.assertEquals(false, instituteCheckItem2.equals(instituteCheckItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInstituteCheckItem instituteCheckItem1 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem2 = new OASInstituteCheckItem();

        System.assertEquals(instituteCheckItem1.hashCode(), instituteCheckItem1.hashCode());
        System.assertEquals(instituteCheckItem2.hashCode(), instituteCheckItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInstituteCheckItem instituteCheckItem1 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem2 = OASInstituteCheckItem.getExample();
        OASInstituteCheckItem instituteCheckItem3 = new OASInstituteCheckItem();
        OASInstituteCheckItem instituteCheckItem4 = new OASInstituteCheckItem();

        System.assert(instituteCheckItem1.equals(instituteCheckItem2));
        System.assert(instituteCheckItem3.equals(instituteCheckItem4));
        System.assertEquals(instituteCheckItem1.hashCode(), instituteCheckItem2.hashCode());
        System.assertEquals(instituteCheckItem3.hashCode(), instituteCheckItem4.hashCode());
    }
}
