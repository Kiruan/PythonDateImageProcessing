my=require("myapps")

email='emma.van@etudiant.univ-rennes1.fr'
passwd='20205114'
my.connexion(email,passwd)

-- creer le fichier de la page web
my.publierpage_html('<head><meta http-equiv="refresh" content="10"/></head><body><img src="http://prototypel1.irisa.fr/files/67c6c2d01a41672c11c9317866b99dec/image.jpg"></body>')

while(true) do

	-- prendre une photo
	my.prendrePhoto()
	-- envoie de la photo sur le serveur
	file = io.open("image.jpg","rb") --ouverture du fichier
	CONTENU_DU_FICHIER = file:read "*a"
	file:close() -- fermeture du fichier

	my.creer_fichier("image.jpg",CONTENU_DU_FICHIER)


	-- attendre 10 secondes
	my.attendre(10)

end


my.deconnexion()
