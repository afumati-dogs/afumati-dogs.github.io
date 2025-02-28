module Jekyll
  class AnimalPageGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      puts "Starte AnimalPageGenerator..."

      generate_animal_pages(site, "dogs")
      generate_animal_pages(site, "cats")
    end

    def generate_animal_pages(site, animal_type)
      return if site.data[animal_type].nil? || site.data[animal_type].empty?

      site.data[animal_type].each do |animal|
        puts "Generiere Seite für #{animal_type} #{animal['name']}"

        # Finde alle passenden Bilder für das Tier
        images = find_animal_images(site.static_files, animal['name'], animal_type)

        # Erstes Bild als Hauptbild setzen (falls vorhanden)
        main_image = images.first || animal['image']

        # Erstelle die Seite
        site.pages << AnimalPage.new(site, site.source, animal, animal_type, main_image, images)
      end
    end

    def find_animal_images(static_files, animal_name, animal_type)
      folder_path = "/assets/img/#{animal_type}/"  # Angepasster Pfad
      name_downcased = animal_name.downcase.gsub(' ', '-')

      static_files
        .select { |file| file.path.include?(folder_path) && file.path.downcase.include?(name_downcased) }
        .map { |file| file.path.sub(/^.*?(\/assets\/img\/)/, '\1') }  # Nur den Teil ab /assets/ behalten
    end
  end

  class AnimalPage < Page
    def initialize(site, base, animal, type, main_image, images)
      @site = site
      @base = base

      # Stelle sicher, dass "dog" oder "cat" im Pfad enthalten ist
      @dir  = "#{type}/#{animal['name'].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')}"
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'animal.html')
      self.data['title'] = animal['name']
      self.data['name'] = animal['name']
      self.data['type'] = type  # Speichert "dog" oder "cat"
      self.data['image'] = main_image
      self.data['images'] = images
      self.data['age'] = animal['alter']
      self.data['size'] = animal['größe']
      self.data['dog_number'] = animal['hunde_nummer']
      self.data['sex'] = animal['geschlecht']
      self.data['character'] = animal['charakter']
      self.data['text_dog'] = animal['text_hund']
      self.data['text_home'] = animal['text_zuhause']
    end
  end
end
