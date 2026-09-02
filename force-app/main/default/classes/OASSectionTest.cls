@isTest
private class OASSectionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSection section1 = OASSection.getExample();
        OASSection section2 = section1;
        OASSection section3 = new OASSection();
        OASSection section4 = section3;

        System.assert(section1.equals(section2));
        System.assert(section2.equals(section1));
        System.assert(section1.equals(section1));
        System.assert(section3.equals(section4));
        System.assert(section4.equals(section3));
        System.assert(section3.equals(section3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSection section1 = OASSection.getExample();
        OASSection section2 = OASSection.getExample();
        OASSection section3 = new OASSection();
        OASSection section4 = new OASSection();

        System.assert(section1.equals(section2));
        System.assert(section2.equals(section1));
        System.assert(section3.equals(section4));
        System.assert(section4.equals(section3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSection section1 = OASSection.getExample();
        OASSection section2 = new OASSection();

        System.assertEquals(false, section1.equals('foo'));
        System.assertEquals(false, section2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSection section1 = OASSection.getExample();
        OASSection section2 = new OASSection();
        OASSection section3;

        System.assertEquals(false, section1.equals(section3));
        System.assertEquals(false, section2.equals(section3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSection section1 = OASSection.getExample();
        OASSection section2 = new OASSection();

        System.assertEquals(section1.hashCode(), section1.hashCode());
        System.assertEquals(section2.hashCode(), section2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSection section1 = OASSection.getExample();
        OASSection section2 = OASSection.getExample();
        OASSection section3 = new OASSection();
        OASSection section4 = new OASSection();

        System.assert(section1.equals(section2));
        System.assert(section3.equals(section4));
        System.assertEquals(section1.hashCode(), section2.hashCode());
        System.assertEquals(section3.hashCode(), section4.hashCode());
    }
}
