/**
 * \file mat_bool.c
 * \brief Manipulation de matrices booléennes carrées
 * \version 1
 * \date lundi 30 septembre 2019, 10:04:11 (UTC+0200)
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
*/
#include <stdlib.h>
#include <stdio.h>
#include "mat_bool.h"

mat_bool *mat_bool_creer(int n)
{
	mat_bool* m = malloc(sizeof(mat_bool));
	if(m == NULL){
		return NULL;
	}

	m->n = n;
	m->tab = calloc(n,sizeof(int));
	if(m->tab == NULL){
		return NULL;
	}

	return m;
}

void mat_bool_detruire(mat_bool *m)
{
	free(m->tab);
	free(m);
}

int mat_bool_get_n(mat_bool *m)
{
	if(m != NULL)
		return m->n;
	return -1;
}

int mat_bool_get_coeff(mat_bool *m, int ligne, int col)
{
	if( ligne >= 0 && col >= 0 && ligne < m->n && col < m->n ){
		return m->tab[(ligne * m->n) + col];
	}
	return -1;
}
void mat_bool_set_coeff(mat_bool *m, int ligne, int col, int val)
{
	if( ligne >= 0 && col >= 0 && ligne < m->n && col < m->n && (val == 0 || val == 1)){
		m->tab[(ligne * m->n) + col] = val;
	}
}

void mat_bool_afficher(mat_bool *m)
{
	int i;
	for(i = 0; i < (m->n*m->n); i++){
		if(i % m->n == 0){
			printf("\n");
		}
		printf("%d ", m->tab[i]);
	}
	printf("\n");
}
