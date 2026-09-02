@isTest
private class OASSuitabilityResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASSuitabilityResult suitabilityResult1 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult2 = suitabilityResult1;
        OASSuitabilityResult suitabilityResult3 = new OASSuitabilityResult();
        OASSuitabilityResult suitabilityResult4 = suitabilityResult3;

        System.assert(suitabilityResult1.equals(suitabilityResult2));
        System.assert(suitabilityResult2.equals(suitabilityResult1));
        System.assert(suitabilityResult1.equals(suitabilityResult1));
        System.assert(suitabilityResult3.equals(suitabilityResult4));
        System.assert(suitabilityResult4.equals(suitabilityResult3));
        System.assert(suitabilityResult3.equals(suitabilityResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSuitabilityResult suitabilityResult1 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult2 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult3 = new OASSuitabilityResult();
        OASSuitabilityResult suitabilityResult4 = new OASSuitabilityResult();

        System.assert(suitabilityResult1.equals(suitabilityResult2));
        System.assert(suitabilityResult2.equals(suitabilityResult1));
        System.assert(suitabilityResult3.equals(suitabilityResult4));
        System.assert(suitabilityResult4.equals(suitabilityResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSuitabilityResult suitabilityResult1 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult2 = new OASSuitabilityResult();

        System.assertEquals(false, suitabilityResult1.equals('foo'));
        System.assertEquals(false, suitabilityResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSuitabilityResult suitabilityResult1 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult2 = new OASSuitabilityResult();
        OASSuitabilityResult suitabilityResult3;

        System.assertEquals(false, suitabilityResult1.equals(suitabilityResult3));
        System.assertEquals(false, suitabilityResult2.equals(suitabilityResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSuitabilityResult suitabilityResult1 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult2 = new OASSuitabilityResult();

        System.assertEquals(suitabilityResult1.hashCode(), suitabilityResult1.hashCode());
        System.assertEquals(suitabilityResult2.hashCode(), suitabilityResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSuitabilityResult suitabilityResult1 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult2 = OASSuitabilityResult.getExample();
        OASSuitabilityResult suitabilityResult3 = new OASSuitabilityResult();
        OASSuitabilityResult suitabilityResult4 = new OASSuitabilityResult();

        System.assert(suitabilityResult1.equals(suitabilityResult2));
        System.assert(suitabilityResult3.equals(suitabilityResult4));
        System.assertEquals(suitabilityResult1.hashCode(), suitabilityResult2.hashCode());
        System.assertEquals(suitabilityResult3.hashCode(), suitabilityResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSuitabilityResult suitabilityResult = new OASSuitabilityResult();
        Map<String, String> x-property-mappings = suitabilityResult.getx-property-mappings();
        System.assertEquals('recommendedBox', x-property-mappings.get('recommended_box'));
        System.assertEquals('requiresInsurance', x-property-mappings.get('requires_insurance'));
        System.assertEquals('totalValue', x-property-mappings.get('total_value'));
        System.assertEquals('totalWeightKg', x-property-mappings.get('total_weight_kg'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSuitabilityResult suitabilityResult = new OASSuitabilityResult();
        System.assertEquals(new List<OASMethodSuitability>(), suitabilityResult.methods);
        System.assertEquals(null, suitabilityResult.recommendedBox);
        System.assertEquals(null, suitabilityResult.requiresInsurance);
        System.assertEquals(null, suitabilityResult.totalValue);
        System.assertEquals(null, suitabilityResult.totalWeightKg);
    }
}
