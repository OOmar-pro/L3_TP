/**
 * \file graphe-1.h
 * \brief Représentation des graphes par leur matrice d'adjacence
 * \version 2
 * \date ven. 20 sept. 2019 11:24:01 CEST
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse

 * Dans cette version :
 * - L'implémentation de la matrice d'adjacence est
 * réalisée par un tableau *statique* à deux dimensions. Ainsi, l'ordre des
 * graphes doit être inférieur ou égal à la valeur de la constante
 * symbolique GRAPHE_ORDRE_MAX.
 * - Les graphes sont pour l'instant tous non orientés.
 *
 * Règles de gestion :
 * - un graphe peut être initialisé au graphe stable, pour un nombre de sommets
 *   donné
 * - on peut ensuite ajouter ou supprimer des arêtes du graphe
 * - en revanche, l'ordre du graphe ne peut être modifié sans ré-initialiser
 *   totalement le graphe.
*/

#ifndef GRAPHE_H
#define GRAPHE_H

/**
 * \brief nombre maximal de sommets dans un graphe
 */
#define GRAPHE_ORDRE_MAX 1500

/* ______________________________________ Structure de données */

/**
 * \brief Graphe non orienté représenté par sa matrice d'adjacence.
 *
 * Un graphe est ici représenté par son nombre de sommets \a n qui doit être
 * compris entre 0 et GRAPHE_ORDRE_MAX et sa matrice d'adjacence \a adj.
 *
 * L'ensemble des sommets du graphe est alors \f$\{0, 1, 2, \ldots, n-1\}\f$.
 *
 * Le champ \a m est le nombre d'arêtes et est mis à jour par les fonctions de
 * manipulation.
 */
struct s_graphe {
	int n;/**< nombre de sommets du graphes
		*
		* Il doit être compris entre 0 et GRAPHE_ORDRE_MAX.
	*/
	int m;/**< nombre d'arêtes du graphes */
	int adj[GRAPHE_ORDRE_MAX][GRAPHE_ORDRE_MAX];
	/**< matrice d'adjacence du graphe
	 *
	 * Doit être cohérente avec m.
	 *
	 * Seules les lignes et colonnes d'indice 0 à n -1 sont à lire
	 */
};
typedef struct s_graphe graphe;

/* ______________________________________ Initialisation */

/**
 * \brief Initialise un graphe en un graphe sans arête d'ordre n
 * \param g adresse de la variable de type graphe à initialiser
 * \param n ordre du graphe
 * \return -1 si \a n est négatif ou supérieur à \a GRAPHE_ORDRE_MAX, 0 sinon.
*/
int graphe_stable(graphe* g, int n);

/* ______________________________________ Ajout / Suppression d'arêtes */

/**
 * \brief Ajoute une arête entre deux sommets dans le graphe
 * \param g adresse de la variable graphe à modifier
 * \param v une extrémité de l'arête (entre 0 et n - 1)
 * \param w une extrémité de l'arête (entre 0 et n - 1)
 */
void graphe_ajouter_arete(graphe* g, int v, int w);

/**
 * \brief Supprime une arête entre deux sommets dans le graphe
 * \param g adresse de la variable graphe à modifier
 * \param v une extrémité de l'arête (entre 0 et n - 1)
 * \param w une extrémité de l'arête (entre 0 et n - 1)
 * \return -1 si l'arête ne peut être supprimée (n'existe pas), 0 sinon
 */
int graphe_supprimer_arete(graphe* g, int v, int w);

/* ______________________________________ Accesseurs en lecture */

/**
 * \brief Retourne l'ordre du graphe.
 * \param g adresse de la variable graphe à lire
 * \return le nombre de sommets du graphe
 */
int graphe_get_n(graphe* g);

/**
 * \brief Retourne le nombre d'arêtes du graphe.
 * \param g adresse de la variable graphe à lire
 * \return le nombre d'arêtes du graphe
 */
int graphe_get_m(graphe* g);

/**
 * \brief Retourne le nombre de fois qu'une arete est présente entre deux
 * sommets donnés.
 * \param g adresse de la variable graphe à lire
 * \param v une extrémité de l'arête (entre 0 et n - 1)
 * \param w une extrémité de l'arête (entre 0 et n - 1)
 * \return le nombre d'arêtes entre les sommets \a v et \a w
 */
int graphe_get_multiplicite_arete(graphe* g, int v, int w);

/**
 * \brief Retourne le degré d'un sommet.
 * \param g adresse de la variable graphe à lire
 * \param v sommet du graphe (entre 0 et n - 1)
 * \return le degré du sommet v dans le graphe
 */
int graphe_get_degre(graphe* g, int v);

/**
 * \brief Retourne 1 si le graphe est simple, 0 sinon.
 * \param g adresse de la variable graphe à lire
 * \return 1 si le graphe est simple, 0 sinon
 */
int graphe_est_simple(graphe *g);

/* ______________________________________ Entrées / Sorties */

/**
 * \brief Affiche sur la sortie standard les données d'un graphe
 * \param g adresse de la variable graphe à lire
 *
 * Affiche le nombre de sommets, d'arêtes, la matrice d'adjacence et les degrés
 * des sommets du graphe
 */
void graphe_afficher(graphe* g);

/**
 * \brief Initialise un graphe au graphe complet d'ordre \a n
 *
 * \param g adresse de la variable de type graphe à initialiser
 * \param n ordre du graphe (compris entre 0 et GRAPHE_ORDRE_MAX)
 * \return -1 si \a n est négatif ou supérieur à GRAPHE_ORDRE_MAX, 0 sinon
 */
int graphe_complet(graphe* g, int n);

/**
 * \brief Initialise un graphe au graphe complet d'ordre \a n
 * \param g adresse de la variable de type graphe à initialiser
 * \param n ordre du graphe (compris entre 0 et GRAPHE_ORDRE_MAX)
 * \param p probabilité pour chaque arête d'être présente
 * \return
 *	* -1 si \a n est négatif ou supérieur à GRAPHE_ORDRE_MAX,
 *	* -2 si p n'est pas entre 0 et 1 (compris),
 *	* 0 sinon
 */
int graphe_aleatoire(graphe* g, int n, double p);

/**
 * \brief Initialise un graphe g au graphe cycle d'ordre \a n
 * \param g adresse de la variable de type graphe à initialiser
 * \param n ordre du graphe (compris entre 0 et GRAPHE_ORDRE_MAX
 * \return -1 si \a n est négatif ou supérieur à GRAPHE_ORDRE_MAX
 */
int graphe_cycle(graphe *g, int n);

/**
 * \brief Initialise un graphe g au graphe biparti complet \f$K_{p,q}\f$
 * \param g adresse de la variable de type graphe à initialiser
 * \param p taille de la première partie (les sommets de cette partie sont
 *	0, 1, ..., p - 1)
 * \param q taille de la seconde partie (les sommets de cette partie sont
 *	p, p + 1, ... p + q - 1)
 * \return -1 si \a p ou \a q est négatif ou que \a p + \a q est
 *	supérieur à GRAPHE_ORDRE_MAX
 */
int graphe_biparti(graphe *g, int p, int q);

/**
 * \brief Retourne 1 si un graphe est sous-graphe partiel d'un autre graphe, 0
 *	sinon
 * \param g adresse d'une variable graphe à lire
 * \param h adresse d'une variable graphe à lire
 * \return 1 si le graphe pointé par h est un sous-graphe partiel du graphe
 *	pointé par g, 0 sinon.
 */
int graphe_est_sousgraphe_partiel(graphe *g, graphe *h);

/**
 * \brief Retourne 1 si le graphe contient un triangle.
 * \param g adresse de la variable graphe à lire
 * \return 1 si le graphe pointé par g contient un triangle (c'est-à-dire un
 * cycle d'ordre 3) et 0 sinon.
 */
int graphe_contient_triangle(graphe *g);

/**
 * \brief Retourne 1 si le graphe est connexe.
 * \param g adresse de la variable graphe à lire
 * \return 1 si le graphe pointé par g est connexe
 *	et 0 sinon.
 */
int graphe_est_connexe(graphe *g);

/**
 * \brief Écrit le graphe au format dot dans un fichier.
 * \param g adresse de la variable graphe à lire
 * \param nom_fichier nom du fichier à écrire
 * \return 0 si l'écriture du fichier a réussi, -1 sinon
 */
int graphe_ecrire_dot(graphe *g, char *nom_fichier);

/**
 * \brief Initialise un graphe à celui qui est décrit dans un fichier au format
 * DOT.
 * \param g adresse de la variable graphe à écrire
 * \param nom_fichier nom du fichier à lire
 * \return 0 si l'écriture du fichier a réussi, -1 si la lecture du fichier a
 * échoué, -2 si l'initialisation du graphe a échoué (trop de sommets),
 * -3 si une erreur de syntaxe est détectée dans le fichier DOT.
 *
 *  Voici un exemple de fichier DOT avec la syntaxe à respecter. Celle-ci est
 *  volontairement beaucoup plus rigide que dans le format DOT d'origine
 *  (l'indentation se fait avec une \a tabulation).
 *  \code{.dot}
graph {
	0;
	1;
	2;
	3;
	4;

	0 -- 1;
	2 -- 2;
	3 -- 2;
	4 -- 1;
	0 -- 4; 
	4 -- 1;
}
 *  \endcode
 */
int graphe_charger_dot(graphe *g, char *nom_fichier);
#endif
