# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

root = Folder.create(name: 'Files')
my_documents = root.folders.create(name: 'Documents')
my_pictures = root.folders.create(name: 'Pictures')
my_movies = root.folders.create(name: 'Movies')

my_pictures.folders.create(name: 'Home Office')
my_pictures.folders.create(name: 'Holidays')
my_pictures.folders.create(name: 'Portraits')

root.documents.create(name: 'Unsorted.png')

my_documents.documents.create(name: 'My File.pdf')
my_documents.documents.create(name: 'My File2.docx')
my_documents.documents.create(name: 'My File3.pdf')

my_pictures.documents.create(name: 'profile.png')
my_pictures.documents.create(name: 'image.jpg')

my_movies.documents.create(name: 'twitter_clone.mp4')
