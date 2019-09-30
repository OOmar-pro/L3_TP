#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "graphe-2.h"

int main()
{
	graphe g;
	graphe_aleatoire(&g, 25, .2);

	graphe_ecrire_dot(&g, "exemple.dot");

	system("dot -Tx11 exemple.dot");

	graphe_detruire(&g);
	return EXIT_SUCCESS;
}
