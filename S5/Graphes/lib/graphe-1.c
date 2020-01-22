/**
 * \file graphe-1.c
 * \brief Représentation des graphes par leur matrice d'adjacence
 * \version 2
 * \date ven. 20 sept. 2019 11:23:30 CEST
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
*/
#include "graphe-1.h"

#include <stdio.h>	/* pour printf() */
#include <stdlib.h>	/* rand */
#include <string.h>

int graphe_stable(graphe* g, int n)
{
	int statut = -1; /* statut de réussite (statut == 0) ou d'échec (statut == -1) de la fonction */
	int v, w;
	if (n < 0 || n > GRAPHE_ORDRE_MAX)
		return statut;
	else {
		g->n = n;
		g->m = 0;
		for (v = 0; v < n; ++v)
			for (w = 0; w < n; ++w)
				g->adj[v][w] = 0;
		statut = 0;
	}
	return statut;
}
/* __________________________________ Ajout / Suppression d'arêtes */

void graphe_ajouter_arete(graphe* g, int v, int w)
{
	++(g->adj[v][w]);
	++(g->m);
	if (v != w)
		++(g->adj[w][v]);
}

int graphe_supprimer_arete(graphe* g, int v, int w)
{
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
	return g->adj[v][w];
}

int graphe_get_degre(graphe* g, int v)
{
	int deg =0;
	int w;
	for ( w = 0 ; w < graphe_get_n(g) ; ++w )
		deg += graphe_get_multiplicite_arete(g, v, w) ;
	/* les boucles comptent 2 dans le degré */
	deg += graphe_get_multiplicite_arete(g, v, v);
	return deg;
}

int graphe_est_simple(graphe *g)
{
	int v, w;
	for (v = 0; v < graphe_get_n(g) ; ++v)
		for (w = v; w < graphe_get_n(g) ; ++w)
			if ( graphe_get_multiplicite_arete(g, v, w) >= 2
				|| (v == w && graphe_get_multiplicite_arete(g, v, w)) )
				return 0;
	return 1;
}
/* ______________________________________ Entrées / Sorties */

void graphe_afficher(graphe* g)
{
	int v, w;

	if(g == NULL)
		printf("Structure non instanciee (NULL)\n");
	else if(0 > graphe_get_n(g) || GRAPHE_ORDRE_MAX < graphe_get_n(g))
		printf("Structure incoherente (graphe_get_n(g) de valeur %d hors"
			" intervalle requis {0 ,.., %d})\n", graphe_get_n(g),
				GRAPHE_ORDRE_MAX);
	else
	{
		printf("graphe d'ordre %d sur %d aretes: \n",
				graphe_get_n(g), graphe_get_m(g));
		/* matrice d'adjacence */
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
				printf("%d\t",
					graphe_get_multiplicite_arete(g, v, w));

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

int graphe_cycle(graphe *g, int n)
{
	int v;
	if (graphe_stable(g, n) < 0)
		return -1;
	for (v = 1; v < graphe_get_n(g) - 1; ++v)
		graphe_ajouter_arete(g, v, v + 1);
	graphe_ajouter_arete(g, graphe_get_n(g) - 1, 0);
	return 0;
}

int graphe_biparti(graphe *g, int m, int p)
{
	int v, w;
	if ( m < 0 || p < 0 || graphe_stable(g, m + p) < 0)
		return -1;
	for (v = 0; v < m; ++v)
		for (w = p; w < m + p; ++w)
			graphe_ajouter_arete(g, v, w);
	return 0;
}

int graphe_est_sousgraphe_partiel(graphe *g, graphe *h)
{
	int v, w;
	if (graphe_get_n(h) != graphe_get_n(g))
		return 0;
	for (v = 0; v < graphe_get_n(g); ++v)
		for (w=v; v < graphe_get_n(g); ++v)
			if (graphe_get_multiplicite_arete(h, v, w)
				> graphe_get_multiplicite_arete(g, v, w))
				return 0;
	return 1;
}

int graphe_contient_triangle(graphe *g)
{
	/* algorithme brutal (y'en a-t-il d'autres ?) */
	int u, v, w;
	for (u = 0; u < graphe_get_n(g); ++u)
		for (v = 0; v < graphe_get_n(g); ++v)
			for (w = 0; w < graphe_get_n(g); ++w)
				if (
					u != v && v != w && u != w
					&& graphe_get_multiplicite_arete(g, u, v)
					&& graphe_get_multiplicite_arete(g, u, w)
					&& graphe_get_multiplicite_arete(g, v, w)
				   )
					return 1;
	return 0;
}

int graphe_est_connexe(graphe * g)
{
	/* solution qui ressemble à un parcours en largeur */
	int Bk[GRAPHE_ORDRE_MAX] = {1}; // sous-ensemble de nœuds atteignables depuis le nœud 0
	// initialisation
	int i;
	for (i=1; i < graphe_get_n(g); ++i) Bk[i]=0;
	// n fois : extension du sous-ensemble
	int n;
	for (n=0; n < graphe_get_n(g); ++n)
	{
		// propagation des nœuds connexes
		for (i=0; i<graphe_get_n(g); ++i)
			if (Bk[i]!=0) {
				int j;
				for (j=0; j<graphe_get_n(g); ++j)
					if (graphe_get_multiplicite_arete(g, i, j)!=0)
						Bk[j] = 1 ;
			}
	}
	// réponse
	for (i=1; i < graphe_get_n(g); ++i) if (Bk[i]==0) return 0;
	return 1;
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
/* Fonctions auxiliaires et constantes pour la fonction graphe_charger_dot */
/** \cond NE_PAS_DOCUMENTER */
int lire_sommet(char *ligne, int *u)
{
	char tab, fin[2];
	/* %s ignore les blancs donc on doit utiliser %c */
	if (sscanf(ligne, "%c%d%2c", &tab, u, fin) < 3 || tab != '\t'
			|| strncmp(fin, ";\n", 2))
		return -3;
	return 0;
}

int lire_arete(char *ligne, int *u, int *v)
{
	char tab, milieu[4], fin[3];
	if (sscanf(ligne, "%c%d%4c%d%2c", &tab, u, milieu, v, fin) < 5
			|| tab != '\t' || strncmp(milieu, " -- ", 4)
			|| strncmp(fin, ";\n", 2))
		return -3;
	return 0;
}

void err_synt(int num_ligne)
{
	fprintf(stderr, "Erreur de syntaxe à la ligne %d.\n", num_ligne);
}
#define SOMMETS 1
#define ARETES 2
#define FIN_FICHIER 3
/** \endcond */
int graphe_charger_dot(graphe *g, char *nom_fichier)
{
	int u, v; /* sommets */
	int etat; /* etat durant le parcours du fichier */
	FILE *f = fopen(nom_fichier, "r");
	char ligne[80];
	int num_ligne = 0;
	if (!f) { perror("fopen"); return -1; }

	/* en-tete */
	fgets(ligne, sizeof(ligne), f);
	if (feof(f)) {
		fprintf(stderr, "Le fichier %s est vide !\n", nom_fichier);
		return -3;
	}
	++num_ligne;
	if (strcmp(ligne, "graph {\n")) {
		err_synt(num_ligne); fclose(f); return -3;
	}

	etat = SOMMETS;
	while(fgets(ligne, sizeof(ligne), f)) {
		++num_ligne;
		/* si la ligne du fichier est trop longue, on sort */
		if (!strchr(ligne, '\n')) {
			fprintf(stderr, "Ligne %d trop longue.\n", num_ligne);
			fclose(f); return -4;
		}
		if (etat == SOMMETS) {
			if (strlen(ligne) == 1) { /* ligne vide */
				if (num_ligne - 2 > GRAPHE_ORDRE_MAX) {
					fprintf(stderr, "Trop de sommets !\n");
					fclose(f); return -2;
				}
				/* la ligne vide signale la fin des sommets */
				graphe_stable(g, num_ligne - 2);
				etat = ARETES;
			} else if (lire_sommet(ligne, &u) == -3) {
				/* erreur de syntaxe */
				err_synt(num_ligne); fclose(f); return -3;
			} else if (u != num_ligne - 2) {
				/* sommet mal numéroté */
				fprintf(stderr, "Le sommet à la ligne %d"
					" devrait être %d. Fin.\n",
					num_ligne, num_ligne -2);
				fclose(f); return -3;
			}
		} else if (etat == ARETES) {
			if (!strcmp(ligne, "}\n")) {
				/* fin des arêtes */
				etat = FIN_FICHIER;
			} else if (lire_arete(ligne, &u, &v) == -3) {
				/* erreur de syntaxe */
				err_synt(num_ligne); fclose(f); return -3;
			} else if (u < 0 || v < 0 || u >= graphe_get_n(g) ||
				v >= graphe_get_n(g)) {
				/* sommet ne faisant pas partie du graphe */
				fprintf(stderr, "Mauvais sommet à la ligne %d\n",
						num_ligne);
				return -3;
			} else
				graphe_ajouter_arete(g, u, v);
		} else { /* etat == FIN_FICHIER mais !feof() */
			err_synt(num_ligne); fclose(f); return -3;
		}
	}
	fclose(f);
	return 0;
}




