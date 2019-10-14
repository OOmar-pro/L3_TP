/* OUHBAD omar 11700863 groupe 1 */
/* IDRICI slimane 11701893 groupe 1 */

/**
 * \file acm.h
 * \brief Calcul et représentation d'arbres couvrant minimaux (implémentation)
 * \version 1
 * \date lundi 14 octobre 2019
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
 */
#include "acm.h"

#include <stdlib.h>
#include <stdio.h>
#include <float.h>

/*************** Prim */
struct s_donnees_prim {
	int marque;
	double poids;
	int parent;
};
typedef struct s_donnees_prim donnees_prim;

int graphe_acm_prim(graphe *g, int depart, graphe *acm)
{

	/** INITIALISATION **/

	donnees_prim** tab_sommets = calloc(graphe_get_n(g), sizeof(donnees_prim*));
	int i, j, pivot, parent;

	if(tab_sommets == NULL){
		return -1;
	}

	for (i = 0; i < graphe_get_n(g); i++)
	{
		tab_sommets[i] = malloc(sizeof(donnees_prim));

		if(tab_sommets[i] == NULL){
			return -1;
		}

		tab_sommets[i]->marque = 1;
		if(i == depart){
			tab_sommets[i]->poids = 0;
			tab_sommets[i]->parent = depart;
		}else{
			tab_sommets[i]->poids = DBL_MAX;
			tab_sommets[i]->parent = -1;

		}
	}


	/** FIN INITIALISATION **/

	for(i = 0; i < graphe_get_n(g); i++){
		pivot = 0;
		
		/* recherche et marquage du pivot */
		for(j = 0; j < graphe_get_n(g); j++){
			if(tab_sommets[j]->poids < tab_sommets[pivot]->poids){
				pivot = j;
			}
		}

		tab_sommets[pivot]->marque = 0;

		/* Mise a jour des poids et des parents */

		for (j = 0; j < graphe_get_n(g); j++)
		{
			if(graphe_get_multiplicite_arete(g, pivot, j) > 0 && tab_sommets[j]->marque == 1){
				tab_sommets[j]->poids = graphe_get_cout(g, pivot, j);
				tab_sommets[j]->parent = pivot;
			}
		}
	}

	/** FIN ALGO **/

	graphe_detruire(acm);


	graphe_stable(acm,graphe_get_n(g));

	for (i = 0; i < acm->n; i++)
	{
		parent = tab_sommets[pivot]->parent;

		graphe_ajouter_arete(g, pivot, parent, tab_sommets[pivot]->poids);

		pivot = parent;
	}

	return 0;
}


/*************** Kruskal */

/* ne modifier que la fonction graphe_acm_kruskal */

/**
 * \brief Type \a arete avec cout
 *
 * Une arête est représentée par ses deux extrémités :
 * \a v et \a w et son coût \a cout
 * Pour l'unicité de la représentation, on supposera que
 * \f$ v \leq w \f$.
 * On accèdera directement aux champs de cette structure.
 */
typedef struct arete_t {
	int v; /**<plus petite extrémité de l'arête */
	int w; /**<plus grande extrémité de l'arête */
	double cout; /**<coût de l'arête */
} arete;

/**
 * \brief Trie les arêtes du graphe par coût croissant
 * \param g adresse du graphe à lire
 * \return un pointeur vers un tableau des arêtes de g triées par coût
 * croissant. Les boucles sont supprimées et en cas d'arêtes multiples, seule
 * l'arête de plus petit coût est présente dans le tableau. Si l'allocation du
 * tableau a échoué, la valeur de retour est \a NULL.
 * La taille du tableau est graphe_get_m(g) ; les arêtes supprimées donnent
 * lieu à des entrées {v:0,w:0,cout:0.0} à la fin du tableau.
 *
 * La fonction appelante devra libérer la mémoire allouée au tableau avec la
 * fonction \a free.
 */
static struct arete_t *graphe_tri_aretes(graphe * g);


int graphe_acm_kruskal(graphe *g, graphe *acm)
{
	/* TODO */
	return -1;
}





/*********************************************/
/*  fonctions utilitaires à ne pas modifier  */
/*********************************************/

/**
 * \brief Compare les arêtes par coût
 * \param e1 adresse de la première arête
 * \param e2 adresse de la deuxième arête
 * \return -1, 0 ou 1 selon que le coût de e1 est respectivement inférieur,
 * égal ou supérieur au coût de e2.
 *
 * Cette fonction n'est utilisée que par \a graphe_tri_arete et ne doit pas être
 * modifiée.
 */
static int cmp_arete(const void *e1, const void *e2)
{
	const arete *f1 = e1;
	const arete *f2 = e2;
	if (f1->cout == f2->cout)
		return 0;
	if (f1->cout < f2->cout)
		return -1;
	return 1;
}

#pragma GCC diagnostic ignored "-Wunused-function"
static arete *graphe_tri_aretes(graphe *g)
{
	int v, w, i = 0;
	arete *tab = calloc(graphe_get_m(g), sizeof(arete));
	if (!tab)
		return NULL;
	for (v = 0; v < graphe_get_n(g); ++v)
		for (w = v + 1; w < graphe_get_n(g); ++w)
			if (graphe_get_multiplicite_arete(g, v, w)) {
				tab[i].v = v;
				tab[i].w = w;
				tab[i].cout = graphe_get_cout(g, v, w);
				++i;
			}
	qsort(tab, i, sizeof(arete), cmp_arete);
	return tab;
}
#pragma GCC diagnostic pop


int graphe_ecrire_dot_avec_acm(graphe *g, graphe *acm, char *nom_fichier)
{
	int u, v;
	FILE *f = fopen(nom_fichier, "w");
	if (!f) { perror("fopen"); return -1; }
	fputs("graph {\n", f);
	for (u = 0; u < graphe_get_n(g); ++u)
		fprintf(f, "\t%d;\n", u);
	fputs("\n", f);
	fputs("\tsubgraph g {\n", f);
	for (u = 0; u < graphe_get_n(g); ++u)
		for (v = u; v < graphe_get_n(g); ++v)
			if (graphe_get_multiplicite_arete(g, u, v) &&
				( u == v || !graphe_get_multiplicite_arete(acm, u, v)))
					fprintf(f, "\t\t%d -- %d [label = %.2f];\n",
						u, v, graphe_get_cout(g, u, v));
	fputs("\t}\n", f);
	fputs("\tsubgraph acm {\n\t\tedge [color = red]\n", f);
	for (u = 0; u < graphe_get_n(acm); ++u)
		for (v = u; v < graphe_get_n(acm); ++v)
			if (graphe_get_multiplicite_arete(acm, u, v))
				fprintf(f, "\t\t %d -- %d [fontcolor = red, label = %.2f];\n",
					u, v, graphe_get_cout(acm, u, v));
	fputs("\t}\n}\n", f);
	fclose(f);
	return 0;
}
