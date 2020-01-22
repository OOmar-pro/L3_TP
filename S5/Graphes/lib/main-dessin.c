#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "graphe-1.h"

int main()
{
	graphe g;
	double proba = .4;
	int n = GRAPHE_ORDRE_MAX;
	char nom_fichier[] = "alea.dot";

	srand(time(NULL));

	graphe_aleatoire(&g, n, proba);
#if 0
	graphe_ecrire_dot(&g, nom_fichier);
	/* test (très partiel) de charger */
	{
		char nom_copie[] = "alea2.dot";
		char cmd[80];
		graphe h;
		graphe_charger_dot(&h, nom_fichier);
		graphe_ecrire_dot(&h, nom_copie);
		/* n'affiche rien si les fichiers ont le même contenu */
		sprintf(cmd, "diff %s %s", nom_fichier, nom_copie);
		system(cmd);
	}
#endif
	return EXIT_SUCCESS;
}
