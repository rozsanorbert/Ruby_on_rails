namespace :db do
  task populate: :environment do
    puts "populating..."
    office = Office.create(country:'Magyarország', city: 'Szeged', address: 'Szeged utca 34')
    office.tools.create(name: 'Íróasztal', quantity: '120')
    office.tools.create(name: 'Kamion', quantity: '20')
    office.tools.create(name: 'Számítógép', quantity: '110')
    office.employees.create(name: 'Kiss János', birth: '1982.05.05',
                            address: 'Szeged, Szeged utca 43', phone: '06308887777',
                            salary: '2700', job: 'Mindenes')
    office.employees.create(name: 'Róka Koma', birth: '1990.10.23',
                            address: 'Sándorfalva, Fürdő utca 12', phone: '06703456789',
                            salary: '2700', job: 'Portás')
    office.employees.create(name: 'Farkas Ádám', birth: '1976.11.10',
                            address: 'Szeged, Bodza utca 55', phone: '06205536789',
                            salary: '6000', job: 'Fejlesztő')
    officeMarseille = Office.create(country:'Franciaország', city: 'Marseille', address: 'Ismeretlen utca 44/B')
    officeMarseille.tools.create(name: 'EUR raklap', quantity: '230')
    officeMarseille.tools.create(name: 'Rekesz', quantity: '400')
    officeMarseille.employees.create(name: 'Francia Ember', birth: '1967.01.14',
                            address: 'Marseille, Tenger utca 320', phone: '64738382822',
                            salary: '50', job: 'Logisztikai ügyintéző')
    officeBern = Office.create(country:'Svájc', city: 'Bern', address: 'Vicces utca 120')
    officeBern.tools.create(name: 'Bor, 1 literes', quantity: '1200')
    officeBern.employees.create(name: 'Idős Jóska', birth: '1888.03.17',
                                     address: 'Bern, Hegyi utca 111', phone: '3432752444',
                                     salary: '60', job: 'Borkóstoló')
  end
end