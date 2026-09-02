@isTest
private class OASCategoryTotalTest {
    @isTest
    private static void equalsSameInstance() {
        OASCategoryTotal categoryTotal1 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal2 = categoryTotal1;
        OASCategoryTotal categoryTotal3 = new OASCategoryTotal();
        OASCategoryTotal categoryTotal4 = categoryTotal3;

        System.assert(categoryTotal1.equals(categoryTotal2));
        System.assert(categoryTotal2.equals(categoryTotal1));
        System.assert(categoryTotal1.equals(categoryTotal1));
        System.assert(categoryTotal3.equals(categoryTotal4));
        System.assert(categoryTotal4.equals(categoryTotal3));
        System.assert(categoryTotal3.equals(categoryTotal3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCategoryTotal categoryTotal1 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal2 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal3 = new OASCategoryTotal();
        OASCategoryTotal categoryTotal4 = new OASCategoryTotal();

        System.assert(categoryTotal1.equals(categoryTotal2));
        System.assert(categoryTotal2.equals(categoryTotal1));
        System.assert(categoryTotal3.equals(categoryTotal4));
        System.assert(categoryTotal4.equals(categoryTotal3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCategoryTotal categoryTotal1 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal2 = new OASCategoryTotal();

        System.assertEquals(false, categoryTotal1.equals('foo'));
        System.assertEquals(false, categoryTotal2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCategoryTotal categoryTotal1 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal2 = new OASCategoryTotal();
        OASCategoryTotal categoryTotal3;

        System.assertEquals(false, categoryTotal1.equals(categoryTotal3));
        System.assertEquals(false, categoryTotal2.equals(categoryTotal3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCategoryTotal categoryTotal1 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal2 = new OASCategoryTotal();

        System.assertEquals(categoryTotal1.hashCode(), categoryTotal1.hashCode());
        System.assertEquals(categoryTotal2.hashCode(), categoryTotal2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCategoryTotal categoryTotal1 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal2 = OASCategoryTotal.getExample();
        OASCategoryTotal categoryTotal3 = new OASCategoryTotal();
        OASCategoryTotal categoryTotal4 = new OASCategoryTotal();

        System.assert(categoryTotal1.equals(categoryTotal2));
        System.assert(categoryTotal3.equals(categoryTotal4));
        System.assertEquals(categoryTotal1.hashCode(), categoryTotal2.hashCode());
        System.assertEquals(categoryTotal3.hashCode(), categoryTotal4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCategoryTotal categoryTotal = new OASCategoryTotal();
        Map<String, String> x-property-mappings = categoryTotal.getx-property-mappings();
        System.assertEquals('categoryId', x-property-mappings.get('category_id'));
        System.assertEquals('sharePct', x-property-mappings.get('share_pct'));
    }
}
