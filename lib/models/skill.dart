class Skill {
  String title;
  String text;

  Skill({required this.text, required this.title});

  static List<Skill> fill() {
    return [
      Skill(
        title: 'Expérimenté',
        text:
            "Déjà bien plus expérimenté que ses pairs à cette échelle salariale",
      ),
      Skill(
        title: 'Passionné',
        text:
            "Heureux d'avoir enfin une place dans ce domaine et de partager sa passion avec son équipe",
      ),
      Skill(
        title: 'Minucieux',
        text:
            "Soucieux de son écriture et du travail sous-jacent impliqué par son code",
      ),
      Skill(
        title: 'Courtois',
        text:
            "Considérant du climat social et professionnel nécessaire au bon moral de son entourage",
      ),
      Skill(
        title: 'Créatif',
        text:
            "Attentif aux multiples solutions possibles face à un problème donné",
      ),
      Skill(
        title: 'Curieux',
        text:
            "Curieux de trouver des solutions durables à des problématiques récurrentes",
      ),
      Skill(
        title: 'Tenace',
        text:
            "Habitué au travail acharné derrière le développement d'un logiciel à l'épreuve de ses usagers",
      ),
      Skill(
        title: 'Rusé',
        text:
            "Compréhensif de la différence entre utiliser l'intelligence artificielle et en dépendre",
      ),
    ];
  }
}

//Aptitudes
//
//Si vous acceptez de répondre favorablement à cette candidature, vous gagnez un stagiaire :
//- généralement bien plus expérimenté que ses pairs
//- curieux de trouver des solutions durables à des problématiques récurrentes
//- soucieux de son écriture et du travail sous-jacent impliqué par son code
//- entêté face aux intempéries technologiques
//- habitué au travail acharné derrière le développement d'un logiciel à l'épreuve de ses usagers,
//- considérant du climat social et professionnel nécessaire au bon moral de son équipe
//- ouvert à la variété de solutions possibles face à un problème donné,
//- heureux d'avoir enfin une place dans ce domaine et de partager sa passion avec son équipe,
//- qui comprend la différence entre utiliser l'intelligence artificielle et en dépendre,
