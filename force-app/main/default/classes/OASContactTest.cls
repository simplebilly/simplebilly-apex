@isTest
private class OASContactTest {
    @isTest
    private static void equalsSameInstance() {
        OASContact contact1 = OASContact.getExample();
        OASContact contact2 = contact1;
        OASContact contact3 = new OASContact();
        OASContact contact4 = contact3;

        System.assert(contact1.equals(contact2));
        System.assert(contact2.equals(contact1));
        System.assert(contact1.equals(contact1));
        System.assert(contact3.equals(contact4));
        System.assert(contact4.equals(contact3));
        System.assert(contact3.equals(contact3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContact contact1 = OASContact.getExample();
        OASContact contact2 = OASContact.getExample();
        OASContact contact3 = new OASContact();
        OASContact contact4 = new OASContact();

        System.assert(contact1.equals(contact2));
        System.assert(contact2.equals(contact1));
        System.assert(contact3.equals(contact4));
        System.assert(contact4.equals(contact3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContact contact1 = OASContact.getExample();
        OASContact contact2 = new OASContact();

        System.assertEquals(false, contact1.equals('foo'));
        System.assertEquals(false, contact2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContact contact1 = OASContact.getExample();
        OASContact contact2 = new OASContact();
        OASContact contact3;

        System.assertEquals(false, contact1.equals(contact3));
        System.assertEquals(false, contact2.equals(contact3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContact contact1 = OASContact.getExample();
        OASContact contact2 = new OASContact();

        System.assertEquals(contact1.hashCode(), contact1.hashCode());
        System.assertEquals(contact2.hashCode(), contact2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContact contact1 = OASContact.getExample();
        OASContact contact2 = OASContact.getExample();
        OASContact contact3 = new OASContact();
        OASContact contact4 = new OASContact();

        System.assert(contact1.equals(contact2));
        System.assert(contact3.equals(contact4));
        System.assertEquals(contact1.hashCode(), contact2.hashCode());
        System.assertEquals(contact3.hashCode(), contact4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASContact contact = new OASContact();
        Map<String, String> x-property-mappings = contact.getx-property-mappings();
        System.assertEquals('accountHolder', x-property-mappings.get('account_holder'));
        System.assertEquals('acquisitionCost', x-property-mappings.get('acquisition_cost'));
        System.assertEquals('addressSupplement', x-property-mappings.get('address_supplement'));
        System.assertEquals('bankName', x-property-mappings.get('bank_name'));
        System.assertEquals('buyerReference', x-property-mappings.get('buyer_reference'));
        System.assertEquals('certificateAuthority', x-property-mappings.get('certificate_authority'));
        System.assertEquals('certificateNumber', x-property-mappings.get('certificate_number'));
        System.assertEquals('certificateParagraph', x-property-mappings.get('certificate_paragraph'));
        System.assertEquals('certificateValidUntil', x-property-mappings.get('certificate_valid_until'));
        System.assertEquals('companyName', x-property-mappings.get('company_name'));
        System.assertEquals('contactId', x-property-mappings.get('contact_id'));
        System.assertEquals('contactPersons', x-property-mappings.get('contact_persons'));
        System.assertEquals('contactType', x-property-mappings.get('contact_type'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('creditLimit', x-property-mappings.get('credit_limit'));
        System.assertEquals('creditorAccountSkr03', x-property-mappings.get('creditor_account_skr03'));
        System.assertEquals('creditorAccountSkr04', x-property-mappings.get('creditor_account_skr04'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
        System.assertEquals('customerNumber', x-property-mappings.get('customer_number'));
        System.assertEquals('debitorAccountSkr03', x-property-mappings.get('debitor_account_skr03'));
        System.assertEquals('debitorAccountSkr04', x-property-mappings.get('debitor_account_skr04'));
        System.assertEquals('defaultDebitorNumber', x-property-mappings.get('default_debitor_number'));
        System.assertEquals('deliveryBlock', x-property-mappings.get('delivery_block'));
        System.assertEquals('discountDays', x-property-mappings.get('discount_days'));
        System.assertEquals('discountPercentage', x-property-mappings.get('discount_percentage'));
        System.assertEquals('donationReceiptEligible', x-property-mappings.get('donation_receipt_eligible'));
        System.assertEquals('externalId', x-property-mappings.get('external_id'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('isMember', x-property-mappings.get('is_member'));
        System.assertEquals('isNonprofit', x-property-mappings.get('is_nonprofit'));
        System.assertEquals('lastContactDate', x-property-mappings.get('last_contact_date'));
        System.assertEquals('lastPurchaseDate', x-property-mappings.get('last_purchase_date'));
        System.assertEquals('leitwegId', x-property-mappings.get('leitweg_id'));
        System.assertEquals('lifetimeValue', x-property-mappings.get('lifetime_value'));
        System.assertEquals('mandateDate', x-property-mappings.get('mandate_date'));
        System.assertEquals('mandateReference', x-property-mappings.get('mandate_reference'));
        System.assertEquals('marketingConsent', x-property-mappings.get('marketing_consent'));
        System.assertEquals('marketingConsentAt', x-property-mappings.get('marketing_consent_at'));
        System.assertEquals('marketingConsentSource', x-property-mappings.get('marketing_consent_source'));
        System.assertEquals('nextContactDate', x-property-mappings.get('next_contact_date'));
        System.assertEquals('openingBalance', x-property-mappings.get('opening_balance'));
        System.assertEquals('openingBalanceDate', x-property-mappings.get('opening_balance_date'));
        System.assertEquals('orderReference', x-property-mappings.get('order_reference'));
        System.assertEquals('paymentBlock', x-property-mappings.get('payment_block'));
        System.assertEquals('paymentGracePeriodDays', x-property-mappings.get('payment_grace_period_days'));
        System.assertEquals('paymentMethods', x-property-mappings.get('payment_methods'));
        System.assertEquals('paymentTerms', x-property-mappings.get('payment_terms'));
        System.assertEquals('salesRepresentative', x-property-mappings.get('sales_representative'));
        System.assertEquals('socialMedia', x-property-mappings.get('social_media'));
        System.assertEquals('streetNumber', x-property-mappings.get('street_number'));
        System.assertEquals('supplierNumber', x-property-mappings.get('supplier_number'));
        System.assertEquals('taxCountry', x-property-mappings.get('tax_country'));
        System.assertEquals('taxNumber', x-property-mappings.get('tax_number'));
        System.assertEquals('taxOffice', x-property-mappings.get('tax_office'));
        System.assertEquals('totalInvoices', x-property-mappings.get('total_invoices'));
        System.assertEquals('totalRevenue', x-property-mappings.get('total_revenue'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
        System.assertEquals('vatId', x-property-mappings.get('vat_id'));
        System.assertEquals('vatIdValidated', x-property-mappings.get('vat_id_validated'));
        System.assertEquals('vatIdValidationDate', x-property-mappings.get('vat_id_validation_date'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASContact contact = new OASContact();
        System.assertEquals(new List<String>(), contact.paymentMethods);
        System.assertEquals(new List<String>(), contact.tags);
        System.assertEquals(null, contact.accountHolder);
        System.assertEquals(null, contact.acquisitionCost);
        System.assertEquals(null, contact.addressSupplement);
        System.assertEquals(null, contact.attention);
        System.assertEquals(null, contact.bankName);
        System.assertEquals(null, contact.bic);
        System.assertEquals(null, contact.buyerReference);
        System.assertEquals(null, contact.category);
        System.assertEquals(null, contact.certificateAuthority);
        System.assertEquals(null, contact.certificateNumber);
        System.assertEquals(null, contact.certificateParagraph);
        System.assertEquals(null, contact.certificateValidUntil);
        System.assertEquals(null, contact.city);
        System.assertEquals(null, contact.companyName);
        System.assertEquals(null, contact.contactId);
        System.assertEquals(null, contact.contactPersons);
        System.assertEquals(null, contact.contactType);
        System.assertEquals(null, contact.country);
        System.assertEquals(null, contact.createdAt);
        System.assertEquals(null, contact.creditLimit);
        System.assertEquals(null, contact.creditorAccountSkr03);
        System.assertEquals(null, contact.creditorAccountSkr04);
        System.assertEquals(null, contact.r_currency);
        System.assertEquals(null, contact.customerNumber);
        System.assertEquals(null, contact.debitorAccountSkr03);
        System.assertEquals(null, contact.debitorAccountSkr04);
        System.assertEquals(null, contact.defaultDebitorNumber);
        System.assertEquals(null, contact.deliveryBlock);
        System.assertEquals(null, contact.department);
        System.assertEquals(null, contact.discountDays);
        System.assertEquals(null, contact.discountPercentage);
        System.assertEquals(null, contact.donationReceiptEligible);
        System.assertEquals(null, contact.email);
        System.assertEquals(null, contact.externalId);
        System.assertEquals(null, contact.fax);
        System.assertEquals(null, contact.iban);
        System.assertEquals(null, contact.industry);
        System.assertEquals(null, contact.isActive);
        System.assertEquals(null, contact.isMember);
        System.assertEquals(null, contact.isNonprofit);
        System.assertEquals(null, contact.lastContactDate);
        System.assertEquals(null, contact.lastPurchaseDate);
        System.assertEquals(null, contact.leitwegId);
        System.assertEquals(null, contact.lifetimeValue);
        System.assertEquals(null, contact.mandateDate);
        System.assertEquals(null, contact.mandateReference);
        System.assertEquals(null, contact.marketingConsent);
        System.assertEquals(null, contact.marketingConsentAt);
        System.assertEquals(null, contact.marketingConsentSource);
        System.assertEquals(null, contact.mobile);
        System.assertEquals(null, contact.name);
        System.assertEquals(null, contact.nextContactDate);
        System.assertEquals(null, contact.notes);
        System.assertEquals(null, contact.openingBalance);
        System.assertEquals(null, contact.openingBalanceDate);
        System.assertEquals(null, contact.orderReference);
        System.assertEquals(null, contact.paymentBlock);
        System.assertEquals(null, contact.paymentGracePeriodDays);
        System.assertEquals(null, contact.paymentTerms);
        System.assertEquals(null, contact.phone);
        System.assertEquals(null, contact.rating);
        System.assertEquals(null, contact.salesRepresentative);
        System.assertEquals(null, contact.socialMedia);
        System.assertEquals(null, contact.source);
        System.assertEquals(null, contact.state);
        System.assertEquals(null, contact.street);
        System.assertEquals(null, contact.streetNumber);
        System.assertEquals(null, contact.supplierNumber);
        System.assertEquals(null, contact.taxCountry);
        System.assertEquals(null, contact.taxNumber);
        System.assertEquals(null, contact.taxOffice);
        System.assertEquals(null, contact.totalInvoices);
        System.assertEquals(null, contact.totalRevenue);
        System.assertEquals(null, contact.updatedAt);
        System.assertEquals(null, contact.vatId);
        System.assertEquals(null, contact.vatIdValidated);
        System.assertEquals(null, contact.vatIdValidationDate);
        System.assertEquals(null, contact.website);
        System.assertEquals(null, contact.zip);
    }
}
