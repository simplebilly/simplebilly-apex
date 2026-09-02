@isTest
private class OASProductionOrderCostingTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductionOrderCosting productionOrderCosting1 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting2 = productionOrderCosting1;
        OASProductionOrderCosting productionOrderCosting3 = new OASProductionOrderCosting();
        OASProductionOrderCosting productionOrderCosting4 = productionOrderCosting3;

        System.assert(productionOrderCosting1.equals(productionOrderCosting2));
        System.assert(productionOrderCosting2.equals(productionOrderCosting1));
        System.assert(productionOrderCosting1.equals(productionOrderCosting1));
        System.assert(productionOrderCosting3.equals(productionOrderCosting4));
        System.assert(productionOrderCosting4.equals(productionOrderCosting3));
        System.assert(productionOrderCosting3.equals(productionOrderCosting3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductionOrderCosting productionOrderCosting1 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting2 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting3 = new OASProductionOrderCosting();
        OASProductionOrderCosting productionOrderCosting4 = new OASProductionOrderCosting();

        System.assert(productionOrderCosting1.equals(productionOrderCosting2));
        System.assert(productionOrderCosting2.equals(productionOrderCosting1));
        System.assert(productionOrderCosting3.equals(productionOrderCosting4));
        System.assert(productionOrderCosting4.equals(productionOrderCosting3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductionOrderCosting productionOrderCosting1 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting2 = new OASProductionOrderCosting();

        System.assertEquals(false, productionOrderCosting1.equals('foo'));
        System.assertEquals(false, productionOrderCosting2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductionOrderCosting productionOrderCosting1 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting2 = new OASProductionOrderCosting();
        OASProductionOrderCosting productionOrderCosting3;

        System.assertEquals(false, productionOrderCosting1.equals(productionOrderCosting3));
        System.assertEquals(false, productionOrderCosting2.equals(productionOrderCosting3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductionOrderCosting productionOrderCosting1 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting2 = new OASProductionOrderCosting();

        System.assertEquals(productionOrderCosting1.hashCode(), productionOrderCosting1.hashCode());
        System.assertEquals(productionOrderCosting2.hashCode(), productionOrderCosting2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductionOrderCosting productionOrderCosting1 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting2 = OASProductionOrderCosting.getExample();
        OASProductionOrderCosting productionOrderCosting3 = new OASProductionOrderCosting();
        OASProductionOrderCosting productionOrderCosting4 = new OASProductionOrderCosting();

        System.assert(productionOrderCosting1.equals(productionOrderCosting2));
        System.assert(productionOrderCosting3.equals(productionOrderCosting4));
        System.assertEquals(productionOrderCosting1.hashCode(), productionOrderCosting2.hashCode());
        System.assertEquals(productionOrderCosting3.hashCode(), productionOrderCosting4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProductionOrderCosting productionOrderCosting = new OASProductionOrderCosting();
        System.assertEquals(new List<OASCostingLine>(), productionOrderCosting.lines);
        System.assertEquals(null, productionOrderCosting.costPerUnit);
        System.assertEquals(null, productionOrderCosting.costSource);
        System.assertEquals(null, productionOrderCosting.marginPerUnit);
        System.assertEquals(null, productionOrderCosting.marginPercent);
        System.assertEquals(null, productionOrderCosting.materialCostTotal);
        System.assertEquals(null, productionOrderCosting.orderNumber);
        System.assertEquals(null, productionOrderCosting.productionOrderId);
        System.assertEquals(null, productionOrderCosting.quantity);
        System.assertEquals(null, productionOrderCosting.salePrice);
        System.assertEquals(null, productionOrderCosting.status);
    }
}
