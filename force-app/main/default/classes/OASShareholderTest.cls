@isTest
private class OASShareholderTest {
    @isTest
    private static void equalsSameInstance() {
        OASShareholder shareholder1 = OASShareholder.getExample();
        OASShareholder shareholder2 = shareholder1;
        OASShareholder shareholder3 = new OASShareholder();
        OASShareholder shareholder4 = shareholder3;

        System.assert(shareholder1.equals(shareholder2));
        System.assert(shareholder2.equals(shareholder1));
        System.assert(shareholder1.equals(shareholder1));
        System.assert(shareholder3.equals(shareholder4));
        System.assert(shareholder4.equals(shareholder3));
        System.assert(shareholder3.equals(shareholder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShareholder shareholder1 = OASShareholder.getExample();
        OASShareholder shareholder2 = OASShareholder.getExample();
        OASShareholder shareholder3 = new OASShareholder();
        OASShareholder shareholder4 = new OASShareholder();

        System.assert(shareholder1.equals(shareholder2));
        System.assert(shareholder2.equals(shareholder1));
        System.assert(shareholder3.equals(shareholder4));
        System.assert(shareholder4.equals(shareholder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShareholder shareholder1 = OASShareholder.getExample();
        OASShareholder shareholder2 = new OASShareholder();

        System.assertEquals(false, shareholder1.equals('foo'));
        System.assertEquals(false, shareholder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShareholder shareholder1 = OASShareholder.getExample();
        OASShareholder shareholder2 = new OASShareholder();
        OASShareholder shareholder3;

        System.assertEquals(false, shareholder1.equals(shareholder3));
        System.assertEquals(false, shareholder2.equals(shareholder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShareholder shareholder1 = OASShareholder.getExample();
        OASShareholder shareholder2 = new OASShareholder();

        System.assertEquals(shareholder1.hashCode(), shareholder1.hashCode());
        System.assertEquals(shareholder2.hashCode(), shareholder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShareholder shareholder1 = OASShareholder.getExample();
        OASShareholder shareholder2 = OASShareholder.getExample();
        OASShareholder shareholder3 = new OASShareholder();
        OASShareholder shareholder4 = new OASShareholder();

        System.assert(shareholder1.equals(shareholder2));
        System.assert(shareholder3.equals(shareholder4));
        System.assertEquals(shareholder1.hashCode(), shareholder2.hashCode());
        System.assertEquals(shareholder3.hashCode(), shareholder4.hashCode());
    }
}
