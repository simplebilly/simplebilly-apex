@isTest
private class OASOssDependencyTest {
    @isTest
    private static void equalsSameInstance() {
        OASOssDependency ossDependency1 = OASOssDependency.getExample();
        OASOssDependency ossDependency2 = ossDependency1;
        OASOssDependency ossDependency3 = new OASOssDependency();
        OASOssDependency ossDependency4 = ossDependency3;

        System.assert(ossDependency1.equals(ossDependency2));
        System.assert(ossDependency2.equals(ossDependency1));
        System.assert(ossDependency1.equals(ossDependency1));
        System.assert(ossDependency3.equals(ossDependency4));
        System.assert(ossDependency4.equals(ossDependency3));
        System.assert(ossDependency3.equals(ossDependency3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOssDependency ossDependency1 = OASOssDependency.getExample();
        OASOssDependency ossDependency2 = OASOssDependency.getExample();
        OASOssDependency ossDependency3 = new OASOssDependency();
        OASOssDependency ossDependency4 = new OASOssDependency();

        System.assert(ossDependency1.equals(ossDependency2));
        System.assert(ossDependency2.equals(ossDependency1));
        System.assert(ossDependency3.equals(ossDependency4));
        System.assert(ossDependency4.equals(ossDependency3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOssDependency ossDependency1 = OASOssDependency.getExample();
        OASOssDependency ossDependency2 = new OASOssDependency();

        System.assertEquals(false, ossDependency1.equals('foo'));
        System.assertEquals(false, ossDependency2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOssDependency ossDependency1 = OASOssDependency.getExample();
        OASOssDependency ossDependency2 = new OASOssDependency();
        OASOssDependency ossDependency3;

        System.assertEquals(false, ossDependency1.equals(ossDependency3));
        System.assertEquals(false, ossDependency2.equals(ossDependency3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOssDependency ossDependency1 = OASOssDependency.getExample();
        OASOssDependency ossDependency2 = new OASOssDependency();

        System.assertEquals(ossDependency1.hashCode(), ossDependency1.hashCode());
        System.assertEquals(ossDependency2.hashCode(), ossDependency2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOssDependency ossDependency1 = OASOssDependency.getExample();
        OASOssDependency ossDependency2 = OASOssDependency.getExample();
        OASOssDependency ossDependency3 = new OASOssDependency();
        OASOssDependency ossDependency4 = new OASOssDependency();

        System.assert(ossDependency1.equals(ossDependency2));
        System.assert(ossDependency3.equals(ossDependency4));
        System.assertEquals(ossDependency1.hashCode(), ossDependency2.hashCode());
        System.assertEquals(ossDependency3.hashCode(), ossDependency4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOssDependency ossDependency = new OASOssDependency();
        Map<String, String> x-property-mappings = ossDependency.getx-property-mappings();
        System.assertEquals('dependencyType', x-property-mappings.get('dependency_type'));
    }
}
