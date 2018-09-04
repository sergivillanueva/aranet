class WelcomeController < ApplicationController
  def index
    @contact = Contact.new
    @images = (1..3).map do |i|
      {
        filename: "portfolio/limpieza-escalera-comunidad-vecinos-#{i}.jpg",
        caption: "Limpieza Comunidad de Vecinos",
        text: "Limpieza Escalera Comunidad de Vecinos",
        class: "limpieza-comunidad-vecinos"
      }
    end + (1..4).map do |i|
      {
        filename: "portfolio/limpieza-hogar-#{i}.jpg",
        caption: "Limpieza del Hogar",
        text: "Limpieza del Hogar",
        class: "limpieza-hogar"
      }
    end + (1..2).map do |i|
      {
        filename: "portfolio/limpieza-garajes-#{i}.jpg",
        caption: "Limpieza de Garajes",
        text: "Limpieza de Garajes",
        class: "limpieza-garajes"
      }
    end + (1..3).map do |i|
      {
        filename: "portfolio/limpieza-oficinas-#{i}.jpg",
        caption: "Limpieza de Oficinas",
        text: "Limpieza de Oficinas",
        class: "limpieza-oficinas"
      }
    end
  end
end
