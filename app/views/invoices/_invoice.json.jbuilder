json.extract! invoice, :id, :fnummer, :datum, :bedrijfsnaam, :adres1, :adres2, :postcode, :stad, :email, :btw, :beschrijving, :bedragexcl, :btw, :bedragincl, :opmerkingen, :barcode, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
