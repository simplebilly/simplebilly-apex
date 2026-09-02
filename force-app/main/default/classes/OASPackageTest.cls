@isTest
private class OASPackageTest {
    @isTest
    private static void equalsSameInstance() {
        OASPackage r_package1 = OASPackage.getExample();
        OASPackage r_package2 = r_package1;
        OASPackage r_package3 = new OASPackage();
        OASPackage r_package4 = r_package3;

        System.assert(r_package1.equals(r_package2));
        System.assert(r_package2.equals(r_package1));
        System.assert(r_package1.equals(r_package1));
        System.assert(r_package3.equals(r_package4));
        System.assert(r_package4.equals(r_package3));
        System.assert(r_package3.equals(r_package3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPackage r_package1 = OASPackage.getExample();
        OASPackage r_package2 = OASPackage.getExample();
        OASPackage r_package3 = new OASPackage();
        OASPackage r_package4 = new OASPackage();

        System.assert(r_package1.equals(r_package2));
        System.assert(r_package2.equals(r_package1));
        System.assert(r_package3.equals(r_package4));
        System.assert(r_package4.equals(r_package3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPackage r_package1 = OASPackage.getExample();
        OASPackage r_package2 = new OASPackage();

        System.assertEquals(false, r_package1.equals('foo'));
        System.assertEquals(false, r_package2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPackage r_package1 = OASPackage.getExample();
        OASPackage r_package2 = new OASPackage();
        OASPackage r_package3;

        System.assertEquals(false, r_package1.equals(r_package3));
        System.assertEquals(false, r_package2.equals(r_package3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPackage r_package1 = OASPackage.getExample();
        OASPackage r_package2 = new OASPackage();

        System.assertEquals(r_package1.hashCode(), r_package1.hashCode());
        System.assertEquals(r_package2.hashCode(), r_package2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPackage r_package1 = OASPackage.getExample();
        OASPackage r_package2 = OASPackage.getExample();
        OASPackage r_package3 = new OASPackage();
        OASPackage r_package4 = new OASPackage();

        System.assert(r_package1.equals(r_package2));
        System.assert(r_package3.equals(r_package4));
        System.assertEquals(r_package1.hashCode(), r_package2.hashCode());
        System.assertEquals(r_package3.hashCode(), r_package4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPackage r_package = new OASPackage();
        Map<String, String> x-property-mappings = r_package.getx-property-mappings();
        System.assertEquals('heightCm', x-property-mappings.get('height_cm'));
        System.assertEquals('lengthCm', x-property-mappings.get('length_cm'));
        System.assertEquals('weightKg', x-property-mappings.get('weight_kg'));
        System.assertEquals('widthCm', x-property-mappings.get('width_cm'));
    }
}
