@isTest
private class OASEmissionFactorResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmissionFactorResponse emissionFactorResponse1 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse2 = emissionFactorResponse1;
        OASEmissionFactorResponse emissionFactorResponse3 = new OASEmissionFactorResponse();
        OASEmissionFactorResponse emissionFactorResponse4 = emissionFactorResponse3;

        System.assert(emissionFactorResponse1.equals(emissionFactorResponse2));
        System.assert(emissionFactorResponse2.equals(emissionFactorResponse1));
        System.assert(emissionFactorResponse1.equals(emissionFactorResponse1));
        System.assert(emissionFactorResponse3.equals(emissionFactorResponse4));
        System.assert(emissionFactorResponse4.equals(emissionFactorResponse3));
        System.assert(emissionFactorResponse3.equals(emissionFactorResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmissionFactorResponse emissionFactorResponse1 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse2 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse3 = new OASEmissionFactorResponse();
        OASEmissionFactorResponse emissionFactorResponse4 = new OASEmissionFactorResponse();

        System.assert(emissionFactorResponse1.equals(emissionFactorResponse2));
        System.assert(emissionFactorResponse2.equals(emissionFactorResponse1));
        System.assert(emissionFactorResponse3.equals(emissionFactorResponse4));
        System.assert(emissionFactorResponse4.equals(emissionFactorResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmissionFactorResponse emissionFactorResponse1 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse2 = new OASEmissionFactorResponse();

        System.assertEquals(false, emissionFactorResponse1.equals('foo'));
        System.assertEquals(false, emissionFactorResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmissionFactorResponse emissionFactorResponse1 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse2 = new OASEmissionFactorResponse();
        OASEmissionFactorResponse emissionFactorResponse3;

        System.assertEquals(false, emissionFactorResponse1.equals(emissionFactorResponse3));
        System.assertEquals(false, emissionFactorResponse2.equals(emissionFactorResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmissionFactorResponse emissionFactorResponse1 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse2 = new OASEmissionFactorResponse();

        System.assertEquals(emissionFactorResponse1.hashCode(), emissionFactorResponse1.hashCode());
        System.assertEquals(emissionFactorResponse2.hashCode(), emissionFactorResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmissionFactorResponse emissionFactorResponse1 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse2 = OASEmissionFactorResponse.getExample();
        OASEmissionFactorResponse emissionFactorResponse3 = new OASEmissionFactorResponse();
        OASEmissionFactorResponse emissionFactorResponse4 = new OASEmissionFactorResponse();

        System.assert(emissionFactorResponse1.equals(emissionFactorResponse2));
        System.assert(emissionFactorResponse3.equals(emissionFactorResponse4));
        System.assertEquals(emissionFactorResponse1.hashCode(), emissionFactorResponse2.hashCode());
        System.assertEquals(emissionFactorResponse3.hashCode(), emissionFactorResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmissionFactorResponse emissionFactorResponse = new OASEmissionFactorResponse();
        Map<String, String> x-property-mappings = emissionFactorResponse.getx-property-mappings();
        System.assertEquals('categoryId', x-property-mappings.get('category_id'));
        System.assertEquals('kgCo2ePerUnit', x-property-mappings.get('kg_co2e_per_unit'));
        System.assertEquals('nameDe', x-property-mappings.get('name_de'));
    }
}
