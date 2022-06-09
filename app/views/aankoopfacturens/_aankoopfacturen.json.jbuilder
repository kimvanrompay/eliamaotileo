json.extract! aankoopfacturen, :id, :bedrijfsnaam, :adres, :land, :postcode, :btw, :klantnummer, :factuurnummer, :description, :excl_bedrag, :factuurdatum, :vervaldatum, :rekeningnummer, :begunstigde, :mededeling, :factuur_mail, :betaald, :bevestigd, :recurrent, :opmerking, :staving, :created_at, :updated_at
json.url aankoopfacturen_url(aankoopfacturen, format: :json)
