/**
 * \file connexite.h
 * \brief fonctions de lecture de graphes ayant un lien avec la connexité.
 * \version 1
 * \date lundi 30 septembre 2019, 10:04:11 (UTC+0200)
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
 */
#ifndef CONNEXITE_H
#define CONNEXITE_H

#include "graphe-2.h"
#include "mat_bool.h"
/**
 * \brief CRÉE une matrice booléenne d'ordre \a n et l'initialise à la matrice
 * d'adjacence du graphe \a g.
 * \param g adresse de la variable graphe à lire
 * \return NULL si la création de la matrice a échoué, sinon
 * 	l'adresse de la matrice booléenne créée et initialisée
 */
mat_bool *mat_bool_creer_adj(graphe *g);

/**
 * \brief CRÉE une matrice booléenne d'ordre \a n et l'initialise à la clôture
 * transitive du graphe \a g.
 * \param g adresse de la variable graphe à lire
 * \return NULL si la création de la matrice a échoué, sinon
 * 	l'adresse de la matrice booléenne ainsi créée et initialisée
 */
mat_bool *mat_bool_creer_clot_trans(graphe *g);

/**
 * \brief CRÉE un vecteur d'entiers de taille \a n et l'initialise de façon à
 * ce que, pour chaque sommet \a i entre 0 et n - 1, l'élément d'indice i de ce
 * vecteur est le plus petit représentant de sa composante connexe.
 * \param g adresse de la variable de type graphe à lire
 * \return NULL si l'allocation du vecteur échoué
 *
 * Par exemple, si les composantes connexes du graphe sont {0, 2, 4} et {1, 3},
 * le vecteur dont l'adresse est retournée contient, dans cet ordre,
 * {0, 1, 0, 1, 0}.
 * Ne pas oublier de libérer l'espace mémoire occupé par ce vecteur avec la
 * fonction \a free
 */
int *graphe_creer_comp_conn(graphe *g);

/**
 * \brief Affiche sur la sortie standard les différentes composantes connexes du
 * graphe.
 * \param g adresse de la variable de type graphe à lire
 * \return -1 si la fonction a échoué en raison de l'échec d'une allocation
 * mémoire, 0 sinon.
 *
 * Les composantes connexes sont numérotée et affichées dans l'ordre de leur
 * plus petit élément.\n
 * Chaque composante connexe est affichée dans l'ordre croissant de ses
 * sommets.\n
 * Exemple de sortie pour un graphe dont les composantes connexes sont {0, 2, 4}
 * et {1, 3} :
 * \code{.unparsed}
 * Composante connexe numéro 1 :
 * 0 2 4
 * Composante connexe numéro 2 :
 * 1 3
 * \endcode
 */
int graphe_afficher_comp_conn(graphe *g);
#endif /* CONNEXITE_H */
