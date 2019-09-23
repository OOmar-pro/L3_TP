/* graphe-1 : représentation des graphes non orientés
 * par leur matrice d'adjacence :: fichier source
*/

#include "graphe-1.h"

#include <stdio.h>	/* pour printf() */

/* ______________________________________ Initialisation
*/

/* Cette fonction initialise un graphe en un stable d'ordre n
 * si 0 <= n <= GRAPHE_ORDRE_MAX (auquel cas la fonction retourne 0),
 * elle renvoie -1 sinon
*/
int graphe_stable(graphe* g, int n)
{
	int statut = -1;	/* statut de réussite (statut == 0) ou d'échec (statut == -1) de la fonction */

	if(n >= 0 && n <= GRAPHE_ORDRE_MAX){
		int i, j;

		g->m = 0;
		g->n = n;
		
		for(i = 0; i < n; i++){
			for (j = 0; j < n; j++)
			{
				g->adj[n][n] = 0;
			}
		}

		statut = 0;
	}
		

	/* retour du statut de réussite ou d'échec (n < 0 ou n > GRAPHE_ORDRE_MAX) */
	return statut;
}

/* ______________________________________ Ajout / Suppression d'arêtes */

/* ajout d'une arête donnée */
void graphe_ajouter_arete(graphe* g, int v, int w)
{
	g->adj[v][w] = g->adj[v][w] + 1;
}

/* suppression d'une arête donnée
	renvoie 0 si l'arête peut être supprimée et -1 sinon
*/
int graphe_supprimer_arete(graphe* g, int v, int w)
{
	int statut = -1;	/* statut de réussite (statut == 0)
						   ou d'échec (statut == -1) de la fonction */

	if(v < g->n && w < g->n && g->adj[v][w] > 0){

		g->adj[v][w] = g->adj[v][w] - 1;
		statut = 0;
	}

	/* retour du statut de réussite ou d'échec */
	return statut;
}

/* ______________________________________ Accesseurs en lecture
*/

/* Cette fonction renvoie le nombre de sommets du graphe
*/
int graphe_get_n(graphe* g)
{
	return g->n;
}

/* Cette fonction renvoie le nombre d'arêtes du graphe */
int graphe_get_m(graphe* g)
{
	int i,j, somme = 0;

	for (i = 0; i < g->n; i++)
	{
		for (j = 0; j < g->n; j++)
		{
			somme += g->adj[i][j];
		}
		
	}
	
	return somme;
}

/* Cette fonction renvoie le nombre d'occurrences d'une arête donnée dans le graphe 
*/
int graphe_get_multiplicite_arete(graphe* g, int v, int w)
{
	if(v < 0 || v > g->n || w < 0 || w > g->n)
		return -1;

	return g->adj[v][w];
}

/* Cette fonction renvoie le degre du sommet v
*/
int graphe_get_degre(graphe* g, int v)
{
	int deg =0;

	
	
	return deg;
}

/* Retourne 1 si le graphe est simple, 0 sinon */
int graphe_est_simple(graphe *g)
{
	/* TODO */
	return 0;
}
/* ______________________________________ Entrées / Sorties
*/

/* cette fonction affiche les données d'un graphe g <> NULL et si 0 <= g->n <= GRAPHE_ORDRE_MAX
*/
void graphe_afficher(graphe* g)
{
	int v, w;	/* variables de boucle */

	/* on n'affiche les données que si g <> NULL et l'ordre n du graphe est techniquement correct */
	if(g == NULL)
		printf("Structure non instanciee (NULL)\n");
	else if(0 > g->n || GRAPHE_ORDRE_MAX < g->n)
		printf("Structure incoherente (g->n de valeur %d hors intervalle requis {0 ,.., %d})\n", g->n, GRAPHE_ORDRE_MAX);
	else
	{
		/* __ statistiques / données globales */
		printf("graphe d'ordre %d sur %d aretes: \n",
				graphe_get_n(g), graphe_get_m(g));
	
		/* __ matrice adjacence */

		/* ligne indices colonnes */
		printf("\t\t");
		for (w = 0 ; w < graphe_get_n(g) ; w ++)
			printf("%d\t", w);

		printf("|d+\n");

		/* ligne séparatrice entête colonne / corps matrice */
		printf("\t\t");
		for (w = 0 ; w < graphe_get_n(g) ; w ++)
			printf("_\t");

		printf("__\n");

		/* lignes de la matrice */
		for (v = 0 ; v < graphe_get_n(g) ; v ++)
		{
			printf("%d\t|\t", v);
			for (w = 0 ; w < graphe_get_n(g) ; w ++)
				printf("%d\t", graphe_get_multiplicite_arete(g, v, w));

			printf("|%d\n", graphe_get_degre(g, v));
		}

		/* ligne séparatrice corps matrice / degrés entrants */
		printf("\t\t");
		for (w = 0 ; w < graphe_get_n(g) ; w ++)
			printf("_\t");

		printf("__\n");

		/* lignes des degrés */
		printf("d-\t|\t");
		for (w = 0 ; w < graphe_get_n(g) ; w ++)
			printf("%d\t", graphe_get_degre(g, w));

		printf("\n");
	}
}

