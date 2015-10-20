# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Page.create(title: 'About', slug: 'about', content: 'About Pet Match')
Page.create(title: 'Contact', slug: 'contact', content: 'Contact')
Page.create(title: 'Help', slug: 'help', content: 'Help')
Page.create(title: 'Home', slug: 'home', content: 
'<!--=== Slider ===-->
<div class="slider-inner">
    <div id="da-slider" class="da-slider" style="background-position: 900% 0%;">
        <div class="da-slide da-slide-fromright da-slide-current">
            <h2><i>welcome</i> <br> <i>to pet</i><br> <i>match</i></h2>
            <p><i>The first</i> <br> <i>matchkmaking site</i><br> <i>for pets</i>
                <br><br> 
            </p>
            <div class="da-img"><img src="/assets/images/slider/1.jpg" alt=""></div>
        </div>
        <div class="da-slide da-slide-toleft">
            <h2><i>Is your</i> <br> <i>pet a</i> <br> <i>forever alone?</i></h2>
            <p><i>It doesn\'t matter what kind of pet you have.</i> <br> 
                <br><br>  
            </p>
            <div class="da-img span6">
                <div class="span6">
                    <iframe src="http://player.vimeo.com/video/59125130" width="100%" height="320" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
        <div class="da-slide da-slide-toleft">
            <h2><i>Find</i> <br> <i>its</i> <br> <i>other half</i></h2>
            <p><i>Don\'t wait and register it!</i> <br> <i>It makes finding the best match</i><br><i>for your pet easy.</i><br> 
                <br><br>    
            </p>
            <div class="da-img"><img src="/assets/images/slider/6.jpg" alt=""></div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>        
        </nav>
    <nav class="da-dots"><span class="da-dots-current"></span><span class=""></span><span class=""></span></nav></div><!--/da-slider-->
</div>
<!--/slider-->
<!--=== End Slider ===-->')
Page.create(title: 'Page Privacy', slug: 'privacy', content: 'Privacy')
Page.create(title: 'Page Terms', slug: 'terms', content: 'Conditions of use')
Page.create(title: 'Plans', slug: 'plans', content: 'Pet Match plans')

User.create! :name => 'Daniel Cruz', :email => 'kohku@yahoo.com', :password => 'set4now&Later', :password_confirmation => 'set4now&Later', :roles => [:admin, :membership, :author]

dog = PetType.create(name: 'Dog', published: true)
cat = PetType.create(name: 'Cat', published: true)
bird = PetType.create(name: 'Bird', published: true)

# dogs
PetBreed.create(name: 'Affenpinscher ', published: true, pet_type: dog)
PetBreed.create(name: 'Afgano ', published: true, pet_type: dog)
PetBreed.create(name: 'Akita ', published: true, pet_type: dog)
PetBreed.create(name: 'Akita Americano', published: true, pet_type: dog) 
PetBreed.create(name: 'Alano Español ', published: true, pet_type: dog)
PetBreed.create(name: 'American Bully ', published: true, pet_type: dog)
PetBreed.create(name: 'American Foxhound', published: true, pet_type: dog)
PetBreed.create(name: 'American Pit Bull Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'American Staffordshire ', published: true, pet_type: dog)
PetBreed.create(name: 'Antiguo perro de muestra Danés ', published: true, pet_type: dog)
PetBreed.create(name: 'Australian Silky Terrier ', published: true, pet_type: dog)
PetBreed.create(name: 'Azawakh', published: true, pet_type: dog)
PetBreed.create(name: 'Basset Hound', published: true, pet_type: dog)
PetBreed.create(name: 'Basset leonado de Bretaña', published: true, pet_type: dog)
PetBreed.create(name: 'Beagle', published: true, pet_type: dog)
PetBreed.create(name: 'Beagle-Harrier', published: true, pet_type: dog)
PetBreed.create(name: 'Bedlington Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Berger de Picardie', published: true, pet_type: dog)
PetBreed.create(name: 'Bichón Boloñés', published: true, pet_type: dog)
PetBreed.create(name: 'Bichón Frisé', published: true, pet_type: dog)
PetBreed.create(name: 'Bichón Habanero', published: true, pet_type: dog)
PetBreed.create(name: 'Billy', published: true, pet_type: dog)
PetBreed.create(name: 'Black And Tan Coonhound', published: true, pet_type: dog)
PetBreed.create(name: 'Bloodhound', published: true, pet_type: dog)
PetBreed.create(name: 'Bobtail', published: true, pet_type: dog)
PetBreed.create(name: 'Bodeguero Andaluz', published: true, pet_type: dog)
PetBreed.create(name: 'Border Collie', published: true, pet_type: dog)
PetBreed.create(name: 'Border Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Borzoi (galgo Ruso)', published: true, pet_type: dog)
PetBreed.create(name: 'Boston Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Bóxer', published: true, pet_type: dog)
PetBreed.create(name: 'Boyero Australiano', published: true, pet_type: dog)
PetBreed.create(name: 'Boyero de Flandes', published: true, pet_type: dog)
PetBreed.create(name: 'Boyero de las Ardenas', published: true, pet_type: dog)
PetBreed.create(name: 'Braco alemán de pelo corto', published: true, pet_type: dog)
PetBreed.create(name: 'Braco alemán de pelo duro', published: true, pet_type: dog)
PetBreed.create(name: 'Braco de Auvernia', published: true, pet_type: dog)
PetBreed.create(name: 'Braco de Weimar', published: true, pet_type: dog)
PetBreed.create(name: 'Braco del Ariège', published: true, pet_type: dog)
PetBreed.create(name: 'Braco del Bourbonnais', published: true, pet_type: dog)
PetBreed.create(name: 'Braco francés, tipo Gascuña, talla grande.', published: true, pet_type: dog)
PetBreed.create(name: 'Braco francés, tipo Pirineos talla pequeña', published: true, pet_type: dog)
PetBreed.create(name: 'Braco italiano', published: true, pet_type: dog)
PetBreed.create(name: 'Braco San Germain', published: true, pet_type: dog)
PetBreed.create(name: 'Briard', published: true, pet_type: dog)
PetBreed.create(name: 'Brittany', published: true, pet_type: dog)
PetBreed.create(name: 'Broholmer', published: true, pet_type: dog)
PetBreed.create(name: 'Buhund Noruego', published: true, pet_type: dog)
PetBreed.create(name: 'Bull Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Bull Terrier Miniatura', published: true, pet_type: dog)
PetBreed.create(name: 'Bulldog', published: true, pet_type: dog)
PetBreed.create(name: 'Bulldog americano', published: true, pet_type: dog)
PetBreed.create(name: 'Bulldog Francés', published: true, pet_type: dog)
PetBreed.create(name: 'Bullmastín', published: true, pet_type: dog)
PetBreed.create(name: 'Cavalier King Charles', published: true, pet_type: dog)
PetBreed.create(name: 'Chihuahua', published: true, pet_type: dog)
PetBreed.create(name: 'Chin Japonés', published: true, pet_type: dog)
PetBreed.create(name: 'Chow Chow', published: true, pet_type: dog)
PetBreed.create(name: 'Cirneco Del Etna', published: true, pet_type: dog)
PetBreed.create(name: 'Clumber Spaniel', published: true, pet_type: dog)
PetBreed.create(name: 'Cobrador de Nueva Escocia', published: true, pet_type: dog)
PetBreed.create(name: 'Cocker Spaniel', published: true, pet_type: dog)
PetBreed.create(name: 'Cocker Americano', published: true, pet_type: dog)
PetBreed.create(name: 'Collie', published: true, pet_type: dog)
PetBreed.create(name: 'Collie Barbudo', published: true, pet_type: dog)
PetBreed.create(name: 'Collie Smooth ', published: true, pet_type: dog)
PetBreed.create(name: 'Corgi Galés Cárdigan', published: true, pet_type: dog)
PetBreed.create(name: 'Corgi Galés Pembroke', published: true, pet_type: dog)
PetBreed.create(name: 'Cotón de Tuléar', published: true, pet_type: dog)
PetBreed.create(name: 'Curly Coated Retriever (de pelo rizado)', published: true, pet_type: dog)
PetBreed.create(name: 'Dálmata', published: true, pet_type: dog)
PetBreed.create(name: 'Dandie Dinmont Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Deerhound Escocés', published: true, pet_type: dog)
PetBreed.create(name: 'Doberman', published: true, pet_type: dog)
PetBreed.create(name: 'Dogo Argentino', published: true, pet_type: dog)
PetBreed.create(name: 'Dogo Canario', published: true, pet_type: dog)
PetBreed.create(name: 'Dogo de Burdeos', published: true, pet_type: dog)
PetBreed.create(name: 'Dogo Mallorquín', published: true, pet_type: dog)
PetBreed.create(name: 'Drever', published: true, pet_type: dog)
PetBreed.create(name: 'Elkhound Noruego', published: true, pet_type: dog)
PetBreed.create(name: 'Epagneul breton', published: true, pet_type: dog)
PetBreed.create(name: 'Eurasier', published: true, pet_type: dog)
PetBreed.create(name: 'Faraón Hound', published: true, pet_type: dog)
PetBreed.create(name: 'Field Spaniel', published: true, pet_type: dog)
PetBreed.create(name: 'Fila Brasileiro', published: true, pet_type: dog)
PetBreed.create(name: 'Fila de San Miguel', published: true, pet_type: dog)
PetBreed.create(name: 'Fox Terrier Pelo Duro', published: true, pet_type: dog)
PetBreed.create(name: 'Fox Terrier de Pelo Liso', published: true, pet_type: dog)
PetBreed.create(name: 'Fox Terrier Toy', published: true, pet_type: dog)
PetBreed.create(name: 'Foxhound Americano', published: true, pet_type: dog)
PetBreed.create(name: 'Foxhound Inglés', published: true, pet_type: dog)
PetBreed.create(name: 'Galgo Español', published: true, pet_type: dog)
PetBreed.create(name: 'Galgo Italiano', published: true, pet_type: dog)
PetBreed.create(name: 'Gascon Saintongeois', published: true, pet_type: dog)
PetBreed.create(name: 'Glen Of Imaal Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Golden Retriever', published: true, pet_type: dog)
PetBreed.create(name: 'Gran Basset Grifón vendeano', published: true, pet_type: dog)
PetBreed.create(name: 'Gran Danés', published: true, pet_type: dog)
PetBreed.create(name: 'Greyhound', published: true, pet_type: dog)
PetBreed.create(name: 'Grifon Belga', published: true, pet_type: dog)
PetBreed.create(name: 'Grifón de Bruselas', published: true, pet_type: dog)
PetBreed.create(name: 'Grifón de muestra bohemio de pelo duro', published: true, pet_type: dog)
PetBreed.create(name: 'Grifon de muestra eslovaco de pelo duro', published: true, pet_type: dog)
PetBreed.create(name: 'Grifón de muestra Korthals de pelo duro', published: true, pet_type: dog)
PetBreed.create(name: 'Hamilton Stovare', published: true, pet_type: dog)
PetBreed.create(name: 'Harrier', published: true, pet_type: dog)
PetBreed.create(name: 'Hokkaïdo ', published: true, pet_type: dog)
PetBreed.create(name: 'Hovawart', published: true, pet_type: dog)
PetBreed.create(name: 'Husky Siberiano', published: true, pet_type: dog)
PetBreed.create(name: 'Irish Soft Coated Wheaten Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Jack Russell Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Jamthund', published: true, pet_type: dog)
PetBreed.create(name: 'Kai', published: true, pet_type: dog)
PetBreed.create(name: 'Karjalankarhukoira ', published: true, pet_type: dog)
PetBreed.create(name: 'Keeshond', published: true, pet_type: dog)
PetBreed.create(name: 'Kerry Blue Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Kishu', published: true, pet_type: dog)
PetBreed.create(name: 'Komondor', published: true, pet_type: dog)
PetBreed.create(name: 'Korea Jinco Dog', published: true, pet_type: dog)
PetBreed.create(name: 'Kromfohrländer', published: true, pet_type: dog)
PetBreed.create(name: 'Kuvasz', published: true, pet_type: dog)
PetBreed.create(name: 'Labrador Retriever', published: true, pet_type: dog)
PetBreed.create(name: 'Laïka de Siberia oriental', published: true, pet_type: dog)
PetBreed.create(name: 'Laïka Ruso-Europeo', published: true, pet_type: dog)
PetBreed.create(name: 'Lakeland Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Landseer', published: true, pet_type: dog)
PetBreed.create(name: 'Lebrel Húngaro', published: true, pet_type: dog)
PetBreed.create(name: 'Leonberger', published: true, pet_type: dog)
PetBreed.create(name: 'Lhasa Apso', published: true, pet_type: dog)
PetBreed.create(name: 'Lundehund noruego', published: true, pet_type: dog)
PetBreed.create(name: 'Löwchen', published: true, pet_type: dog)
PetBreed.create(name: 'Malamute de Alaska', published: true, pet_type: dog)
PetBreed.create(name: 'Maltés', published: true, pet_type: dog)
PetBreed.create(name: 'Mastín', published: true, pet_type: dog)
PetBreed.create(name: 'Mastín Napolitano', published: true, pet_type: dog)
PetBreed.create(name: 'Mastín Tibetano', published: true, pet_type: dog)
PetBreed.create(name: 'Mudi ', published: true, pet_type: dog)
PetBreed.create(name: 'Münsterländer grande', published: true, pet_type: dog)
PetBreed.create(name: 'Münsterländer pequeño', published: true, pet_type: dog)
PetBreed.create(name: 'Otterhound', published: true, pet_type: dog)
PetBreed.create(name: 'Papillon', published: true, pet_type: dog)
PetBreed.create(name: 'Parson Russell Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor Alemán', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor Australiano', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor Belga', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor Blanco Suizo', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor Catalán', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor de Anatolia', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor de Beauce', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor de Los Pirineos', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor de Shetland', published: true, pet_type: dog)
PetBreed.create(name: 'Pastor Polaco de Tierras Bajas', published: true, pet_type: dog)
PetBreed.create(name: 'Pequeño Basset Grifón vendeano', published: true, pet_type: dog)
PetBreed.create(name: 'Pequeño Brabanzón', published: true, pet_type: dog)
PetBreed.create(name: 'Pequeño perro holandés para la caza acuática', published: true, pet_type: dog)
PetBreed.create(name: 'Pequinés', published: true, pet_type: dog)
PetBreed.create(name: 'Perdiguero de Burgos', published: true, pet_type: dog)
PetBreed.create(name: 'Perdiguero de Drente', published: true, pet_type: dog)
PetBreed.create(name: 'Perdiguero portugués', published: true, pet_type: dog)
PetBreed.create(name: 'Entlebucher', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Crestado Chino', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Agua Americano', published: true, pet_type: dog)
PetBreed.create(name: 'Perro De Agua Español', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Aguas Portugués', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Canaan', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Castro Laboreiro', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Groenlandia', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Montaña Appenzell', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Montaña Bernés', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Montaña de la Sierra de la Estrela', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Montaña de Los Pirineos', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Montaña del Atlas', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Montaña Gran Suizo', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de muestra alemán de pelo cerdoso', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor bergamasco', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor de Asia Central', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor de Karst', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor de Rusia Meridional', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor del Cáucaso', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Pastor islandés', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor polaco de las Llanuras', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor polaco de Podhale', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de pastor portugués', published: true, pet_type: dog)
PetBreed.create(name: 'Perro de Pastor yugoslavo de Charplanina', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Esquimal Americano', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Esquimal Canadiense', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Lobo Checoslavaco', published: true, pet_type: dog)
PetBreed.create(name: 'Perro lobo de Sarloos', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Pastor Croato', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Pastor Mallorquín', published: true, pet_type: dog)
PetBreed.create(name: 'Perro pastor Maremmano-Abruzzese', published: true, pet_type: dog)
PetBreed.create(name: 'Perro sin Pelo del Perú', published: true, pet_type: dog)
PetBreed.create(name: 'Perro Smous holandés', published: true, pet_type: dog)
PetBreed.create(name: 'Pinscher', published: true, pet_type: dog)
PetBreed.create(name: 'Pinscher austriaco', published: true, pet_type: dog)
PetBreed.create(name: 'Pinscher Miniatura', published: true, pet_type: dog)
PetBreed.create(name: 'Plott Hound', published: true, pet_type: dog)
PetBreed.create(name: 'Podenco Canario', published: true, pet_type: dog)
PetBreed.create(name: 'Podenco Ibicenco', published: true, pet_type: dog)
PetBreed.create(name: 'Podenco Portugués', published: true, pet_type: dog)
PetBreed.create(name: 'Pointer', published: true, pet_type: dog)
PetBreed.create(name: 'Pointer Alemán de Pelo Corto', published: true, pet_type: dog)
PetBreed.create(name: 'Pointer Alemán de Pelo Duro', published: true, pet_type: dog)
PetBreed.create(name: 'Poitevin', published: true, pet_type: dog)
PetBreed.create(name: 'Pomerania', published: true, pet_type: dog)
PetBreed.create(name: 'Porcelaine', published: true, pet_type: dog)
PetBreed.create(name: 'Pudelpointer', published: true, pet_type: dog)
PetBreed.create(name: 'Puli', published: true, pet_type: dog)
PetBreed.create(name: 'Pumi', published: true, pet_type: dog)
PetBreed.create(name: 'Rafeiro del Alentejo', published: true, pet_type: dog)
PetBreed.create(name: 'Rastreador de Hannover', published: true, pet_type: dog)
PetBreed.create(name: 'Rastreador montañes de Baviera', published: true, pet_type: dog)
PetBreed.create(name: 'Retriever de La Bahía de Chesapeake', published: true, pet_type: dog)
PetBreed.create(name: 'Retriever de Pelo Liso', published: true, pet_type: dog)
PetBreed.create(name: 'Ridgeback de Rodesia', published: true, pet_type: dog)
PetBreed.create(name: 'Rottweiler', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso alemán', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso Artesiano', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso austriaco negro y fuego', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso de Bosnia de pelo cerdoso', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso de Hygen', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso de las Montañas de Montenegro', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso de Smaland', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso de Transilvania', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso del Tirol', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso eslovaco', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso español', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso Estirio de pelo duro', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso finlandes', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso francés tricolor', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso Halden', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso Italiano (de pelo corto)', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso Italiano (de pelo duro)', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso noruego', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso polaco', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso Schiller', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso serbio', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso suizo', published: true, pet_type: dog)
PetBreed.create(name: 'Sabueso tricolor serbio', published: true, pet_type: dog)
PetBreed.create(name: 'Saluki (galgo Persa)', published: true, pet_type: dog)
PetBreed.create(name: 'Samoyedo', published: true, pet_type: dog)
PetBreed.create(name: 'San Bernardo', published: true, pet_type: dog)
PetBreed.create(name: 'Schapendoes neerlandés', published: true, pet_type: dog)
PetBreed.create(name: 'Schipperke', published: true, pet_type: dog)
PetBreed.create(name: 'Schnauzer', published: true, pet_type: dog)
PetBreed.create(name: 'Schnauzer Gigante', published: true, pet_type: dog)
PetBreed.create(name: 'Schnauzer Miniatura', published: true, pet_type: dog)
PetBreed.create(name: 'Sealyham Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Setter Gordon', published: true, pet_type: dog)
PetBreed.create(name: 'Setter Inglés', published: true, pet_type: dog)
PetBreed.create(name: 'Setter Irlandés', published: true, pet_type: dog)
PetBreed.create(name: 'Setter irlandés rojo', published: true, pet_type: dog)
PetBreed.create(name: 'Setter irlandés rojo y blanco', published: true, pet_type: dog)
PetBreed.create(name: 'Shar Pei', published: true, pet_type: dog)
PetBreed.create(name: 'Shiba', published: true, pet_type: dog)
PetBreed.create(name: 'ShihTzu', published: true, pet_type: dog)
PetBreed.create(name: 'Shikoku', published: true, pet_type: dog)
PetBreed.create(name: 'Silky Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Sloughi (galgo árabe)', published: true, pet_type: dog)
PetBreed.create(name: 'Spaniel continental enano', published: true, pet_type: dog)
PetBreed.create(name: 'Spaniel de Agua Irlandés', published: true, pet_type: dog)
PetBreed.create(name: 'Spaniel de Pont-Audemer', published: true, pet_type: dog)
PetBreed.create(name: 'Spaniel de Sussex', published: true, pet_type: dog)
PetBreed.create(name: 'Spaniel Picardo', published: true, pet_type: dog)
PetBreed.create(name: 'Spaniel Tibetano', published: true, pet_type: dog)
PetBreed.create(name: 'Spinone Italiano', published: true, pet_type: dog)
PetBreed.create(name: 'Spitz Alemán', published: true, pet_type: dog)
PetBreed.create(name: 'Spitz Finlandés', published: true, pet_type: dog)
PetBreed.create(name: 'Spitz Japonés', published: true, pet_type: dog)
PetBreed.create(name: 'Springer Spaniel Galés', published: true, pet_type: dog)
PetBreed.create(name: 'Springer Spaniel Inglés', published: true, pet_type: dog)
PetBreed.create(name: 'Sptiz de Norrbotten', published: true, pet_type: dog)
PetBreed.create(name: 'Stabyhoun', published: true, pet_type: dog)
PetBreed.create(name: 'Staffordshire Bull Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Tchuvatch eslovaco', published: true, pet_type: dog)
PetBreed.create(name: 'Teckel', published: true, pet_type: dog)
PetBreed.create(name: 'Tejonero alpino', published: true, pet_type: dog)
PetBreed.create(name: 'Tejonero de Westfalia', published: true, pet_type: dog)
PetBreed.create(name: 'Terranova', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Australiano', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Brasileño', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier cazador alemán', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Cesky', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier de Airedale', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier de Norfolk', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier de Norwich', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier de Skye', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Escocés', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Galés', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Irlandés', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier japonés', published: true, pet_type: dog)
PetBreed.create(name: 'Terrier Tibetano', published: true, pet_type: dog)
PetBreed.create(name: 'Thai Ridgeback Dog ', published: true, pet_type: dog)
PetBreed.create(name: 'Tosa Inu', published: true, pet_type: dog)
PetBreed.create(name: 'Valhund Sueco', published: true, pet_type: dog)
PetBreed.create(name: 'Vizsla', published: true, pet_type: dog)
PetBreed.create(name: 'Volpino Italiano', published: true, pet_type: dog)
PetBreed.create(name: 'West Highland', published: true, pet_type: dog)
PetBreed.create(name: 'Wetterhound', published: true, pet_type: dog)
PetBreed.create(name: 'Wheaten Terrier', published: true, pet_type: dog)
PetBreed.create(name: 'Whippet', published: true, pet_type: dog)
PetBreed.create(name: 'Wolfhound Irlandés', published: true, pet_type: dog)
PetBreed.create(name: 'xoloitzcuintle', published: true, pet_type: dog)
PetBreed.create(name: 'Yorkshire terrier', published: true, pet_type: dog)

# cats
PetBreed.create(name: 'Abisinio', published: true, pet_type: cat)
PetBreed.create(name: 'American Curl', published: true, pet_type: cat)
PetBreed.create(name: 'Angora Turco', published: true, pet_type: cat)
PetBreed.create(name: 'Azul Ruso', published: true, pet_type: cat)
PetBreed.create(name: 'Balinés', published: true, pet_type: cat)
PetBreed.create(name: 'Bengalí', published: true, pet_type: cat)
PetBreed.create(name: 'Bombay', published: true, pet_type: cat)
PetBreed.create(name: 'Bosque de Noruega', published: true, pet_type: cat)
PetBreed.create(name: 'Británico de pelo corto', published: true, pet_type: cat)
PetBreed.create(name: 'Británico de Pelo Corto Azul', published: true, pet_type: cat)
PetBreed.create(name: 'Británico de pelo largo', published: true, pet_type: cat)
PetBreed.create(name: 'Burmés', published: true, pet_type: cat)
PetBreed.create(name: 'Burmilla', published: true, pet_type: cat)
PetBreed.create(name: 'Cartujo', published: true, pet_type: cat)
PetBreed.create(name: 'Cornish Rex', published: true, pet_type: cat)
PetBreed.create(name: 'Devon Rex', published: true, pet_type: cat)
PetBreed.create(name: 'Europeo de Pelo Corto', published: true, pet_type: cat)
PetBreed.create(name: 'Exótico de pelo corto', published: true, pet_type: cat)
PetBreed.create(name: 'German Rex', published: true, pet_type: cat)
PetBreed.create(name: 'Highland Fold', published: true, pet_type: cat)
PetBreed.create(name: 'Himalayo', published: true, pet_type: cat)
PetBreed.create(name: 'Javanés', published: true, pet_type: cat)
PetBreed.create(name: 'Korat', published: true, pet_type: cat)
PetBreed.create(name: 'Maine Coon', published: true, pet_type: cat)
PetBreed.create(name: 'Manx', published: true, pet_type: cat)
PetBreed.create(name: 'Mau Egipcio', published: true, pet_type: cat)
PetBreed.create(name: 'Neva Masquerade', published: true, pet_type: cat)
PetBreed.create(name: 'Ocicat', published: true, pet_type: cat)
PetBreed.create(name: 'Oriental de Pelo Corto', published: true, pet_type: cat)
PetBreed.create(name: 'Persa', published: true, pet_type: cat)
PetBreed.create(name: 'Peterbald', published: true, pet_type: cat)
PetBreed.create(name: 'Ragdoll', published: true, pet_type: cat)
PetBreed.create(name: 'Sagrado de Birmania', published: true, pet_type: cat)
PetBreed.create(name: 'Scottish Fold', published: true, pet_type: cat)
PetBreed.create(name: 'Selkirk Rex', published: true, pet_type: cat)
PetBreed.create(name: 'Siamés', published: true, pet_type: cat)
PetBreed.create(name: 'Siberiano', published: true, pet_type: cat)
PetBreed.create(name: 'Snowshoe', published: true, pet_type: cat)
PetBreed.create(name: 'Somalí', published: true, pet_type: cat)
PetBreed.create(name: 'Sphynx', published: true, pet_type: cat)
PetBreed.create(name: 'Toyger', published: true, pet_type: cat)
PetBreed.create(name: 'Van Turco', published: true, pet_type: cat)
