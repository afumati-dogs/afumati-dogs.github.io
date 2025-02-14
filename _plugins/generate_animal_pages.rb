module Jekyll
  class AnimalPageGenerator < Generator
    safe true
    priority :highest
        def generate(site)
        puts  "Starte AnimalPageGenerator..."


        if site.data['dogs'].nil? || site.data['dogs'].empty?
        puts "⚠️ FEHLER: Keine Hunde-Daten gefunden!"
        return
        end

        site.data['dogs'].each do |dog|
        puts "Generiere Seite für 🐶 #{dog['name']}"
        site.pages << AnimalPage.new(site, site.source, dog, "dog")
        end

        if site.data['cats'].nil? || site.data['cats'].empty?
        puts "⚠️ FEHLER: Keine Katzen-Daten gefunden!"
        return
        end

        site.data['cats'].each do |cat|
        puts "Generiere Seite für 🐱 #{cat['name']}"
        site.pages << AnimalPage.new(site, site.source, cat, "cat")
        end
        end


  end

  class AnimalPage < Page
    def initialize(site, base, animal, type)
      @site = site
      @base = base
      @dir  = "#{type}/#{animal['name'].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')}"
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'animal.html')
      self.data['title'] = animal['name']
      self.data['name'] = animal['name']
      self.data['image'] = animal['image']
      self.data['age'] = animal['age']
      self.data['size'] = animal['size']
      self.data['dog_number'] = animal['dog_number']
      self.data['sex'] = animal['sex']
      self.data['character'] = animal['character']
      self.data['text_dog'] = animal['text_dog']
      self.data['text_home'] = animal['text_home']
    end
  end
end