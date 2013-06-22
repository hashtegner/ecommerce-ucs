# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


[
  {description: "Jogo Last of Us", price: 129.00, image: "http://img.submarino.com.br/produtos/01/00/item/113399/5/113399581G1.jpg"},
  {description: "Jogo PES 2013", price: 99.90, image: "http://img.submarino.com.br/produtos/01/03/item/111520/8/111520869G1.jpg"},
  {description: "Video Game", price: 1099.90, image: "http://img.submarino.com.br/produtos/01/00/item/113275/0/113275086G1.jpg"},
  {description: "Jogo God of War", price: 79.00, image: "http://img.submarino.com.br/produtos/01/00/item/112532/0/112532028G1.jpg"},
  {description: "Jogo Battlefield 3", price: 129.00, image: "http://img.submarino.com.br/produtos/01/00/item/113485/3/113485340G1.jpg"},
  {description: "Jogo Uncharted", price: 85.00, image: "http://img.submarino.com.br/produtos/01/03/item/109943/2/109943272G1.jpg"},
  {description: "Video Game", price: 1099.90, image: "http://img.submarino.com.br/produtos/01/00/item/113275/0/113275086G1.jpg"},
  {description: "Jogo God of War", price: 79.00, image: "http://img.submarino.com.br/produtos/01/00/item/112532/0/112532028G1.jpg"}
].each do |c|
  Item.create c
end
