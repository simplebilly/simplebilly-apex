@isTest
private class OASStockTransferStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASStockTransferStatusUpdate stockTransferStatusUpdate1 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate2 = stockTransferStatusUpdate1;
        OASStockTransferStatusUpdate stockTransferStatusUpdate3 = new OASStockTransferStatusUpdate();
        OASStockTransferStatusUpdate stockTransferStatusUpdate4 = stockTransferStatusUpdate3;

        System.assert(stockTransferStatusUpdate1.equals(stockTransferStatusUpdate2));
        System.assert(stockTransferStatusUpdate2.equals(stockTransferStatusUpdate1));
        System.assert(stockTransferStatusUpdate1.equals(stockTransferStatusUpdate1));
        System.assert(stockTransferStatusUpdate3.equals(stockTransferStatusUpdate4));
        System.assert(stockTransferStatusUpdate4.equals(stockTransferStatusUpdate3));
        System.assert(stockTransferStatusUpdate3.equals(stockTransferStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStockTransferStatusUpdate stockTransferStatusUpdate1 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate2 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate3 = new OASStockTransferStatusUpdate();
        OASStockTransferStatusUpdate stockTransferStatusUpdate4 = new OASStockTransferStatusUpdate();

        System.assert(stockTransferStatusUpdate1.equals(stockTransferStatusUpdate2));
        System.assert(stockTransferStatusUpdate2.equals(stockTransferStatusUpdate1));
        System.assert(stockTransferStatusUpdate3.equals(stockTransferStatusUpdate4));
        System.assert(stockTransferStatusUpdate4.equals(stockTransferStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStockTransferStatusUpdate stockTransferStatusUpdate1 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate2 = new OASStockTransferStatusUpdate();

        System.assertEquals(false, stockTransferStatusUpdate1.equals('foo'));
        System.assertEquals(false, stockTransferStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStockTransferStatusUpdate stockTransferStatusUpdate1 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate2 = new OASStockTransferStatusUpdate();
        OASStockTransferStatusUpdate stockTransferStatusUpdate3;

        System.assertEquals(false, stockTransferStatusUpdate1.equals(stockTransferStatusUpdate3));
        System.assertEquals(false, stockTransferStatusUpdate2.equals(stockTransferStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStockTransferStatusUpdate stockTransferStatusUpdate1 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate2 = new OASStockTransferStatusUpdate();

        System.assertEquals(stockTransferStatusUpdate1.hashCode(), stockTransferStatusUpdate1.hashCode());
        System.assertEquals(stockTransferStatusUpdate2.hashCode(), stockTransferStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStockTransferStatusUpdate stockTransferStatusUpdate1 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate2 = OASStockTransferStatusUpdate.getExample();
        OASStockTransferStatusUpdate stockTransferStatusUpdate3 = new OASStockTransferStatusUpdate();
        OASStockTransferStatusUpdate stockTransferStatusUpdate4 = new OASStockTransferStatusUpdate();

        System.assert(stockTransferStatusUpdate1.equals(stockTransferStatusUpdate2));
        System.assert(stockTransferStatusUpdate3.equals(stockTransferStatusUpdate4));
        System.assertEquals(stockTransferStatusUpdate1.hashCode(), stockTransferStatusUpdate2.hashCode());
        System.assertEquals(stockTransferStatusUpdate3.hashCode(), stockTransferStatusUpdate4.hashCode());
    }
}
