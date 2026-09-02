@isTest
private class OASCreateEmissionTargetTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateEmissionTarget createEmissionTarget1 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget2 = createEmissionTarget1;
        OASCreateEmissionTarget createEmissionTarget3 = new OASCreateEmissionTarget();
        OASCreateEmissionTarget createEmissionTarget4 = createEmissionTarget3;

        System.assert(createEmissionTarget1.equals(createEmissionTarget2));
        System.assert(createEmissionTarget2.equals(createEmissionTarget1));
        System.assert(createEmissionTarget1.equals(createEmissionTarget1));
        System.assert(createEmissionTarget3.equals(createEmissionTarget4));
        System.assert(createEmissionTarget4.equals(createEmissionTarget3));
        System.assert(createEmissionTarget3.equals(createEmissionTarget3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateEmissionTarget createEmissionTarget1 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget2 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget3 = new OASCreateEmissionTarget();
        OASCreateEmissionTarget createEmissionTarget4 = new OASCreateEmissionTarget();

        System.assert(createEmissionTarget1.equals(createEmissionTarget2));
        System.assert(createEmissionTarget2.equals(createEmissionTarget1));
        System.assert(createEmissionTarget3.equals(createEmissionTarget4));
        System.assert(createEmissionTarget4.equals(createEmissionTarget3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateEmissionTarget createEmissionTarget1 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget2 = new OASCreateEmissionTarget();

        System.assertEquals(false, createEmissionTarget1.equals('foo'));
        System.assertEquals(false, createEmissionTarget2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateEmissionTarget createEmissionTarget1 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget2 = new OASCreateEmissionTarget();
        OASCreateEmissionTarget createEmissionTarget3;

        System.assertEquals(false, createEmissionTarget1.equals(createEmissionTarget3));
        System.assertEquals(false, createEmissionTarget2.equals(createEmissionTarget3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateEmissionTarget createEmissionTarget1 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget2 = new OASCreateEmissionTarget();

        System.assertEquals(createEmissionTarget1.hashCode(), createEmissionTarget1.hashCode());
        System.assertEquals(createEmissionTarget2.hashCode(), createEmissionTarget2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateEmissionTarget createEmissionTarget1 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget2 = OASCreateEmissionTarget.getExample();
        OASCreateEmissionTarget createEmissionTarget3 = new OASCreateEmissionTarget();
        OASCreateEmissionTarget createEmissionTarget4 = new OASCreateEmissionTarget();

        System.assert(createEmissionTarget1.equals(createEmissionTarget2));
        System.assert(createEmissionTarget3.equals(createEmissionTarget4));
        System.assertEquals(createEmissionTarget1.hashCode(), createEmissionTarget2.hashCode());
        System.assertEquals(createEmissionTarget3.hashCode(), createEmissionTarget4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateEmissionTarget createEmissionTarget = new OASCreateEmissionTarget();
        Map<String, String> x-property-mappings = createEmissionTarget.getx-property-mappings();
        System.assertEquals('baseValue', x-property-mappings.get('base_value'));
        System.assertEquals('baseYear', x-property-mappings.get('base_year'));
        System.assertEquals('targetValue', x-property-mappings.get('target_value'));
        System.assertEquals('targetYear', x-property-mappings.get('target_year'));
    }
}
