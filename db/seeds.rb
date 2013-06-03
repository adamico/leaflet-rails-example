#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Office.create [{name: "Beaubourg", details: "Musée national d'art moderne", address1: "Place Georges Pompidou", city: "Paris", country: "France", postal: "75004"}]
Office.create [{name: "Louvre", details: "Musée du Louvre", address1: "Musée du Louvre", city: "Paris", country: "France", postal: "75058"}]
Office.create [{name: "Notre Dame", details: "Cathédrale Notre Dame de Paris", address1: "6 Parvis Notre-Dame - Place Jean-Paul II", city: "Paris", country: "France", postal: "75004"}]
