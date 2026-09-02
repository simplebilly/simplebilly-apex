@isTest
private class OASDeclarationCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeclarationCreate declarationCreate1 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate2 = declarationCreate1;
        OASDeclarationCreate declarationCreate3 = new OASDeclarationCreate();
        OASDeclarationCreate declarationCreate4 = declarationCreate3;

        System.assert(declarationCreate1.equals(declarationCreate2));
        System.assert(declarationCreate2.equals(declarationCreate1));
        System.assert(declarationCreate1.equals(declarationCreate1));
        System.assert(declarationCreate3.equals(declarationCreate4));
        System.assert(declarationCreate4.equals(declarationCreate3));
        System.assert(declarationCreate3.equals(declarationCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeclarationCreate declarationCreate1 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate2 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate3 = new OASDeclarationCreate();
        OASDeclarationCreate declarationCreate4 = new OASDeclarationCreate();

        System.assert(declarationCreate1.equals(declarationCreate2));
        System.assert(declarationCreate2.equals(declarationCreate1));
        System.assert(declarationCreate3.equals(declarationCreate4));
        System.assert(declarationCreate4.equals(declarationCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeclarationCreate declarationCreate1 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate2 = new OASDeclarationCreate();

        System.assertEquals(false, declarationCreate1.equals('foo'));
        System.assertEquals(false, declarationCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeclarationCreate declarationCreate1 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate2 = new OASDeclarationCreate();
        OASDeclarationCreate declarationCreate3;

        System.assertEquals(false, declarationCreate1.equals(declarationCreate3));
        System.assertEquals(false, declarationCreate2.equals(declarationCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeclarationCreate declarationCreate1 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate2 = new OASDeclarationCreate();

        System.assertEquals(declarationCreate1.hashCode(), declarationCreate1.hashCode());
        System.assertEquals(declarationCreate2.hashCode(), declarationCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeclarationCreate declarationCreate1 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate2 = OASDeclarationCreate.getExample();
        OASDeclarationCreate declarationCreate3 = new OASDeclarationCreate();
        OASDeclarationCreate declarationCreate4 = new OASDeclarationCreate();

        System.assert(declarationCreate1.equals(declarationCreate2));
        System.assert(declarationCreate3.equals(declarationCreate4));
        System.assertEquals(declarationCreate1.hashCode(), declarationCreate2.hashCode());
        System.assertEquals(declarationCreate3.hashCode(), declarationCreate4.hashCode());
    }
}
