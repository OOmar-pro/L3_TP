#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "graphe-3.h"
#include "acm.h"

int main()
{
	graphe g;
	graphe_stable(&g, 7);
	graphe_ajouter_arete(&g, 0, 1, 7.);
	graphe_ajouter_arete(&g, 0, 3, 5.);
	graphe_ajouter_arete(&g, 1, 3, 9.);
	graphe_ajouter_arete(&g, 1, 2, 8.);
	graphe_ajouter_arete(&g, 1, 4, 7.);
	graphe_ajouter_arete(&g, 2, 4, 5.);
	graphe_ajouter_arete(&g, 3, 4, 15.);
	graphe_ajouter_arete(&g, 3, 5, 6.);
	graphe_ajouter_arete(&g, 4, 5, 8.);
	graphe_ajouter_arete(&g, 4, 6, 9.);
	graphe_ajouter_arete(&g, 5, 6, 11.);
	{ /* partie Prim */
		graphe acm;
		int statut = graphe_acm_prim(&g, 0, &acm);
			if (statut == 0) {
				graphe_ecrire_dot_avec_acm(&g, &acm,
					"acm_prim.dot");
				system("dot -Tx11 acm_prim.dot");
				graphe_detruire(&acm);
			}
	}
	{ /* partie Kruskal */
		graphe acm;
		int statut = graphe_acm_kruskal(&g, &acm);
			if (statut == 0) {
				graphe_ecrire_dot_avec_acm(&g, &acm,
					"acm_kruskal.dot");
				system("dot -Tx11 acm_kruskal.dot");
				graphe_detruire(&acm);
			}
	}
	graphe_detruire(&g);
	return EXIT_SUCCESS;
}
