#include <stdio.h>
#include <stdlib.h>
#include "graphe-1.h"

int main()
{
	graphe g;
	graphe_stable(&g, 5);
	graphe_ajouter_arete(&g, 0, 1);
	graphe_ajouter_arete(&g, 0, 4);
	graphe_ajouter_arete(&g, 1, 4);
	graphe_ajouter_arete(&g, 1, 4);
	graphe_ajouter_arete(&g, 2, 2);
	graphe_ajouter_arete(&g, 2, 3);
	
	graphe_afficher(&g);
	
	return EXIT_SUCCESS;
}
