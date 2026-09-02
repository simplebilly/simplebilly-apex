@isTest
private class OASPostingCategoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASPostingCategory postingCategory1 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory2 = postingCategory1;
        OASPostingCategory postingCategory3 = new OASPostingCategory();
        OASPostingCategory postingCategory4 = postingCategory3;

        System.assert(postingCategory1.equals(postingCategory2));
        System.assert(postingCategory2.equals(postingCategory1));
        System.assert(postingCategory1.equals(postingCategory1));
        System.assert(postingCategory3.equals(postingCategory4));
        System.assert(postingCategory4.equals(postingCategory3));
        System.assert(postingCategory3.equals(postingCategory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPostingCategory postingCategory1 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory2 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory3 = new OASPostingCategory();
        OASPostingCategory postingCategory4 = new OASPostingCategory();

        System.assert(postingCategory1.equals(postingCategory2));
        System.assert(postingCategory2.equals(postingCategory1));
        System.assert(postingCategory3.equals(postingCategory4));
        System.assert(postingCategory4.equals(postingCategory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPostingCategory postingCategory1 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory2 = new OASPostingCategory();

        System.assertEquals(false, postingCategory1.equals('foo'));
        System.assertEquals(false, postingCategory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPostingCategory postingCategory1 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory2 = new OASPostingCategory();
        OASPostingCategory postingCategory3;

        System.assertEquals(false, postingCategory1.equals(postingCategory3));
        System.assertEquals(false, postingCategory2.equals(postingCategory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPostingCategory postingCategory1 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory2 = new OASPostingCategory();

        System.assertEquals(postingCategory1.hashCode(), postingCategory1.hashCode());
        System.assertEquals(postingCategory2.hashCode(), postingCategory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPostingCategory postingCategory1 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory2 = OASPostingCategory.getExample();
        OASPostingCategory postingCategory3 = new OASPostingCategory();
        OASPostingCategory postingCategory4 = new OASPostingCategory();

        System.assert(postingCategory1.equals(postingCategory2));
        System.assert(postingCategory3.equals(postingCategory4));
        System.assertEquals(postingCategory1.hashCode(), postingCategory2.hashCode());
        System.assertEquals(postingCategory3.hashCode(), postingCategory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPostingCategory postingCategory = new OASPostingCategory();
        Map<String, String> x-property-mappings = postingCategory.getx-property-mappings();
        System.assertEquals('accountNumber', x-property-mappings.get('account_number'));
        System.assertEquals('accountNumberSkr03', x-property-mappings.get('account_number_skr03'));
        System.assertEquals('accountNumberSkr04', x-property-mappings.get('account_number_skr04'));
        System.assertEquals('accountNumberSkr49', x-property-mappings.get('account_number_skr49'));
        System.assertEquals('categoryId', x-property-mappings.get('category_id'));
        System.assertEquals('defaultVatRate', x-property-mappings.get('default_vat_rate'));
        System.assertEquals('eksCategory', x-property-mappings.get('eks_category'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('isSystem', x-property-mappings.get('is_system'));
        System.assertEquals('skrVersion', x-property-mappings.get('skr_version'));
    }
}
