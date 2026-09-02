@isTest
private class OASHebesatzLookupTest {
    @isTest
    private static void equalsSameInstance() {
        OASHebesatzLookup hebesatzLookup1 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup2 = hebesatzLookup1;
        OASHebesatzLookup hebesatzLookup3 = new OASHebesatzLookup();
        OASHebesatzLookup hebesatzLookup4 = hebesatzLookup3;

        System.assert(hebesatzLookup1.equals(hebesatzLookup2));
        System.assert(hebesatzLookup2.equals(hebesatzLookup1));
        System.assert(hebesatzLookup1.equals(hebesatzLookup1));
        System.assert(hebesatzLookup3.equals(hebesatzLookup4));
        System.assert(hebesatzLookup4.equals(hebesatzLookup3));
        System.assert(hebesatzLookup3.equals(hebesatzLookup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHebesatzLookup hebesatzLookup1 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup2 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup3 = new OASHebesatzLookup();
        OASHebesatzLookup hebesatzLookup4 = new OASHebesatzLookup();

        System.assert(hebesatzLookup1.equals(hebesatzLookup2));
        System.assert(hebesatzLookup2.equals(hebesatzLookup1));
        System.assert(hebesatzLookup3.equals(hebesatzLookup4));
        System.assert(hebesatzLookup4.equals(hebesatzLookup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHebesatzLookup hebesatzLookup1 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup2 = new OASHebesatzLookup();

        System.assertEquals(false, hebesatzLookup1.equals('foo'));
        System.assertEquals(false, hebesatzLookup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHebesatzLookup hebesatzLookup1 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup2 = new OASHebesatzLookup();
        OASHebesatzLookup hebesatzLookup3;

        System.assertEquals(false, hebesatzLookup1.equals(hebesatzLookup3));
        System.assertEquals(false, hebesatzLookup2.equals(hebesatzLookup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHebesatzLookup hebesatzLookup1 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup2 = new OASHebesatzLookup();

        System.assertEquals(hebesatzLookup1.hashCode(), hebesatzLookup1.hashCode());
        System.assertEquals(hebesatzLookup2.hashCode(), hebesatzLookup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHebesatzLookup hebesatzLookup1 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup2 = OASHebesatzLookup.getExample();
        OASHebesatzLookup hebesatzLookup3 = new OASHebesatzLookup();
        OASHebesatzLookup hebesatzLookup4 = new OASHebesatzLookup();

        System.assert(hebesatzLookup1.equals(hebesatzLookup2));
        System.assert(hebesatzLookup3.equals(hebesatzLookup4));
        System.assertEquals(hebesatzLookup1.hashCode(), hebesatzLookup2.hashCode());
        System.assertEquals(hebesatzLookup3.hashCode(), hebesatzLookup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASHebesatzLookup hebesatzLookup = new OASHebesatzLookup();
        Map<String, String> x-property-mappings = hebesatzLookup.getx-property-mappings();
        System.assertEquals('countryCode', x-property-mappings.get('country_code'));
        System.assertEquals('gemeindeName', x-property-mappings.get('gemeinde_name'));
        System.assertEquals('hebesatzGewerbesteuer', x-property-mappings.get('hebesatz_gewerbesteuer'));
        System.assertEquals('hebesatzGrundsteuerB', x-property-mappings.get('hebesatz_grundsteuer_b'));
        System.assertEquals('validFrom', x-property-mappings.get('valid_from'));
        System.assertEquals('validTo', x-property-mappings.get('valid_to'));
    }
}
