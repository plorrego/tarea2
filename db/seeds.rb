# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(0..10).each do |i|
	news = ClassNews.create(
		title: "Noticia #{i}",
		drop: "Bajada de la noticia #{i}",
		body: "Cuerpo de la noticia #{i}")
	Comment.create(
		name: "Nombre#{i}",
		content: "Contenido del comentario de la noticia #{i}",
		class_news_id: news.id)
end