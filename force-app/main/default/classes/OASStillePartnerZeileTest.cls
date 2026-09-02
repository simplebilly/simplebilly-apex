@isTest
private class OASStillePartnerZeileTest {
    @isTest
    private static void equalsSameInstance() {
        OASStillePartnerZeile stillePartnerZeile1 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile2 = stillePartnerZeile1;
        OASStillePartnerZeile stillePartnerZeile3 = new OASStillePartnerZeile();
        OASStillePartnerZeile stillePartnerZeile4 = stillePartnerZeile3;

        System.assert(stillePartnerZeile1.equals(stillePartnerZeile2));
        System.assert(stillePartnerZeile2.equals(stillePartnerZeile1));
        System.assert(stillePartnerZeile1.equals(stillePartnerZeile1));
        System.assert(stillePartnerZeile3.equals(stillePartnerZeile4));
        System.assert(stillePartnerZeile4.equals(stillePartnerZeile3));
        System.assert(stillePartnerZeile3.equals(stillePartnerZeile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStillePartnerZeile stillePartnerZeile1 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile2 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile3 = new OASStillePartnerZeile();
        OASStillePartnerZeile stillePartnerZeile4 = new OASStillePartnerZeile();

        System.assert(stillePartnerZeile1.equals(stillePartnerZeile2));
        System.assert(stillePartnerZeile2.equals(stillePartnerZeile1));
        System.assert(stillePartnerZeile3.equals(stillePartnerZeile4));
        System.assert(stillePartnerZeile4.equals(stillePartnerZeile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStillePartnerZeile stillePartnerZeile1 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile2 = new OASStillePartnerZeile();

        System.assertEquals(false, stillePartnerZeile1.equals('foo'));
        System.assertEquals(false, stillePartnerZeile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStillePartnerZeile stillePartnerZeile1 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile2 = new OASStillePartnerZeile();
        OASStillePartnerZeile stillePartnerZeile3;

        System.assertEquals(false, stillePartnerZeile1.equals(stillePartnerZeile3));
        System.assertEquals(false, stillePartnerZeile2.equals(stillePartnerZeile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStillePartnerZeile stillePartnerZeile1 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile2 = new OASStillePartnerZeile();

        System.assertEquals(stillePartnerZeile1.hashCode(), stillePartnerZeile1.hashCode());
        System.assertEquals(stillePartnerZeile2.hashCode(), stillePartnerZeile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStillePartnerZeile stillePartnerZeile1 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile2 = OASStillePartnerZeile.getExample();
        OASStillePartnerZeile stillePartnerZeile3 = new OASStillePartnerZeile();
        OASStillePartnerZeile stillePartnerZeile4 = new OASStillePartnerZeile();

        System.assert(stillePartnerZeile1.equals(stillePartnerZeile2));
        System.assert(stillePartnerZeile3.equals(stillePartnerZeile4));
        System.assertEquals(stillePartnerZeile1.hashCode(), stillePartnerZeile2.hashCode());
        System.assertEquals(stillePartnerZeile3.hashCode(), stillePartnerZeile4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASStillePartnerZeile stillePartnerZeile = new OASStillePartnerZeile();
        Map<String, String> x-property-mappings = stillePartnerZeile.getx-property-mappings();
        System.assertEquals('instrumentType', x-property-mappings.get('instrument_type'));
        System.assertEquals('verlustVerrechnungskonto', x-property-mappings.get('verlust_verrechnungskonto'));
    }
}
