#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "graphe-2.h"
#include "mat_bool.h"
#include "connexite.h"

int main()
{
	graphe g;
	mat_bool *m;
	graphe_stable(&g, 5);
	graphe_ajouter_arete(&g, 0, 1);
	graphe_ajouter_arete(&g, 0, 4);
	graphe_ajouter_arete(&g, 1, 4);
	graphe_ajouter_arete(&g, 1, 4);
	graphe_ajouter_arete(&g, 2, 2);
	graphe_ajouter_arete(&g, 2, 3);

	graphe_ecrire_dot(&g, "exemple.dot");
	system("dot -Tx11 exemple.dot &");

	if ((m = mat_bool_creer_adj(&g))) {
		mat_bool_afficher(m);
		mat_bool_detruire(m);
	}

	printf("\n\n");

	if ((m = mat_bool_creer_clot_trans(&g))) {
		mat_bool_afficher(m);
		mat_bool_detruire(m);
	}

	graphe_afficher_comp_conn(&g);

	graphe_detruire(&g);
	return EXIT_SUCCESS;
}
