@isTest
private class OASStockTransferTest {
    @isTest
    private static void equalsSameInstance() {
        OASStockTransfer stockTransfer1 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer2 = stockTransfer1;
        OASStockTransfer stockTransfer3 = new OASStockTransfer();
        OASStockTransfer stockTransfer4 = stockTransfer3;

        System.assert(stockTransfer1.equals(stockTransfer2));
        System.assert(stockTransfer2.equals(stockTransfer1));
        System.assert(stockTransfer1.equals(stockTransfer1));
        System.assert(stockTransfer3.equals(stockTransfer4));
        System.assert(stockTransfer4.equals(stockTransfer3));
        System.assert(stockTransfer3.equals(stockTransfer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStockTransfer stockTransfer1 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer2 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer3 = new OASStockTransfer();
        OASStockTransfer stockTransfer4 = new OASStockTransfer();

        System.assert(stockTransfer1.equals(stockTransfer2));
        System.assert(stockTransfer2.equals(stockTransfer1));
        System.assert(stockTransfer3.equals(stockTransfer4));
        System.assert(stockTransfer4.equals(stockTransfer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStockTransfer stockTransfer1 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer2 = new OASStockTransfer();

        System.assertEquals(false, stockTransfer1.equals('foo'));
        System.assertEquals(false, stockTransfer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStockTransfer stockTransfer1 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer2 = new OASStockTransfer();
        OASStockTransfer stockTransfer3;

        System.assertEquals(false, stockTransfer1.equals(stockTransfer3));
        System.assertEquals(false, stockTransfer2.equals(stockTransfer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStockTransfer stockTransfer1 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer2 = new OASStockTransfer();

        System.assertEquals(stockTransfer1.hashCode(), stockTransfer1.hashCode());
        System.assertEquals(stockTransfer2.hashCode(), stockTransfer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStockTransfer stockTransfer1 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer2 = OASStockTransfer.getExample();
        OASStockTransfer stockTransfer3 = new OASStockTransfer();
        OASStockTransfer stockTransfer4 = new OASStockTransfer();

        System.assert(stockTransfer1.equals(stockTransfer2));
        System.assert(stockTransfer3.equals(stockTransfer4));
        System.assertEquals(stockTransfer1.hashCode(), stockTransfer2.hashCode());
        System.assertEquals(stockTransfer3.hashCode(), stockTransfer4.hashCode());
    }
}
