p1 = Project.create(title: "Urlaubsziel auswählen", description: "Bla bla reisen bla bla", start_date: "2016-08-01")
Project.create(title: "Scheidung einreichen", description: "Besser ist das", start_date: "2016-07-01")
Project.create(title: "Hund kaufen", description: "Rasse wählen, oder ins Tierheim gehen", start_date: "2016-05-01")

p1.validations.create(comment:"Neidisch", username:"johndoe", ranking: 5)
p1.validations.create(comment:"Blöder Hammel", username:"janedoe", ranking: 2)
p1.validations.create(comment:"Viel zu gefährlich, überall Taliban", username:"binladen", ranking: 3)