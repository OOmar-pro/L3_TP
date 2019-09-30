/**
 * \file graphe-2.c
 * \brief Représentation des graphes par leur matrice d'adjacence
 * \version 1
 * \date lundi 30 septembre 2019, 10:04:11 (UTC+0200)
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
*/
#include "graphe-2.h"

#include <stdio.h>
#include <stdlib.h>

int graphe_stable(graphe* g, int n)
{
	int statut = -1;

	if(n >= 0){
		int i, j;

		g->m = 0;
		g->n = n;

		int** t = calloc(n, sizeof(int*));

		for (i = 0; i < n; i++)
		{
			t[i] = calloc(n, sizeof(int));
		 }
		

		g->adj = t;

		statut = 0;
	}

	return 0;
}

void graphe_detruire(graphe *g)
{
	/* TODO */
}
/* __________________________________ Ajout / Suppression d'arêtes */

void graphe_ajouter_arete(graphe* g, int v, int w)
{
#if 0 /* ancien code à modifier */
	++(g->adj[v][w]);
	++(g->m);
	if (v != w)
		++(g->adj[w][v]);
#endif
}

int graphe_supprimer_arete(graphe* g, int v, int w)
{
#if 0 /* ancien code à modifier */
	int statut = -1;	/* statut de réussite (statut == 0)
				   ou d'échec (statut == -1) de la fonction */
	if (v < g->n && w < g->n && (g->adj[v][w])) {
		--(g->adj[v][w]);
		if (v != w)
			--(g->adj[w][v]) ;
		--(g->m);
		statut = 0;
	}
	return statut;
#endif
	return -1;
}

/* ______________________________________ Accesseurs en lecture */

int graphe_get_n(graphe* g)
{
	return g->n;
}

int graphe_get_m(graphe* g)
{
	return g->m;
}

int graphe_get_multiplicite_arete(graphe* g, int v, int w)
{
#if 0 /* ancien code à modifier */
	return g->adj[v][w];
#endif
	return 0;
}

/* NE PAS ACCÉDER DIRECTEMENT AUX CHAMPS EN-DESSOUS DE CETTE LIGNE */

int graphe_get_degre(graphe* g, int v)
{
	int deg =0;
	int w;
	for (w = 0 ; w < graphe_get_n(g) ; ++w)
		deg += graphe_get_multiplicite_arete(g, v, w) ;
	/* les boucles comptent 2 dans le degré */
	deg += graphe_get_multiplicite_arete(g, v, v);
	return deg;
}

/* ______________________________________ Entrées / Sorties */

void graphe_afficher(graphe* g)
{
	int v, w;
	printf("graphe d'ordre %d sur %d aretes: \n",
			graphe_get_n(g), graphe_get_m(g));
	/* matrice d'adjacence */
	/* ligne indices colonnes */
	printf("\t\t");
	for (w = 0 ; w < graphe_get_n(g) ; w ++)
		printf("%d\t", w);
	printf("|d\n");

	/* ligne séparatrice entête colonne / corps matrice */
	printf("\t\t");
	for (w = 0 ; w < graphe_get_n(g) ; w ++)
		printf("_\t");

	printf("__\n");

	/* lignes de la matrice */
	for (v = 0 ; v < graphe_get_n(g) ; v ++) {
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
	printf("d\t|\t");
	for (w = 0 ; w < graphe_get_n(g) ; w ++)
		printf("%d\t", graphe_get_degre(g, w));
	printf("\n");
}

int graphe_ecrire_dot(graphe *g, char *nom_fichier)
{
	int u, v, k;
	FILE *f = fopen(nom_fichier, "w");
	if (!f) { perror("fopen"); return -1; }
	fputs("graph {\n", f);
	for (u = 0; u < graphe_get_n(g); ++u)
		fprintf(f, "\t%d;\n", u);
	fputs("\n", f);
	for (u = 0; u < graphe_get_n(g); ++u)
		for (v = u; v < graphe_get_n(g); ++v)
			for (k = graphe_get_multiplicite_arete(g, u, v);
				k > 0; --k)
				fprintf(f, "\t%d -- %d;\n", u, v);
	fputs("}\n", f);

	fclose(f);
	return 0;
}

/* ______________________________________ Autres fonctions d'initialisation */

int graphe_complet(graphe* g, int n)
{
	int v, w;
	if (graphe_stable(g, n) < 0)
		return -1;
	for (v = 0; v < graphe_get_n(g); ++v)
		for (w = v + 1; w < graphe_get_n(g); ++w)
			graphe_ajouter_arete(g, v, w);
	return 0;
}

int graphe_aleatoire(graphe* g, int n, double p)
{
	int v, w;
	if (graphe_stable(g, n) < 0)
		return -1;
	if (p < 0 || p > 1)
		return -2;
	for (v = 0; v < graphe_get_n(g); ++v)
		for (w = v + 1; w < graphe_get_n(g); ++w)
			if ((double) rand()/RAND_MAX <p)
				graphe_ajouter_arete(g, v, w);
	return 0;
}

