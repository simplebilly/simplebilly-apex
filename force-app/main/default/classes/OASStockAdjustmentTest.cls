@isTest
private class OASStockAdjustmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASStockAdjustment stockAdjustment1 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment2 = stockAdjustment1;
        OASStockAdjustment stockAdjustment3 = new OASStockAdjustment();
        OASStockAdjustment stockAdjustment4 = stockAdjustment3;

        System.assert(stockAdjustment1.equals(stockAdjustment2));
        System.assert(stockAdjustment2.equals(stockAdjustment1));
        System.assert(stockAdjustment1.equals(stockAdjustment1));
        System.assert(stockAdjustment3.equals(stockAdjustment4));
        System.assert(stockAdjustment4.equals(stockAdjustment3));
        System.assert(stockAdjustment3.equals(stockAdjustment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStockAdjustment stockAdjustment1 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment2 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment3 = new OASStockAdjustment();
        OASStockAdjustment stockAdjustment4 = new OASStockAdjustment();

        System.assert(stockAdjustment1.equals(stockAdjustment2));
        System.assert(stockAdjustment2.equals(stockAdjustment1));
        System.assert(stockAdjustment3.equals(stockAdjustment4));
        System.assert(stockAdjustment4.equals(stockAdjustment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStockAdjustment stockAdjustment1 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment2 = new OASStockAdjustment();

        System.assertEquals(false, stockAdjustment1.equals('foo'));
        System.assertEquals(false, stockAdjustment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStockAdjustment stockAdjustment1 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment2 = new OASStockAdjustment();
        OASStockAdjustment stockAdjustment3;

        System.assertEquals(false, stockAdjustment1.equals(stockAdjustment3));
        System.assertEquals(false, stockAdjustment2.equals(stockAdjustment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStockAdjustment stockAdjustment1 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment2 = new OASStockAdjustment();

        System.assertEquals(stockAdjustment1.hashCode(), stockAdjustment1.hashCode());
        System.assertEquals(stockAdjustment2.hashCode(), stockAdjustment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStockAdjustment stockAdjustment1 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment2 = OASStockAdjustment.getExample();
        OASStockAdjustment stockAdjustment3 = new OASStockAdjustment();
        OASStockAdjustment stockAdjustment4 = new OASStockAdjustment();

        System.assert(stockAdjustment1.equals(stockAdjustment2));
        System.assert(stockAdjustment3.equals(stockAdjustment4));
        System.assertEquals(stockAdjustment1.hashCode(), stockAdjustment2.hashCode());
        System.assertEquals(stockAdjustment3.hashCode(), stockAdjustment4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASStockAdjustment stockAdjustment = new OASStockAdjustment();
        System.assertEquals(new List<String>(), stockAdjustment.serialNumbers);
        System.assertEquals(null, stockAdjustment.batchNumber);
        System.assertEquals(null, stockAdjustment.binLocation);
        System.assertEquals(null, stockAdjustment.expiryDate);
        System.assertEquals(null, stockAdjustment.productId);
        System.assertEquals(null, stockAdjustment.quantity);
    }
}
