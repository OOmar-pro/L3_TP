#include <stdlib.h>
#include <string.h>
#include "graphe_parcours.h"
#include "graphe-4.h"
#include "parcours.h"
#include "conteneur_sommets.h"

int graphe_parcours_profondeur(graphe *g, graphe **arbo, int **suff, int *prio)
{
  conteneur_sommets *cs = cs_creer_pile(graphe_get_n(g));
  struct parcours *p = pc_init(g,cs,prio);

  if(p == NULL){
    pc_detruire(p);
    return -1;
  }

  pc_parcourir(p);

  pc_detruire(p);
  return 0;
}

int graphe_parcours_largeur(graphe *g, graphe **arbo, int **suff, int *prio)
{
  return -2;
}

int graphe_parcours_larg_ou_prof(graphe *g, graphe **arbo, int **suff, int *prio)
{
  /* TODO : à implémenter */
  return -2;
}

int graphe_ordre_top(graphe *g, int **ordre_top)
{
  /* TODO : à implémenter */
  return -2;
}

int graphe_comp_fort_conn(graphe *g, int **reprs_cfc)
{
  /* TODO : à implémenter */
  return -2;
}

int *graphe_distances_depuis_sommet(graphe *g, int r)
{
  /* TODO : à implémenter */
  return calloc(graphe_get_n(g), sizeof(int));
}

int graphe_diametre(graphe *g)
{
  /* TODO : à implémenter */
  return -1;
}

