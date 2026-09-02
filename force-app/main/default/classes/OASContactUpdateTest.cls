@isTest
private class OASContactUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASContactUpdate contactUpdate1 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate2 = contactUpdate1;
        OASContactUpdate contactUpdate3 = new OASContactUpdate();
        OASContactUpdate contactUpdate4 = contactUpdate3;

        System.assert(contactUpdate1.equals(contactUpdate2));
        System.assert(contactUpdate2.equals(contactUpdate1));
        System.assert(contactUpdate1.equals(contactUpdate1));
        System.assert(contactUpdate3.equals(contactUpdate4));
        System.assert(contactUpdate4.equals(contactUpdate3));
        System.assert(contactUpdate3.equals(contactUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContactUpdate contactUpdate1 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate2 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate3 = new OASContactUpdate();
        OASContactUpdate contactUpdate4 = new OASContactUpdate();

        System.assert(contactUpdate1.equals(contactUpdate2));
        System.assert(contactUpdate2.equals(contactUpdate1));
        System.assert(contactUpdate3.equals(contactUpdate4));
        System.assert(contactUpdate4.equals(contactUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContactUpdate contactUpdate1 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate2 = new OASContactUpdate();

        System.assertEquals(false, contactUpdate1.equals('foo'));
        System.assertEquals(false, contactUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContactUpdate contactUpdate1 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate2 = new OASContactUpdate();
        OASContactUpdate contactUpdate3;

        System.assertEquals(false, contactUpdate1.equals(contactUpdate3));
        System.assertEquals(false, contactUpdate2.equals(contactUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContactUpdate contactUpdate1 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate2 = new OASContactUpdate();

        System.assertEquals(contactUpdate1.hashCode(), contactUpdate1.hashCode());
        System.assertEquals(contactUpdate2.hashCode(), contactUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContactUpdate contactUpdate1 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate2 = OASContactUpdate.getExample();
        OASContactUpdate contactUpdate3 = new OASContactUpdate();
        OASContactUpdate contactUpdate4 = new OASContactUpdate();

        System.assert(contactUpdate1.equals(contactUpdate2));
        System.assert(contactUpdate3.equals(contactUpdate4));
        System.assertEquals(contactUpdate1.hashCode(), contactUpdate2.hashCode());
        System.assertEquals(contactUpdate3.hashCode(), contactUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASContactUpdate contactUpdate = new OASContactUpdate();
        Map<String, String> x-property-mappings = contactUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASContactUpdate contactUpdate = new OASContactUpdate();
        System.assertEquals(new List<String>(), contactUpdate.paymentMethods);
        System.assertEquals(new List<String>(), contactUpdate.tags);
        System.assertEquals(null, contactUpdate.accountHolder);
        System.assertEquals(null, contactUpdate.acquisitionCost);
        System.assertEquals(null, contactUpdate.addressSupplement);
        System.assertEquals(null, contactUpdate.attention);
        System.assertEquals(null, contactUpdate.bankName);
        System.assertEquals(null, contactUpdate.bic);
        System.assertEquals(null, contactUpdate.buyerReference);
        System.assertEquals(null, contactUpdate.category);
        System.assertEquals(null, contactUpdate.certificateAuthority);
        System.assertEquals(null, contactUpdate.certificateNumber);
        System.assertEquals(null, contactUpdate.certificateParagraph);
        System.assertEquals(null, contactUpdate.certificateValidUntil);
        System.assertEquals(null, contactUpdate.city);
        System.assertEquals(null, contactUpdate.companyName);
        System.assertEquals(null, contactUpdate.contactPersons);
        System.assertEquals(null, contactUpdate.contactType);
        System.assertEquals(null, contactUpdate.country);
        System.assertEquals(null, contactUpdate.creditLimit);
        System.assertEquals(null, contactUpdate.creditorAccountSkr03);
        System.assertEquals(null, contactUpdate.creditorAccountSkr04);
        System.assertEquals(null, contactUpdate.r_currency);
        System.assertEquals(null, contactUpdate.customFields);
        System.assertEquals(null, contactUpdate.customerNumber);
        System.assertEquals(null, contactUpdate.debitorAccountSkr03);
        System.assertEquals(null, contactUpdate.debitorAccountSkr04);
        System.assertEquals(null, contactUpdate.defaultDebitorNumber);
        System.assertEquals(null, contactUpdate.deliveryBlock);
        System.assertEquals(null, contactUpdate.department);
        System.assertEquals(null, contactUpdate.discountDays);
        System.assertEquals(null, contactUpdate.discountPercentage);
        System.assertEquals(null, contactUpdate.donationReceiptEligible);
        System.assertEquals(null, contactUpdate.email);
        System.assertEquals(null, contactUpdate.externalId);
        System.assertEquals(null, contactUpdate.fax);
        System.assertEquals(null, contactUpdate.iban);
        System.assertEquals(null, contactUpdate.industry);
        System.assertEquals(null, contactUpdate.isActive);
        System.assertEquals(null, contactUpdate.isMember);
        System.assertEquals(null, contactUpdate.isNonprofit);
        System.assertEquals(null, contactUpdate.lastContactDate);
        System.assertEquals(null, contactUpdate.lastPurchaseDate);
        System.assertEquals(null, contactUpdate.leitwegId);
        System.assertEquals(null, contactUpdate.lifetimeValue);
        System.assertEquals(null, contactUpdate.mandateDate);
        System.assertEquals(null, contactUpdate.mandateReference);
        System.assertEquals(null, contactUpdate.marketingConsent);
        System.assertEquals(null, contactUpdate.marketingConsentAt);
        System.assertEquals(null, contactUpdate.marketingConsentSource);
        System.assertEquals(null, contactUpdate.mobile);
        System.assertEquals(null, contactUpdate.name);
        System.assertEquals(null, contactUpdate.nextContactDate);
        System.assertEquals(null, contactUpdate.notes);
        System.assertEquals(null, contactUpdate.openingBalance);
        System.assertEquals(null, contactUpdate.openingBalanceDate);
        System.assertEquals(null, contactUpdate.orderReference);
        System.assertEquals(null, contactUpdate.paymentBlock);
        System.assertEquals(null, contactUpdate.paymentGracePeriodDays);
        System.assertEquals(null, contactUpdate.paymentTerms);
        System.assertEquals(null, contactUpdate.phone);
        System.assertEquals(null, contactUpdate.rating);
        System.assertEquals(null, contactUpdate.salesRepresentative);
        System.assertEquals(null, contactUpdate.sepaBatchBooking);
        System.assertEquals(null, contactUpdate.sepaSequenceType);
        System.assertEquals(null, contactUpdate.socialMedia);
        System.assertEquals(null, contactUpdate.source);
        System.assertEquals(null, contactUpdate.state);
        System.assertEquals(null, contactUpdate.street);
        System.assertEquals(null, contactUpdate.streetNumber);
        System.assertEquals(null, contactUpdate.supplierNumber);
        System.assertEquals(null, contactUpdate.taxCountry);
        System.assertEquals(null, contactUpdate.taxNumber);
        System.assertEquals(null, contactUpdate.taxOffice);
        System.assertEquals(null, contactUpdate.totalInvoices);
        System.assertEquals(null, contactUpdate.totalRevenue);
        System.assertEquals(null, contactUpdate.vatId);
        System.assertEquals(null, contactUpdate.vatIdValidated);
        System.assertEquals(null, contactUpdate.vatIdValidationDate);
        System.assertEquals(null, contactUpdate.website);
        System.assertEquals(null, contactUpdate.zip);
    }
}
