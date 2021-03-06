require 'open-uri'

# Clear database
Brewer.destroy_all
Beer.destroy_all

# The JSON from Oberon
url_breweries = "http://download.oberon.nl/opdracht/brouwerijen.php"
url_beers = "http://download.oberon.nl/opdracht/bieren.php"

# Create brewery instances of the model
breweries = JSON.parse(open(url_breweries).read, symbolize_names: true)

breweries[:breweries].each do |brewery|
  Brewer.create(brewery)
end

# Create beer instances of the model
beers = JSON.parse(open(url_beers).read, symbolize_names: true)

beers[:beers].each do |beer|
  Beer.create(beer)
end

# json_breweries = '{"breweries":[{"name":"Maximus","address":"Pratumplaats 2A","zipcode":"3454 NA","city":"Utrecht (De Meern)","open":["Wednesday","Thursday","Friday","Saturday","Sunday"]},{"name":"Speciaalbierbrouwerij Duits & Lauret","address":"Schoolstraat 77","zipcode":"3451 AC","city":"Vleuten","open":["Monday","Tuesday","Wednesday"]},{"name":"Brouwerij de Molen","address":"Overtocht 43","zipcode":"2411 BT","city":"Bodegraven","open":["Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]},{"name":"Dorpsbrouwerij de Maar","address":"Maar 2","zipcode":"6454 AM","city":"Jabeek","open":["Tuesday","Wednesday","Thursday","Friday","Saturday"]},{"name":"Stadsbrouwerij De Pelgrim","address":"Aelbrechtskolk 12","zipcode":"3024 RE","city":"Rotterdam","open":["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]},{"name":"Leidsch Bier","address":"Flevoweg 35a","zipcode":"2318 BX","city":"Leiden","open":["Monday","Tuesday","Wednesday","Thursday","Friday"]},{"name":"Brouwerij Het Anker","address":"Guido Gezellelaan 49","zipcode":"2800","city":"Mechelen, Belgi\u00eb","open":["Tuesday","Wednesday","Thursday","Friday"]},{"name":"Brouwerij \'t IJ","address":"Funenkade 7","zipcode":"1018 AL","city":"Amsterdam","open":["Tuesday","Wednesday","Thursday","Friday"]},{"name":"Jopen","address":"Gedempte Voldersgracht 2","zipcode":"2011 WB","city":"Haarlem","open":["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]},{"name":"Texelse Bierbrouwerij","address":"Schilderweg 214","zipcode":"1792 CK","city":"Oudeschild","open":["Thursday","Friday","Saturday"]},{"name":"Brouwerij Dampegheest","address":"Achterweg 22","zipcode":"1906 AG","city":"Limmen","open":["Friday","Saturday","Sunday"]},{"name":"de naeckte brouwers","address":"Weverij 5","zipcode":"1185 ZE","city":"Amstelveen","open":["Wednesday"]}]}'
# json_beers = '{"beers":[{"brewery":"Brouwerij Dampegheest","name":"Skoftig","style":"Dubbel","volume":20,"alcohol":7.6,"keg":"KeyKeg"},{"brewery":"Brouwerij \'t IJ","name":"I.P.A.","style":"IPA","volume":20,"alcohol":7,"keg":"Alumasc"},{"brewery":"Brouwerij \'t IJ","name":"Zatte","style":"Tripel","volume":20,"alcohol":8,"keg":"Alumasc"},{"brewery":"de naeckte brouwers","name":"Naeckte non","style":"Dubbel","volume":20,"alcohol":8,"keg":"Alumasc"},{"brewery":"Stadsbrouwerij De Pelgrim","name":"Stoombier","style":"Pils","volume":20,"alcohol":5,"keg":"Alumasc"},{"brewery":"Jopen","name":"Extra Stout","style":"Stout","volume":10,"alcohol":5.5,"keg":"Sankey"},{"brewery":"Brouwerij Het Anker","name":"Gouden Carolus","style":"Tripel","volume":20,"alcohol":9,"keg":"Alumasc"},{"brewery":"Maximus","name":"Brutus","style":"Lager","volume":20,"alcohol":6,"keg":"KeyKeg"},{"brewery":"Brouwerij Het Anker","name":"Maneblusser","style":"Blond","volume":20,"alcohol":6.2,"keg":"Alumasc"},{"brewery":"Emelisse","name":"Dubbel","style":"Dubbel","volume":20,"alcohol":7.5,"keg":"KeyKeg"},{"brewery":"Emelisse","name":"T.I.P.A.","style":"IPA","volume":20,"alcohol":10,"keg":"KeyKeg"},{"brewery":"Maximus","name":"Highhops","style":"IPA","volume":20,"alcohol":6,"keg":"KeyKeg"},{"brewery":"Texelse Bierbrouwerij","name":"Tripel","style":"Tripel","volume":20,"alcohol":8.5,"keg":"Sankey"},{"brewery":"de naeckte brouwers","name":"Feeks","style":"Blond","volume":20,"alcohol":7.5,"keg":"Alumasc"},{"brewery":"Leidsch Bier","name":"Leidsch Aaipiejee","style":"IPA","volume":20,"alcohol":6.4,"keg":"Alumasc"},{"brewery":"Brouwerij de Molen","name":"Bloed, Zweet & Tranen","style":"Stout","volume":20,"alcohol":8.4,"keg":"Sankey"},{"brewery":"Brouwerij \'t IJ","name":"Natte","style":"Dubbel","volume":20,"alcohol":6.5,"keg":"Alumasc"},{"brewery":"Jopen","name":"Mooie Nel IPA","style":"IPA","volume":20,"alcohol":6.5,"keg":"Sankey"},{"brewery":"Stadsbrouwerij De Pelgrim","name":"Mayflower","style":"Tripel","volume":20,"alcohol":7.3,"keg":"KeyKeg"},{"brewery":"de naeckte brouwers","name":"ZONNEGLOED","style":"Saison","volume":20,"alcohol":6.8,"keg":"Alumasc"},{"brewery":"Texelse Bierbrouwerij","name":"Skuumkoppe","style":"Witbier","volume":20,"alcohol":6,"keg":"Sankey"},{"brewery":"Leidsch Bier","name":"Leidsch Blond","style":"Blond","volume":20,"alcohol":6.5,"keg":"Alumasc"},{"brewery":"Brouwerij de Molen","name":"Dag & Dauw","style":"Stout","volume":10,"alcohol":7.7,"keg":"Sankey"}]}'

