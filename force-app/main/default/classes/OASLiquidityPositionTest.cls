@isTest
private class OASLiquidityPositionTest {
    @isTest
    private static void equalsSameInstance() {
        OASLiquidityPosition liquidityPosition1 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition2 = liquidityPosition1;
        OASLiquidityPosition liquidityPosition3 = new OASLiquidityPosition();
        OASLiquidityPosition liquidityPosition4 = liquidityPosition3;

        System.assert(liquidityPosition1.equals(liquidityPosition2));
        System.assert(liquidityPosition2.equals(liquidityPosition1));
        System.assert(liquidityPosition1.equals(liquidityPosition1));
        System.assert(liquidityPosition3.equals(liquidityPosition4));
        System.assert(liquidityPosition4.equals(liquidityPosition3));
        System.assert(liquidityPosition3.equals(liquidityPosition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLiquidityPosition liquidityPosition1 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition2 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition3 = new OASLiquidityPosition();
        OASLiquidityPosition liquidityPosition4 = new OASLiquidityPosition();

        System.assert(liquidityPosition1.equals(liquidityPosition2));
        System.assert(liquidityPosition2.equals(liquidityPosition1));
        System.assert(liquidityPosition3.equals(liquidityPosition4));
        System.assert(liquidityPosition4.equals(liquidityPosition3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLiquidityPosition liquidityPosition1 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition2 = new OASLiquidityPosition();

        System.assertEquals(false, liquidityPosition1.equals('foo'));
        System.assertEquals(false, liquidityPosition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLiquidityPosition liquidityPosition1 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition2 = new OASLiquidityPosition();
        OASLiquidityPosition liquidityPosition3;

        System.assertEquals(false, liquidityPosition1.equals(liquidityPosition3));
        System.assertEquals(false, liquidityPosition2.equals(liquidityPosition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLiquidityPosition liquidityPosition1 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition2 = new OASLiquidityPosition();

        System.assertEquals(liquidityPosition1.hashCode(), liquidityPosition1.hashCode());
        System.assertEquals(liquidityPosition2.hashCode(), liquidityPosition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLiquidityPosition liquidityPosition1 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition2 = OASLiquidityPosition.getExample();
        OASLiquidityPosition liquidityPosition3 = new OASLiquidityPosition();
        OASLiquidityPosition liquidityPosition4 = new OASLiquidityPosition();

        System.assert(liquidityPosition1.equals(liquidityPosition2));
        System.assert(liquidityPosition3.equals(liquidityPosition4));
        System.assertEquals(liquidityPosition1.hashCode(), liquidityPosition2.hashCode());
        System.assertEquals(liquidityPosition3.hashCode(), liquidityPosition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLiquidityPosition liquidityPosition = new OASLiquidityPosition();
        Map<String, String> x-property-mappings = liquidityPosition.getx-property-mappings();
        System.assertEquals('accountsPayable', x-property-mappings.get('accounts_payable'));
        System.assertEquals('accountsReceivable', x-property-mappings.get('accounts_receivable'));
        System.assertEquals('cashAndEquivalents', x-property-mappings.get('cash_and_equivalents'));
        System.assertEquals('currentRatio', x-property-mappings.get('current_ratio'));
        System.assertEquals('quickRatio', x-property-mappings.get('quick_ratio'));
        System.assertEquals('workingCapital', x-property-mappings.get('working_capital'));
    }
}
