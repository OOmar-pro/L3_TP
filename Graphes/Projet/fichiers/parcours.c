#include <stdlib.h>
#include <stdio.h>
#include "graphe-4.h"
#include "parcours.h"
#include "conteneur_sommets.h"

struct parcours *pc_init(graphe *g, conteneur_sommets *cs, int *prio)
{
  struct parcours *p;
  int n = graphe_get_n(g);

  p->conteneur = cs;
  p->g = g;
  p->arbo = graphe_creer(n,0);

  if(prio == NULL){
    
    prio = calloc(n, sizeof(int));

    for (int i = 0; i < n; i++)
    {
      prio[i] = i;
    }   
  }

  p->prio = prio;
  p->dernier_prio = 0;

  p->visite = calloc(n, sizeof(int));
  p->explore = calloc(n, sizeof(int));

  if(p->visite == NULL || p->explore == NULL)
  {
    pc_detruire(p);
    return NULL;
  }

}

void pc_detruire(struct parcours *p)
{
  free(p->visite);
  free(p->explore);
  free(p->prio);
  cs_detruire(p->conteneur);
  graphe_detruire(p->arbo);
  graphe_detruire(p->g);
}

int pc_choisir_racine(struct parcours *p)
{
  for (int i = p->dernier_prio; i < (sizeof(p->prio)/sizeof(int)); i++)
  {
    if(p->visite[p->prio[i]] == 0){
      p->dernier_prio = i;
      return p->prio[i];
    }
  }
}

int pc_est_fini(struct parcours *p)
{
  return pc_conteneur_est_vide(p);
}

void pc_marquer_comme_visite(struct parcours *p, int sommet)
{
  p->visite[sommet] = 1;
}

void pc_marquer_comme_visite_depuis(struct parcours *p, int sommet, int depuis)
{
  /* TODO : à implémenter */
}

void pc_marquer_comme_explore(struct parcours *p, int sommet)
{
  p->explore[sommet] = 1;
}

int pc_conteneur_est_vide(struct parcours *p)
{
  return p->conteneur->est_vide(p->conteneur->donnees);
}

void pc_ajouter_dans_conteneur(struct parcours *p, int sommet)
{
  p->conteneur->ajouter(p->conteneur->donnees, sommet);
}

void pc_supprimer_du_conteneur(struct parcours *p)
{
  p->conteneur->supprimer(p->conteneur->donnees);
}

int pc_choisir_dans_conteneur(struct parcours *p)
{
  p->conteneur->choisir(p->conteneur->donnees);
}

msuc *pc_prochain_msuc(struct parcours *p, int sommet)
{
  msuc* m = msuc_suivant(p->arbo->tab_sucs[sommet]);

  return m;
}

int pc_est_visite(struct parcours *p, int sommet)
{
  return p->visite[sommet];
}

void pc_parcourir_depuis_sommet(struct parcours *p, int r)
{
  int v,w;
  msuc *m;

  while (pc_conteneur_est_vide(p) == 0)
  {
    v = pc_choisir_dans_conteneur(p);
    m = pc_prochain_msuc(p, v);

    w = msuc_sommet(msuc_suivant(m));

    if(w == NULL || pc_est_visite(p,w))
    {
      pc_marquer_comme_explore(p,v);
      pc_supprimer_du_conteneur(p);
    }
    else
    {
      pc_marquer_comme_visite(p,w);
      pc_ajouter_dans_conteneur(p,w);
    }
  }
}

void pc_parcourir(struct parcours *p)
{
  int r = pc_choisir_racine(p);

  while (pc_est_fini(p) == 0)
  {
    pc_ajouter_dans_conteneur(p, r);
    pc_marquer_comme_visite(p, r);

    pc_parcourir_depuis_sommet(p,r);
  }
  
}

