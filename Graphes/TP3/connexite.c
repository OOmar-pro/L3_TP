/**
 * \file connexite.c
 * \brief fonctions de lecture de graphes ayant un lien avec la connexité.
 * \version 1
 * \date lundi 30 septembre 2019, 10:04:11 (UTC+0200)
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
 */
#include <stdlib.h>
#include <stdio.h>

#include "connexite.h"
#include "graphe-2.h"
#include "mat_bool.h"

mat_bool *mat_bool_creer_adj(graphe *g)
{
	int i,j;

	mat_bool* m = mat_bool_creer(g->n);

	if(m == NULL){
		return NULL;
	}

	for(i = 0; i < g->n; i++){
		for(j = 0; j < g->n; j++){
			mat_bool_set_coeff(m,i,j,graphe_get_multiplicite_arete(g,i,j) > 0);
		}
	} 
	return m;
}

mat_bool *mat_bool_creer_clot_trans(graphe *g)
{
	/* TODO */
	return NULL;
}

int *graphe_creer_comp_conn(graphe *g)
{
	/* TODO */
	return NULL;
}

int graphe_afficher_comp_conn(graphe *g)
{
	/* TODO */
	return 0;
}
