# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Job.create(
  title: 'Développeurs Ruby H/F',
  contract_type: 'CDI',
  location: 'Paris (75)',
  description: "# Description de la société
  
    Oahu est une start-up parisienne qui aime les Big Data, l'UX et s'en sert pour proposer aux internautes une nouvelle approche personnalisée du marketing de l'entertainment. Nous travaillons entre autres avec les Studios de cinéma pour amener du social et de l'humain dans la promotion de leurs films.

    # Description du poste
    
    Nous recherchons un architecte Ruby on Rails senior pour faire évoluer l'infrastructure de notre solution.

    Si vous travailliez chez Oahu, cette semaine, vous auriez fait :

    * Du data crunching
    * De la manip' d'Interest Graph & Social Graph Realtime pour offrir des contenus plus personnalisés aux internautes
    * De la manip' d'API Realtime à haute dose (Facebook, Twitter, Bit.Ly, MixPanel entre autres)
    * Du Behavior Driven Development
    * De l'UX agile
    * Des Sprints
    * Des Planning Poker (mais pas de Scrum)

    Vous l'auriez fait :

    Avec Ruby on Rails, Heroku, S3 & CloudFront, Node.js, Coffeescript & Backbone.js, Git & GitHub avec Git-Flow, PivotalTracker, Basecamp, Campfire, Redis, MongoDB et PostgreSQL etc. (phew…)
    En pensant toujours bénéfice utilisateur, car un BuzzWord n'est rien si il n'apporte pas quelque chose à l'utilisateur final.

    We're Fast, Focused and Happy.

    Nous travaillons par sprints. Les tests, et les code reviews sont à responsabilité tournante, et en fin de sprint nous faisons des feature reviews avant de planifier ensemble le prochain Sprint.

    L'information est toujours up-to-date entre tous les membres de l'équipe, chacun sait sur quoi les autres travaillent.

    Notre culture toute entière est très fortement orientée produit, et chaque développeur a son mot a dire sur l'ensemble de celui-ci.
    Enfin, nous commençons la journée par un Standup, et la terminons par des bières.

    # Description du candidat recherché
    
    Nous recherchons un architecte Ruby on Rails. C'est peut-être vous si les termes
    ci-dessus vous sont familiers et si vous êtes autonome, codez clair et êtes proactif.",
  company_name: 'Uhuhu',
  company_email: 'rien@derien.fr',
  company_url: 'http://uhuhu.fr/',
  public: true
)

Job.create(
  title: 'Développeur Web',
  contract_type: 'CDI',
  location: 'Bordeaux (33)',
  description: "# Description de la société
  
    Depuis sa création en 2008, Wopata a été à la pointe du web et du développement mobile. 
    La technologie est pour nous un moyen et non une finalité, ce qui nous permet de développer un savoir-faire à forte valeur ajoutée pour nos clients : veille, démarche globale, créativité, recours aux technologies les plus innovantes et accompagnement.
    Wopata est agréée Jeune Entreprise Innovante depuis 2009 par le Ministère de la Recherche pour ses activités de R&D en intelligence artificielle.

    # Description du poste
    
    Vous serez en charge de développer des applications pour les navigateurs modernes sur différents devices dont les smartphones et tablettes.

    Vous aurez la responsabilité de proposer une expérience utilisateur productive et agréable utilisant les dernières capacités des navigateurs (HTML5 Canvas et Local Storage, CSS3, Sencha, Compass, node.js).

    Certaines des technologies que nous utilisons actuellement sont Ruby, Ruby on Rails, JRuby, bases de données relationnelles (PostgreSQL) et NoSQL datastore (MongDB).

    Ce qu’offre Wopata

    En rejoignant Wopata dans ses locaux au coeur de Bordeaux, vous intégrerez une équipe jeune et pleine de talents qui travaille dans une atmosphère créative et détendue mais néanmoins professionnelle.

    Débutants passionnés ou professionnels expérimentés, si vous partagez notre passion et notre motivation, envoyez votre candidature à jobs@wopata.com.

    # Description du candidat recherché
    
    Titulaire d’un diplôme bac+4/5, vous justifiez d’une expérience minimum de 3 à 5 ans en agence web ou SSII à un poste équivalent. Passionné(e) par le domaine du web, à la recherche de nouvelles idées, vous êtes curieux(se), ouvert(e) et autonome. Une expérience Ruby on Rails serait un plus.",
  company_name: 'Atapota',
  company_email: 'atopata@derien.fr',
  company_url: 'http://atopata.fr/',
  public: true
)

Job.create(
  title: 'Développeur de génie',
  contract_type: 'CDI',
  location: 'Nantes (44)',
  description: "# Description de la société
  
    Knplabs, c'est bien.

    # Description du poste
    
    A définir.

    # Description du candidat recherché
    
    Grand.",
  company_name: 'Knp Labs',
  company_email: 'hello@knplabs.com',
  company_url: 'http://www.knplabs.com/',
  public: true
)

# This one is not public
Job.create(
  title: 'Pas fini',
  contract_type: 'CDD',
  location: 'Colombes (92)',
  description: "Rah j'hésite.",
  company_name: 'Je ne sais plus',
  company_email: 'what@rien.fr',
  company_url: 'http://www.rien.com/',
  public: false
)
