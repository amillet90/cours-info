
git clone https://github.com/amillet90/cours-info.git

cd cours-info
git init


# le token git 
# dans l'interface web de github (menu)  
# l'icone tout à droite de l'utilisateur (à droite du menu)
# widget menu de gauche ; tout en bas ; <> Developer settings
# widget menu de gauche ; Personnal access tokens ; tokens(classic)
# créer le token ; il faut un mot de passe : c'est le mot de passe du compte !
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


export COURS_INFO_GIT_TOKEN=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

git config -l
git config --global user.name "amillet90"  # definir le username du compte github

git config --global user.email "amillet.iut90@gmail.com" # definir l email du compte github
git config -l


https://unix.stackexchange.com/questions/335704/how-to-set-up-username-and-passwords-for-different-git-repos

# editer le fichier subl  ~/.git-credentials


chromium https://github.com/amillet90/cours-info
chromium  https://amillet90.github.io/cours-info
chromium  https://amillet90.github.io/cours-info/diw/sae_diw_livrables_github_v23_1.html

https://cours-info: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@github.com


https://github.com/cli/cli#installation

https://cli.github.com/manual/gh_auth_login


https://www.kortic.com/show-hide-truncated-text-with-a-read-more-button.html

https://stackoverflow.com/questions/29544335/slick-carousel-hide-controls


chatGPT
donnez un exemple de contenu pour le fichier `.git-credentials` avec un access token
Le fichier .git-credentials n'est pas utilisé pour stocker les access tokens Git. Les access tokens Git sont généralement stockés dans des variables d'environnement ou dans des fichiers de configuration spécifiques à l'outil que vous utilisez (par exemple, .netrc pour Git).

Cependant, je peux vous montrer comment utiliser un access token Git avec Git en utilisant les variables d'environnement. Voici un exemple :

Générez un access token sur la plateforme Git (par exemple, GitHub).

Ouvrez votre terminal et exécutez la commande suivante pour définir la variable d'environnement :

Pour Linux/macOS :
export GIT_TOKEN=votre_access_token
Pour Windows :
set GIT_TOKEN=votre_access_token
Remplacez votre_access_token par le véritable access token que vous avez généré.

Maintenant, lorsque vous interagissez avec Git (par exemple, lorsque vous effectuez des opérations de clonage, de tirage ou de poussée), Git utilisera automatiquement la variable d'environnement GIT_TOKEN pour l'authentification.

Assurez-vous de garder votre access token confidentiel et de ne pas le partager publiquement.

Notez que l'utilisation d'un access token est préférable aux noms d'utilisateur et mots de passe, car les access tokens peuvent être gérés de manière plus sécurisée et révoqués si nécessaire.


comment exporter des  GIT_TOKEN differents dans des projets différents

Pour exporter différents access tokens Git dans différents projets, vous pouvez utiliser différentes variables d'environnement pour chaque projet. Voici comment procéder :

Générez un access token pour chaque projet sur la plateforme Git correspondante (par exemple, GitHub).

Ouvrez votre terminal et exécutez la commande suivante pour définir une variable d'environnement spécifique pour chaque projet :

Pour Linux/macOS :
export PROJET1_GIT_TOKEN=votre_access_token_projet1


export PROJET2_GIT_TOKEN=votre_access_token_projet2
Pour Windows :
set PROJET1_GIT_TOKEN=votre_access_token_projet1
set PROJET2_GIT_TOKEN=votre_access_token_projet2
Remplacez votre_access_token_projet1 et votre_access_token_projet2 par les véritables access tokens correspondant à chaque projet.

Lorsque vous travaillez sur chaque projet, vous pouvez référencer la variable d'environnement appropriée dans vos commandes Git. Par exemple, pour cloner un dépôt dans le projet 1, vous pouvez utiliser :

bash
git clone https://github.com/utilisateur/projet1.git

Et Git utilisera automatiquement la variable d'environnement PROJET1_GIT_TOKEN pour l'authentification.

De cette manière, vous pouvez gérer différents access tokens pour chaque projet de manière séparée. Assurez-vous de garder chaque access token confidentiel et de ne pas les partager publiquement.