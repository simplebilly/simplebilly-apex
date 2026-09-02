@isTest
private class OASDeclarationUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeclarationUpdate declarationUpdate1 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate2 = declarationUpdate1;
        OASDeclarationUpdate declarationUpdate3 = new OASDeclarationUpdate();
        OASDeclarationUpdate declarationUpdate4 = declarationUpdate3;

        System.assert(declarationUpdate1.equals(declarationUpdate2));
        System.assert(declarationUpdate2.equals(declarationUpdate1));
        System.assert(declarationUpdate1.equals(declarationUpdate1));
        System.assert(declarationUpdate3.equals(declarationUpdate4));
        System.assert(declarationUpdate4.equals(declarationUpdate3));
        System.assert(declarationUpdate3.equals(declarationUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeclarationUpdate declarationUpdate1 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate2 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate3 = new OASDeclarationUpdate();
        OASDeclarationUpdate declarationUpdate4 = new OASDeclarationUpdate();

        System.assert(declarationUpdate1.equals(declarationUpdate2));
        System.assert(declarationUpdate2.equals(declarationUpdate1));
        System.assert(declarationUpdate3.equals(declarationUpdate4));
        System.assert(declarationUpdate4.equals(declarationUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeclarationUpdate declarationUpdate1 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate2 = new OASDeclarationUpdate();

        System.assertEquals(false, declarationUpdate1.equals('foo'));
        System.assertEquals(false, declarationUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeclarationUpdate declarationUpdate1 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate2 = new OASDeclarationUpdate();
        OASDeclarationUpdate declarationUpdate3;

        System.assertEquals(false, declarationUpdate1.equals(declarationUpdate3));
        System.assertEquals(false, declarationUpdate2.equals(declarationUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeclarationUpdate declarationUpdate1 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate2 = new OASDeclarationUpdate();

        System.assertEquals(declarationUpdate1.hashCode(), declarationUpdate1.hashCode());
        System.assertEquals(declarationUpdate2.hashCode(), declarationUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeclarationUpdate declarationUpdate1 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate2 = OASDeclarationUpdate.getExample();
        OASDeclarationUpdate declarationUpdate3 = new OASDeclarationUpdate();
        OASDeclarationUpdate declarationUpdate4 = new OASDeclarationUpdate();

        System.assert(declarationUpdate1.equals(declarationUpdate2));
        System.assert(declarationUpdate3.equals(declarationUpdate4));
        System.assertEquals(declarationUpdate1.hashCode(), declarationUpdate2.hashCode());
        System.assertEquals(declarationUpdate3.hashCode(), declarationUpdate4.hashCode());
    }
}
