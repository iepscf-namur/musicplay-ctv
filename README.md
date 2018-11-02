# 1) Développement du Front-End

## 1.1) Création du visuel

Avant d'essayer de contacter le Web-Service, il nous faudra créer un visuel qui permettra à l'utilisateur d'interagir avec les services que nous proposons.
Dans la création de ce visuel, on va "dessiner" la disposition des différents composants (boutons, navigateur, textbox,...).
Cette maquette fonctionnelle se nomme le Wireframe.

Ensuite nous allons "habiller" cette ébauche de pages web avec le Design.
Une fois ces deux éléments créés, il faudra revenir prés du client pour qu'il donne son retour (et éventuellement adapter selon ses remarques).

## 1.2 Créations des jsp

Les fichiers jsp contiennent principalement de l'html.
Dans le framework IntelliJ Idea, les jsp doivent être placé dans web-inf alors que les css et js devront être placé en dehors de ce même dossier.

Assez rapidement, on remarque une série de composants qui sont communs dans les différents jsp. 
Dans ce cas, nous allons créer des jsp qui contiendront chacun une partie commune.
Pour illustrer cela, je vais prendre l'exemple de notre "menu.jsp" qui contient la balise head (avec les appels des css)et la barre de navigation(commun à toute nos pages).

## 1.3) Création des servlets

Les servlets vont gérer le contenu web.

lors de sa création, une servlet démarre avec 2 méthodes vides : doGet et doPost.
Elles seront respectivement appelées lors des méthodes de requête get et post.
Le doGet servira donc à chercher la jsp voulu (ce qui va nous permettre d'afficher la page),alors que le doPost sera utilisé dans le cas de traitement de la part de l'hôte.
il existe d'autres méthodes que nous n'avons pas exploité

## 1.4) modifions le web.xml

Le Web.xml est un fichier qui jouera le rôle d'aiguilleur.

Dans ce fichier, nous allons indiquer les servlets que nous utilisons(```<servlet>```) et donner quand elle sera appelée (```<servlet-mapping>```).

C'est aussi ici que l'on indiquera que comment on construit les pages web (```<jsp-config>```):
+ ```<url-pattern> ->``` filtre les pages concernées (*.jsp dans notre unique groupe)
+ ```<page-encoding> ->``` détermine l'encodage des pages concernées
+ ```<include-prelude> ->``` indique la jsp qui sera utilisé en premier
+ ```<include-code> ->``` indique une jsp qui sera ajouté en fin
	
Enfin nous allons indiquer les fichiers de départ:
```<welcome-file-list>``` va rassembler nos pages d'accueil (entre les balises <welcome-file>)

Remarque: Par défaut, si on ne spécifie aucun nom de fichier, le server va chercher :
+ la liste des fichiers de départ (welcome-file-list).
+ S'il ne trouve rien, il va chercher après les fichiers index (html, htm puis jsp).
+ Si rien n'a été trouvé, le serveur renverra une error 404.

# 2) Contacter le webservice

Deux choix s'offrent à nous:
+ Faire appel à la Servlet (ce qui implique de recharger la page, quel que soit le résultat des requêtes).
+ Utiliser du Javascript pour faire des requêtes ajax 

Nous avons choisi de passer par javascript dans une optique "one page application".

Pour le moment, notre script demande au WebService si le nom d'utilisateur et le mot de passe sont bons et on affiche la réponse.


