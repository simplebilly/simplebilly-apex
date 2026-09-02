@isTest
private class OASPublicPostingTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicPosting publicPosting1 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting2 = publicPosting1;
        OASPublicPosting publicPosting3 = new OASPublicPosting();
        OASPublicPosting publicPosting4 = publicPosting3;

        System.assert(publicPosting1.equals(publicPosting2));
        System.assert(publicPosting2.equals(publicPosting1));
        System.assert(publicPosting1.equals(publicPosting1));
        System.assert(publicPosting3.equals(publicPosting4));
        System.assert(publicPosting4.equals(publicPosting3));
        System.assert(publicPosting3.equals(publicPosting3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicPosting publicPosting1 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting2 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting3 = new OASPublicPosting();
        OASPublicPosting publicPosting4 = new OASPublicPosting();

        System.assert(publicPosting1.equals(publicPosting2));
        System.assert(publicPosting2.equals(publicPosting1));
        System.assert(publicPosting3.equals(publicPosting4));
        System.assert(publicPosting4.equals(publicPosting3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicPosting publicPosting1 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting2 = new OASPublicPosting();

        System.assertEquals(false, publicPosting1.equals('foo'));
        System.assertEquals(false, publicPosting2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicPosting publicPosting1 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting2 = new OASPublicPosting();
        OASPublicPosting publicPosting3;

        System.assertEquals(false, publicPosting1.equals(publicPosting3));
        System.assertEquals(false, publicPosting2.equals(publicPosting3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicPosting publicPosting1 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting2 = new OASPublicPosting();

        System.assertEquals(publicPosting1.hashCode(), publicPosting1.hashCode());
        System.assertEquals(publicPosting2.hashCode(), publicPosting2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicPosting publicPosting1 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting2 = OASPublicPosting.getExample();
        OASPublicPosting publicPosting3 = new OASPublicPosting();
        OASPublicPosting publicPosting4 = new OASPublicPosting();

        System.assert(publicPosting1.equals(publicPosting2));
        System.assert(publicPosting3.equals(publicPosting4));
        System.assertEquals(publicPosting1.hashCode(), publicPosting2.hashCode());
        System.assertEquals(publicPosting3.hashCode(), publicPosting4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicPosting publicPosting = new OASPublicPosting();
        Map<String, String> x-property-mappings = publicPosting.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPublicPosting publicPosting = new OASPublicPosting();
        System.assertEquals(new List<String>(), publicPosting.requiredSkills);
        System.assertEquals(null, publicPosting.r_currency);
        System.assertEquals(null, publicPosting.description);
        System.assertEquals(null, publicPosting.employmentType);
        System.assertEquals(null, publicPosting.id);
        System.assertEquals(null, publicPosting.location);
        System.assertEquals(null, publicPosting.remote);
        System.assertEquals(null, publicPosting.requirements);
        System.assertEquals(null, publicPosting.salaryMax);
        System.assertEquals(null, publicPosting.salaryMin);
        System.assertEquals(null, publicPosting.title);
    }
}
