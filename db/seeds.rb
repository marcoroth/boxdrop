# frozen_string_literal: true

Folder.destroy_all
Document.destroy_all

Document.create(name: 'Unsorted.png')
Document.create(name: 'drag_and_drop.me')
Document.create(name: 'rename.me')
Document.create(name: 'delete.me')

pictures = Folder.create(name: 'Pictures')
pictures.folders.create(name: 'Holidays')
pictures.folders.create(name: 'Portraits')
pictures.documents.create(name: 'avatar.png')
pictures.documents.create(name: 'image.jpg')

documents = Folder.create(name: 'Documents')
documents.documents.create(name: 'My File.pdf')
documents.documents.create(name: 'My File.docx')
documents.documents.create(name: 'My File.tex')

development = Folder.create(name: 'Development')
development.folders.create(name: 'Ruby')
development.folders.create(name: 'Rails')
development.folders.create(name: 'JavaScript')
development.folders.create(name: 'Bootstrap')
development.folders.create(name: 'Tailwind')
development.folders.create(name: 'StimulusReflex')

videos = Folder.create(name: 'Videos')
videos.documents.create(name: 'twitter_clone.mp4')

drifting_ruby = videos.folders.create(name: 'DriftingRuby')
drifting_ruby.documents.create(name: 'removing-friendly-id.mp4')
drifting_ruby.documents.create(name: 'reusable-ruby-on-rails-application-templates.mp4')
drifting_ruby.documents.create(name: 'contributing-to-a-gem.mp4')

gorails = videos.folders.create(name: 'GoRails')
gorails.documents.create(name: 'infinite-scroll-stimulus-js.mp4')
gorails.documents.create(name: 'rails-drag-and-drop-sortable.mp4')
gorails.documents.create(name: 'stimulus-reflex-basics.mp4')

media = Folder.create(name: 'Media')
media.folders.create(name: 'Movies')
series = media.folders.create(name: 'TV-Series')
series.folders.create(name: 'Breaking Bad')
series.folders.create(name: 'Better Call Saul')
series.folders.create(name: 'IT-Crowd')
series.folders.create(name: 'Silicon Valley')
series.folders.create(name: 'Black Mirror')

music = Folder.create(name: 'Music')
music.folders.create(name: 'House')
music.folders.create(name: 'Techno')
music.folders.create(name: 'Pop')
