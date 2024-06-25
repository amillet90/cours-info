La méthode Merise est une méthode de conception de systèmes d'information (Merise est plus axé sur la modélisation conceptuelle des systèmes d'information, tandis qu'UML offre une notation plus générale et polyvalente pouvant être utilisée pour modéliser divers aspects de systèmes).\
Lorsqu'il s'agit de normaliser un schéma dans le contexte de Merise, cela se réfère généralement à la normalisation des schémas de bases de données relationnelles. La normalisation est un processus visant à organiser les données d'une base de données de manière à **réduire la redondance** et à **garantir l'intégrité des données**. 

<br>

Voici quelques règles générales pour normaliser un schéma dans le contexte de Merise :

1. **Utilisation des entités** : Identifiez les entités principales dans votre modèle conceptuel. Une entité représente un objet du monde réel (par exemple, un client, un produit) que vous souhaitez suivre dans votre système d'information.

2. **Décomposition des entités** : Si une entité a des attributs multivalués ou des attributs complexes, décomposez-les en entités distinctes. Assurez-vous que chaque entité ne représente qu'un concept unique et atomique.

3. **Identification des clés primaires** : Chaque entité doit avoir une clé primaire unique qui identifie de manière unique chaque occurrence de l'entité. Choisissez judicieusement les clés primaires en fonction de la nature des données.

4. **Relations entre entités** : Identifiez les relations entre les entités. Utilisez les associations pour représenter ces relations. Déterminez la cardinalité (1:1, 1:N, N:M) et la participation (totale ou partielle) de chaque entité dans une relation.

5. **Normalisation des relations** : Appliquez les règles de normalisation pour organiser les attributs de chaque entité en relations normalisées. La première forme normale (1NF), la deuxième forme normale (2NF) et la troisième forme normale (3NF) sont les formes normales couramment utilisées.

6. **Élimination des dépendances fonctionnelles** : Assurez-vous qu'il n'y a pas de dépendances fonctionnelles transitives ou dépendances partielles dans vos relations. Cela garantit que la base de données est en 3NF.


<br>

## rappel

La normalisation est une technique de conception de bases de données qui vise à minimiser la redondance des données et à améliorer la cohérence et la performance de la base de données. La méthode Merise définit neuf règles de normalisation qui doivent être appliquées aux schémas entité-association afin de les rendre conformes aux principes de la normalisation.

Les règles de normalisation Merise sont les suivantes :

* **Règle 1 : Normalisation des entités**\

Une entité doit avoir une existence propre et un identifiant.
<br>
Une entité doit avoir une existence propre, c'est-à-dire qu'elle doit pouvoir être identifiée de manière unique. Pour cela, elle doit avoir un identifiant, qui est un ensemble d'attributs qui la caractérisent de manière unique.

* **Règle 2 : Normalisation des identifiants**\
Un identifiant doit être unique, non null et minimal.

Unique : Chaque enregistrement d'une table doit avoir un identifiant unique.
Non null : L'identifiant d'un enregistrement ne doit pas pouvoir être nul.
Minimal : Un identifiant ne doit pas pouvoir être décomposé en sous-ensembles d'attributs qui satisfont également à la définition d'un identifiant.

* **Règle 3 : Normalisation des attributs**\
Un attribut doit être simple, non redondant, non null, complet et cohérent.

Simple : Un attribut ne doit pas être composé de plusieurs sous-attributs.
Non redondant : Un attribut ne doit pas stocker des données qui sont déjà stockées dans un autre attribut de la table.
Non null : La valeur d'un attribut ne doit pas pouvoir être nulle.
Complet : La valeur d'un attribut doit être complète, c'est-à-dire que tous les enregistrements de la table doivent avoir une valeur pour cet attribut.
Cohérent : Les valeurs d'un attribut doivent être cohérentes entre elles.
Règle 4 : Normalisation des attributs des associations



* **Règle 4 : Normalisation des attributs des associations**\
Un attribut d'association doit être simple, non redondant, non null, complet et cohérent.

* **Règle 5 : Normalisation des associations**\
Une association doit avoir une cardinalité minimale de 1 et une cardinalité maximale de 1 ou n.

* **Règle 6 : Normalisation des cardinalités**\
Les cardinalités d'une association doivent être compatibles.

* **Règle 7 : 1ère forme normale (1NF)**\
Aucune donnée redondante ne doit être stockée dans une table.

* **Règle 8 : 2ème forme normale (2NF)**\
Toutes les dépendances fonctionnelles non triviales d'une table doivent être sur la clé primaire.

* **Règle 9 : 3ème forme normale (3NF)**\
Toutes les dépendances fonctionnelles non triviales d'une table doivent être sur la clé primaire ou sur un attribut de la clé primaire.



Règle 2 : Normalisation des identifiants

Un identifiant doit être unique, non null et minimal.


Règle 3 : Normalisation des attributs

Un attribut doit être simple, non redondant, non null, complet et cohérent.

Simple : Un attribut ne doit pas être composé de plusieurs sous-attributs.
Non redondant : Un attribut ne doit pas stocker des données qui sont déjà stockées dans un autre attribut de la table.
Non null : La valeur d'un attribut ne doit pas pouvoir être nulle.
Complet : La valeur d'un attribut doit être complète, c'est-à-dire que tous les enregistrements de la table doivent avoir une valeur pour cet attribut.
Cohérent : Les valeurs d'un attribut doivent être cohérentes entre elles.
Règle 4 : Normalisation des attributs des associations

Un attribut d'association doit être simple, non redondant, non null, complet et cohérent.

Cette règle est similaire à la règle 3, mais elle s'applique aux attributs des associations.

Règle 5 : Normalisation des associations

Une association doit avoir une cardinalité minimale de 1 et une cardinalité maximale de 1 ou n.

Cardinalité minimale : La cardinalité minimale d'une association indique le nombre minimal d'enregistrements d'une entité qui peuvent être associés à un enregistrement d'une autre entité.
Cardinalité maximale : La cardinalité maximale d'une association indique le nombre maximal d'enregistrements d'une entité qui peuvent être associés à un enregistrement d'une autre entité.
Règle 6 : Normalisation des cardinalités

Les cardinalités d'une association doivent être compatibles.

Les cardinalités d'une association doivent être compatibles entre elles