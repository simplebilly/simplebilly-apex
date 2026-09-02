@isTest
private class OASShippingRateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingRate shippingRate1 = OASShippingRate.getExample();
        OASShippingRate shippingRate2 = shippingRate1;
        OASShippingRate shippingRate3 = new OASShippingRate();
        OASShippingRate shippingRate4 = shippingRate3;

        System.assert(shippingRate1.equals(shippingRate2));
        System.assert(shippingRate2.equals(shippingRate1));
        System.assert(shippingRate1.equals(shippingRate1));
        System.assert(shippingRate3.equals(shippingRate4));
        System.assert(shippingRate4.equals(shippingRate3));
        System.assert(shippingRate3.equals(shippingRate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingRate shippingRate1 = OASShippingRate.getExample();
        OASShippingRate shippingRate2 = OASShippingRate.getExample();
        OASShippingRate shippingRate3 = new OASShippingRate();
        OASShippingRate shippingRate4 = new OASShippingRate();

        System.assert(shippingRate1.equals(shippingRate2));
        System.assert(shippingRate2.equals(shippingRate1));
        System.assert(shippingRate3.equals(shippingRate4));
        System.assert(shippingRate4.equals(shippingRate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingRate shippingRate1 = OASShippingRate.getExample();
        OASShippingRate shippingRate2 = new OASShippingRate();

        System.assertEquals(false, shippingRate1.equals('foo'));
        System.assertEquals(false, shippingRate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingRate shippingRate1 = OASShippingRate.getExample();
        OASShippingRate shippingRate2 = new OASShippingRate();
        OASShippingRate shippingRate3;

        System.assertEquals(false, shippingRate1.equals(shippingRate3));
        System.assertEquals(false, shippingRate2.equals(shippingRate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingRate shippingRate1 = OASShippingRate.getExample();
        OASShippingRate shippingRate2 = new OASShippingRate();

        System.assertEquals(shippingRate1.hashCode(), shippingRate1.hashCode());
        System.assertEquals(shippingRate2.hashCode(), shippingRate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingRate shippingRate1 = OASShippingRate.getExample();
        OASShippingRate shippingRate2 = OASShippingRate.getExample();
        OASShippingRate shippingRate3 = new OASShippingRate();
        OASShippingRate shippingRate4 = new OASShippingRate();

        System.assert(shippingRate1.equals(shippingRate2));
        System.assert(shippingRate3.equals(shippingRate4));
        System.assertEquals(shippingRate1.hashCode(), shippingRate2.hashCode());
        System.assertEquals(shippingRate3.hashCode(), shippingRate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASShippingRate shippingRate = new OASShippingRate();
        Map<String, String> x-property-mappings = shippingRate.getx-property-mappings();
        System.assertEquals('crossBorderSurcharge', x-property-mappings.get('cross_border_surcharge'));
        System.assertEquals('destinationCountry', x-property-mappings.get('destination_country'));
        System.assertEquals('estimatedDays', x-property-mappings.get('estimated_days'));
        System.assertEquals('fromApi', x-property-mappings.get('from_api'));
        System.assertEquals('insuredValue', x-property-mappings.get('insured_value'));
        System.assertEquals('islandSurcharge', x-property-mappings.get('island_surcharge'));
        System.assertEquals('originCountry', x-property-mappings.get('origin_country'));
        System.assertEquals('volumeDiscount', x-property-mappings.get('volume_discount'));
        System.assertEquals('weightKg', x-property-mappings.get('weight_kg'));
    }
}
