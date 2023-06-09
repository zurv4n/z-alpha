Translation = {}

Translation.Langs = {
    English = {
        promptselect = "| Character selected:  ~o~",
        promptselect2 = "~q~ | Money: ~o~",
        promptlabel_select = " select the gender gender",
        promptlabel_female = "Female character",
        promptlabel_male = "Male character",
        Inputs = {
            confirm = "Confirm",
            placeholder = "firstname lastname",
            inputheader = "CHOOSE CHARACTER NAME",
            title = "Letters only min 5 max 20",
            banned = "you cant use those names as they are consider banned in this server"
        },
        MenuCreation = {
            title = "Character Creation",
            subtitle = "Sub Menu",
            label = "Name Choosen",
            element = { label = "Appearance", desc = "Choose Appearance of your character" },
            element2 = { label = "Clothes", desc = "Choose Character Clothing" },
            element3 = {
                label = "Choose A Name",
                desc =
                "Choose a name for your character make sure you read the rules for character naming,<br> if you fail to follow the rules this character will be delted with no warning"
            },
            element4 = { label = "Start Journey", desc = "Start your journey by pressing enter" },
        },
        MenuClothes = {
            title       = "Clothing",
            subtitle    = "Sub Menu",
            CoatClosed  = "Coats Closed",
            Coat        = "Coats",
            Hat         = "Hats",
            EyeWear     = "Eye wear",
            Mask        = "Masks",
            NeckWear    = "Neck wear",
            NeckTies    = "Neck Ties",
            Shirt       = "Shirts",
            Suspender   = "Suspenders",
            Vest        = "Vests",
            Poncho      = "Ponchos",
            Cloak       = "Cloaks",
            Glove       = "Gloves",
            Belt        = "Belts",
            Pant        = "Pants",
            Boots       = "Boots",
            Spurs       = "Boots Accessories",
            Bracelet    = "Bracelets",
            Buckle      = "Belt Buckles",
            Skirt       = "Skirts",
            Chap        = "Chaps",
            Spats       = "Spats",
            GunbeltAccs = "Gun Belts Accessories",
            Gauntlets   = "Gaunlets",
            Loadouts    = "Loadouts",
            Accessories = "Accessories",
            Satchels    = "Satchels",
            Dress       = "Dresses",
            Holster     = "Left Holster",
            Gunbelt     = "Gun Belts",
            RingRh      = "Rings Right",
            RingLh      = "Rings Left",
        },
        MenuComponents = {
            title = "Components",
            subtitle = "Sub Menu",
            element = { label = "Component ", desc = "there are " },
            element2 = { label = " Color  #", desc = "Choose Component color" },
        },
        MenuAppearance = {
            title = "Appearance",
            subtitle = "Sub Menu",
            element = { label = "Body", desc = "Choose the type of your characters body" },
            element2 = { label = "Heritage", desc = "Choose your characters Herritage" },
            element3 = { label = "Hair", desc = "Choose you character type of hair" },
            element4 = { label = "Ageing", desc = "Character age " },
            element5 = { label = "Height", desc = "Choose the type of your characters body<br> Tall 3 normal 2 short 1 " },
            element6 = { label = "Face", desc = "Choose face features" },
            element7 = { label = "Life style", desc = "choose life style of your character" },
            element8 = { label = "Make up", desc = "Choose make up" },
            short = "Short",
            normal = "Normal",
            tall = "Tall",
        },
        MenuAge = {
            title = "Age",
            subtitle = "Sub Menu",
            element = { label = "Age", desc = "Choose the age of your character" },
            element2 = { label = "Opacity", desc = "there are ", desc2 = "Choose the opacity of your characters age" },
            label3 = "Not Visible",
            label4 = "Visible ",
        },
        MenuBody = {
            title = "Body",
            subtitle = "Sub Menu",
            element = { label = "Body type", desc = "there are ", },
            element2 = { label = "Waist #", desc = "there are #", desc2 = "Waist types" },
        },
        MenuHeritage = {
            title = "Herritage",
            subtitle = "Sub Menu",
            element = { label = "Skin color", desc = "there are ", desc2 = "types of skin color " },
            element2 = { label = "Types ", desc = "Choose the type of your characters face" },
            element3 = { label = "Heritage #", desc = " there are #", desc2 = "types of heritage" },
        },
        MenuHair = {
            title = "Hair",
            subtitle = "Sub Menu",
            element = { label = "Hair", desc = "Choose characters hair" },
            element2 = { label = "Beard", desc = "Choose characters beard" },
            element3 = { label = "Bear stabble", desc = "Choose characters beard stabble" },
            element4 = { label = "Hair Accessories", desc = "Choose characters hair accessories" },
            element5 = { label = "Eye Brows", desc = "Choose characters eye brows" },
        },
        MenuHairSelection = {
            title = "Hair",
            subtitle = "Sub Menu",
            element = { label = "Component ", desc = "there are ", desc2 = "types of " },
            element2 = { label = "Color", desc = "there are ", desc2 = "types of " },
        },
        MenuBeardEyeBrows = {
            title = "Appearance",
            subtitle = "Sub Menu",
            element = { label = "", desc = "choose a type" },
            element2 = { label = "Color", desc = "Choose Color" },
            element3 = { label = "Opacity", desc = "Choose Opcaity" },
        },
        MenuFacial = {
            title = "Face Features",
            subtitle = "Sub Menu",
            element = { label = "Eye color", desc = "eye color" },
            element2 = { label = "Teeth", desc = "type of teeth " },
            element3 = { label = "Jaw", desc = "adjust jaw bone", },
            element4 = { label = "Chin", desc = "adjust chin bone" },
            element5 = { label = "Head size", desc = "adjust head size " },
            element6 = { label = "Nose", desc = "adjust nose" },
            element7 = { label = "Ears", desc = "adjust ears size" },
            element8 = { label = "Mouth and Lips", desc = "adjust mouth and lips " },
            element9 = { label = "Cheek bones", desc = "Choose characters facial hair opacity" },
            element10 = { label = "Eyes and brows", desc = "adjust cheek bokes" },
        },
        MenuFaceModify = {
            title = "Face Features",
            subtitle = "Sub Menu",
            element = { label = "", desc = "current selection: " },
        },
        MenuLifeStyle = {
            title = "Life Style",
            subtitle = "Sub Menu",
            label = " Opacity",
            desc = "Choose opacity",
            element = { label = "Moles", desc = "Choose life style of your character" },
            element2 = { label = "Spots", desc = "Choose life style opacity of your character" },
            element3 = { label = "Complex", desc = "Choose life style opacity of your character" },
            element4 = { label = "Acne", desc = "Choose life style opacity of your character" },
            element5 = { label = "Freckles", desc = "Choose life style opacity of your character" },
            element6 = { label = "Discoloration", desc = "Choose life style opacity of your character" },
            element7 = { label = "Scars", desc = "Choose life style opacity of your character" },
            element8 = { label = "Grime", desc = "Choose life style opacity of your character" },
        },
        MenuMakeup = {
            title = "Makeup",
            subtitle = "Sub Menu",
            element = { label = "Lipstick", desc = "Choose makeup of your character" },
            element2 = { label = "Blush", desc = "Choose makeup  of your character" },
            element3 = { label = "Eyeliner", desc = "Choose makeup of your character" },
            element4 = { label = "Shadow", desc = "Choose makeup of your character" },
            element5 = { label = "Texture", desc = "Choose makeupof your character" },
            element6 = { label = "Color", desc = "Choose makeup of your character" },
            element7 = { label = "Color secondary", desc = "Choose makeup of your character" },
            element8 = { label = "Opacity", desc = "Choose makeup  of your character" },
        },
    },
    Portugues = {
        promptselect = "| Personagem Selecionado:  ~o~",
        promptselect2 = "~q~ | Dinheiro: ~o~",
        promptlabel_select = "Escolha o Gênero do seu Personagem",
        promptlabel_female = "Feminino",
        promptlabel_male = "Masculino",
        Inputs = {
            confirm = "Confirme",
            placeholder = "Primeiro e Último Nome",
            inputheader = "Escolha o Nome do Personagem",
            title = "Apenas Letras min 5 max 20",
            banned = "Não pode utilizar os nomes escolhidos uma vez que estão banidos deste servidor."
        },
        MenuCreation = {
            title = "Criação do Personagem",
            subtitle = "Escolha o seu Personagem",
            label = "Nome Escolhido",
            element = { label = "Aparência", desc = "Escolha a Aparência do seu Personagem" },
            element2 = { label = "Roupas", desc = "Escolha a Roupa do seu Personagem" },
            element3 = {
                label = "Escolha um Nome",
                desc =
                "Escolha um Nome para o seu Personagem<br> Se utilizar um nome proibido o personagem será eliminado."
            },
            element4 = { label = "Começe a sua Jornada", desc = "Carregue no Enter para começar a sua Jornada" },
        },
        MenuClothes = {
            title       = "Lista de Roupas",
            subtitle    = "Escolha aqui as suas Roupas",
            CoatClosed  = "Casacos Fechados",
            Coat        = "Casacos Aberto",
            Hat         = "Chapéus",
            EyeWear     = "Óculos",
            Mask        = "Mascáras",
            NeckWear    = "Laços",
            NeckTies    = "Gravatas",
            Shirt       = "Camisas",
            Suspender   = "Suspensórios",
            Vest        = "Coletes",
            Poncho      = "Ponchos",
            Cloak       = "Capas",
            Glove       = "Luvas",
            Belt        = "Cintos",
            Pant        = "Calças",
            Boots       = "Botas",
            Spurs       = "Acessórios para Botas",
            Bracelet    = "Braceletes",
            Buckle      = "Medalhão do Cinto",
            Skirt       = "Saias",
            Chap        = "Portetor de Calças",
            Spats       = "Portetor de Botas",
            GunbeltAccs = "Acessórios para Coldres",
            Gauntlets   = "Braceletes",
            Loadouts    = "Porta Carregadores",
            Accessories = "Acessórios",
            Satchels    = "Malas",
            Dress       = "Vestidos",
            Holster     = "Coldre Esquerdo",
            Gunbelt     = "Coldres",
            RingRh      = "Aneis da mão direita",
            RingLh      = "Aneis da mão esquerda",
        },
        MenuComponents = {
            title = "Componentes",
            subtitle = "Ajuste os Componentes",
            element = { label = "Componente", desc = "Existem " },
            element2 = { label = " Cor  #", desc = "Escolhe a cor do componente" },
        },
        MenuAppearance = {
            title = "Aparência",
            subtitle = "Escolha a sua Aparência",
            element = { label = "Corpo", desc = "Ajuste o tipo de Corpo" },
            element2 = { label = "Etnia", desc = "Ajuste a sua Etnia" },
            element3 = { label = "Cabelo", desc = "Ajuste o Cabelo" },
            element4 = { label = "Envelhecimento", desc = "Ajuste o Envelhecimento" },
            element5 = { label = "Altura", desc = "Ajuste a Altura<br> Alto 3 Normal 2 Pequeno 1 " },
            element6 = { label = "Face", desc = "Ajuste a Face" },
            element7 = { label = "Marcas", desc = "Ajuste as Marcas Faciais" },
            element8 = { label = "Maquilhagem", desc = "Ajuste a Maquilhagem" },
            short = "Pequeno",
            normal = "Normal",
            tall = "Alto",
        },
        MenuAge = {
            title = "Idade",
            subtitle = "Escolha a sua Idade",
            element = { label = "Idade", desc = "Ajuste a Idade" },
            element2 = { label = "Visibilidade", desc = "Existem ", desc2 = "Ajuste a Visibilidade" },
            label3 = "Não Visível",
            label4 = "Visível",
        },
        MenuBody = {
            title = "Corpo",
            subtitle = "Ajuste o Corpo",
            element = { label = "Tipo de Corpo", desc = "Existem", },
            element2 = { label = "Cintura #", desc = "Existem #", desc2 = "Tipos de Cintura" },
        },
        MenuHeritage = {
            title = "Etnia",
            subtitle = "Escolha a sua Etina",
            element = { label = "Cor de Pele", desc = "Existem ", desc2 = " Tipos de tons de Pele" },
            element2 = { label = "Tipos ", desc = "Escolha a cara do seu Personagem" },
            element3 = { label = "Etnia #", desc = "Existem #", desc2 = "Tipos de Etinas" },
        },
        MenuHair = {
            title = "Cabelo e Barba",
            subtitle = "Ajuste o Cabelo e Barba do seu Personagem",
            element = { label = "Cabelo", desc = "<br>Ajuste o Cabelo" },
            element2 = { label = "Barba", desc = "<br>Ajuste a Barba" },
            element3 = { label = "Barba Curta", desc = "<br>Ajuste a Barba Curta" },
            element4 = { label = "Acessórios de Cabelo", desc = "<br>Ajuste os Acessórios para Cabelo" },
            element5 = { label = "Sobrancelhas", desc = "<br>Ajuste as Sobrancelhas" },
        },
        MenuHairSelection = {
            title = "Cabelo",
            subtitle = "Escolha o Cabelo do seu Personagem",
            element = { label = "Component ", desc = "Existem ", desc2 = " Tipos" },
            element2 = { label = "Cor", desc = "Existem ", desc2 = " Tipos " },
        },
        MenuBeardEyeBrows = {
            title = "Aparência",
            subtitle = "Ajuste a sua Aparência",
            element = { label = "", desc = "Escolha um tipo" },
            element2 = { label = "Cor", desc = "Escolha a Cor" },
            element3 = { label = "Visibilidade", desc = "Ajuste a Visibilidade" },
        },
        MenuFacial = {
            title = "Características da Cara",
            subtitle = "Escolha as Características da sua Face",
            element = { label = "Cor dos Olhos", desc = "Ajuste a Cor dos Olhos" },
            element2 = { label = "Dentes", desc = "Ajuste o tipo de Dentes " },
            element3 = { label = "Maxilar", desc = "Ajuste o Maxilar", },
            element4 = { label = "Queixo", desc = "Ajuste o Queixo" },
            element5 = { label = "Tamanho da Cabeça", desc = "Ajuste a Cabeça" },
            element6 = { label = "Nariz", desc = "Ajuste o Nariz" },
            element7 = { label = "Orelhas", desc = "Ajuste as Orelhas" },
            element8 = { label = "Boca e Lábios", desc = "Ajuste a Boca e Lábios" },
            element9 = { label = "Bochechas", desc = "Ajuste as Bochechas" },
            element10 = { label = "Olhos e Sobrancelhas", desc = "Ajuste os Olhos e Sobrancelhas" },
        },
        MenuFaceModify = {
            title = "Características da Cara",
            subtitle = "Ajuste a sua Cara",
            element = { label = "", desc = "Selecionado: " },
        },
        MenuLifeStyle = {
            title = "Marcas",
            subtitle = "Escolha as Marcas do seu Personagem",
            label = " Visibilidade",
            desc = "Ajuste a Visibilidade",
            element = { label = "Sinais", desc = "Ajuste os Sinais" },
            element2 = { label = "Manchas", desc = "Ajuste as Manchas" },
            element3 = { label = "Complex", desc = "Choose life style opacity of your character" }, -- Dúvida
            element4 = { label = "Acne", desc = "Ajuste o Acne" },
            element5 = { label = "Sardas", desc = "Ajuste as Sardas" },
            element6 = { label = "Disc", desc = "Choose life style opacity of your character" }, -- Dúvida
            element7 = { label = "Cicatrizes", desc = "Ajuste as Cicatrizes" },
            element8 = { label = "Sujeira", desc = "Ajuste a Visibilidade da Sujeira" },
        },
        MenuMakeup = {
            title = "Maquilhagem",
            subtitle = "Escolha a sua Maquilhagem",
            element = { label = "Batom", desc = "Ajuste o Batom" },
            element2 = { label = "Blush", desc = "Ajuste o Blush" },
            element3 = { label = "Eyeliner", desc = "Ajuste o Eyeliner" },
            element4 = { label = "Sombras", desc = "Ajuste as Sombras" },
            element5 = { label = "Texturas", desc = "Ajuste as Texturas" },
            element6 = { label = "Cor", desc = "Ajuste a Cor" },
            element7 = { label = "Cor Secundária", desc = "Ajuste a Cor Secundária" },
            element8 = { label = "Visibilidade", desc = "Ajuste a Visibilidade" },
        },
    },
    Francais = {
        promptselect = "| Personnage sélectionné :  ~o~",
        promptselect2 = "~q~ | Argent: ~o~",
        promptlabel_select = " Sélectionnez le sexe ",
        promptlabel_female = "Personnage féminin",
        promptlabel_male = "Personnage masculin",
        Inputs = {
            confirm = "Confirmer",
            placeholder = "prénom nom",
            inputheader = " CHOISIR LE NOM DU PERSONNAGE ",
            title = "Lettres seulement min 5 max 20",
            banned = "vous ne pouvez pas utiliser ces noms car ils sont considérés comme interdits sur ce serveur"
        },
        MenuCreation = {
            title = "Création de personnage",
            subtitle = "Sous-menu",
            label = "Choix du nom",
            element = { label = "Apparence", desc = "Choisissez l'apparence de votre personnage" },
            element2 = { label = "Vêtements", desc = "Choisissez les vêtements de votre personnage" },
            element3 = {
                label = " Choisir un nom ",
                desc =" Choisissez un nom pour votre personnage, assurez-vous de lire les règles de désignation des personnages, <br>si vous ne suivez pas les règles, ce personnage sera supprimé sans avertissement "
            },
            element4 = { label = " Début du voyage ", desc = " Commencez votre voyage en appuyant sur la touche Entrée " },
        },
        MenuClothes = {
            title = "Vêtements",
            subtitle = "Sous-menu",
            CoatClosed = "Manteaux fermés",
            Coat = "Manteaux",
            Hat = "Chapeaux",
            EyeWear = "Vêtements pour les yeux",
            Mask = "Masques",
            NeckWear = "Vêtements de cou",
            NeckTies = "Cravates",
            Shirt = "Chemises",
            Suspender = "Bretelles",
            Vest = "Gilets",
            Poncho = "Ponchos",
            Cloak = "Manteaux",
            Glove = "Gants",
            Belt = "Ceinture",
            Pant = "Pantalon",
            Boots = "Bottes",
            Spurs = "Accessoires pour bottes",
            Bracelet = "Bracelets",
            Buckle = "Boucles de ceintures",
            Skirt = "Jupes",
            Chap = "Chaps",
            Spats = " Guêtres ",
            GunbeltAccs = "Accessoires pour ceintures",
            Gauntlets = " Gantelets ",
            Loadouts = " Équipements ",
            Accessories = "Accessoires",
            Satchels = " Sacoches ",
            Dress = " Robes ",
            Holster = "Holster gauche",
            Gunbelt = "Ceintures d'armes",
            RingRh = "Bagues à droite",
            RingLh = "Anneaux à gauche",
        },
        MenuComponents = {
            title = " Composants ",
            subtitle = "Sous-menu",
            element = { label = "Composant", desc = "il y a " },
            element2 = { label = " Color # ", desc = " Choisissez la couleur du composant " },
        },
        MenuAppearance = {
            title = "Apparence",
            subtitle = "Sous-menu",
            element = { label = " Corps ", desc = " Choisissez le type de corps de vos personnages " },
            element2 = { label = "Héritage", desc = "Choisissez l'héritage de votre personnage" },
            element3 = { label = "Cheveux", desc = "Choisissez le type de cheveux de votre personnage" },
            element4 = { label = " Age ", desc = " Age du personnage " },
            element5 = { label = "Taille", desc = "Choisissez le type de corps de votre personnage" },
            element6 = { label = " Visage ", desc = " Choisissez les caractéristiques du visage " },
            element7 = { label = " Immperfection ", desc = " Choisissez le type d'inperfection de votre personnage " }, 
            element8 = { label = " Maquillage ", desc = " Choisissez le maquillage " },
            short = "Court",
            normal = "Normal",
            tall = "Grand",
        },
        MenuAge = {
            title = "Âge",
            subtitle = "Sous-menu",
            element = { label = "Age", desc = "Choisissez l'âge de votre personnage" },
            element2 = { label = "Opacité", desc = "il y a ", desc2 = "Choisissez l'opacité de l'âge de votre personnage" },
            label3 = "Non visible",
            label4 = "Visible",
        },
        MenuBody = {
            title = "Corps",
            subtitle = "Sous-menu",
            element = { label = " Type de corps ", desc = " il y a ", },
            element2 = { label = "Taille #", desc = "il y a #", desc2 = "Types de taille" },
        },
        MenuHeritage = {
            title = "Herritage",
            subtitle = "Sous-menu",
            element = { label = " Couleur de peau ", desc = " il y a ", desc2 = " des types de couleur de peau " },
            element2 = { label = "Types ", desc = "Choisissez le type de visage de votre personnage" },
            element3 = { label = "Héritage #", desc = " il y a #", desc2 = "types d'héritage" },
        },
        MenuHair = {
            title = "Cheveux",
            subtitle = "Sous-menu",
            element = { label = "Cheveux", desc = "Choisissez les cheveux des personnages" },
            element2 = { label = "Barbe", desc = "Choisir la barbe du personnage" },
            element3 = { label = " Poil de barbe ", desc = " Choisir le poil de barbe du personnage " },
            element4 = { label = " Accessoires de cheveux ", desc = " Choisissez les accessoires de cheveux du personnage " },
            element5 = { label = "Sourcils", desc = "Choisissez les sourcils des personnages" },
        },
        MenuHairSelection = {
            title = "Cheveux",
            subtitle = "Sous-menu",
            element = { label = "Composant ", desc = "il y a ", desc2 = "types de " },
            element2 = { label = " Couleur ", desc = " il y a ", desc2 = " types de " },
        },
        MenuBeardEyeBrows = {
            title = "Apparence",
            subtitle = "Sous-menu",
            element = { label = "", desc = "choisir un type" },
            element2 = { label = " Couleur ", desc = " Choisir une couleur " },
            element3 = { label = " Opacité ", desc = " Choisir l'opacité " },
        },
        MenuFacial = {
            title = "Caractéristiques du visage",
            subtitle = "Sous-menu",
            element = { label = " Couleur des yeux ", desc = " couleur des yeux " },
            element2 = { label = " Dents ", desc = " type de dents " },
            element3 = { label = " Mâchoire ", desc = " ajuster l'os de la mâchoire " }, 
            element4 = { label = " Menton ", desc = " ajuster l'os du menton " },
            element5 = { label = " Taille de la tête ", desc = " ajuster la taille de la tête " },
            element6 = { label = " Nez ", desc = " ajuster le nez " },
            element7 = { label = " Oreilles ", desc = " ajuster la taille des oreilles " },
            element8 = { label = " Bouche et lèvres ", desc = " ajuster la bouche et les lèvres " },
            element9 = { label = " Joues ", desc = " Choisir l'opacité de la pilosité faciale des personnages " }, 
            element10 = { label = " Yeux et sourcils ", desc = " ajuster les os des joues " },
        },
        MenuFaceModify = {
            title = "Caractéristiques du visage",
            subtitle = "Sous-menu",
            element = { label = "", desc = "sélection actuelle : " },
        },
        MenuLifeStyle = {
            title = "Imperfection",
            subtitle = "Sous-menu",
            label = "Opacité",
            desc = "Choisissez l'opacité",
            element = { label = "Taupes", desc = "Choisissez le type d'inperfection de votre personnage" },
            element2 = { label = "Taches", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
            element3 = { label = "Complexe", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
            element4 = { label = "Acné", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
            element5 = { label = "Taches de rousseur", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
            element6 = { label = "Discoloration", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
            element7 = { label = "Cicatrices", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
            element8 = { label = "Grime", desc = "Choisissez l'opacité du type d'inperfection de votre personnage" },
        },
        MenuMakeup = {
            title = "Maquillage",
            subtitle = "Sous-menu",
            element = { label = " Rouge à lèvres ", desc = " Choisissez le maquillage de votre personnage " },
            element2 = { label = "Blush", desc = "Choisissez le maquillage de votre personnage" },
            element3 = { label = "Eyeliner", desc = "Choisissez le maquillage de votre personnage" },
            element4 = { label = "Ombre", desc = "Choisissez le maquillage de votre personnage" },
            element5 = { label = "Texture", desc = "Choisissez le maquillage de votre personnage" },
            element6 = { label = " Couleur ", desc = " Choisissez le maquillage de votre personnage " }, 
            element7 = { label = "Couleur secondaire", desc = "Choisissez le maquillage de votre personnage" },
            element8 = { label = "Opacité", desc = "Choisissez le maquillage de votre personnage" },
        },
    },
}
