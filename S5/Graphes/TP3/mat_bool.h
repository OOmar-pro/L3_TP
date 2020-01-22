/**
 * \file mat_bool.h
 * \brief Manipulation de matrices booléennes carrées
 * \version 1
 * \date lundi 30 septembre 2019, 10:04:11 (UTC+0200)
 * \authors Pierre Rousselin, Antoine Rozenknop, Sophie Toulouse
 *
 * Une matrice booléenne carrée est représentée par son ordre \a n et un tableau
 * dynamique de taille n * n.
 *
 * Règles de gestion de la mémoire:
 * 1. Déclarer un pointeur vers une variable de type mat_bool.
 * 2. CRÉER et initialiser cette variable avec une (et une seule) fonction qui
 * CRÉE une matrice booléenne (dans ce fichier, seulement mat_bool_creer).
 * 3. DÉTRUIRE la variable pointée après utilisation. Il est alors possible de
 * CRÉER de nouveau la variable en utilisant le même pointeur.
 *
 * Exemple d'utilisation d'une variable de type mat_bool :
 *
 * \code{.c}
 * mat_bool *m = mat_bool_creer(37);
 * if (m == NULL)
 * 	exit(EXIT_FAILURE);
 * mat_bool_set_coeff(m, 0, 36, 1);
 * mat_bool_afficher(m);
 * mat_bool_detruire(m);
 * \endcode
*/
#ifndef MAT_BOOL_H
#define MAT_BOOL_H
/**
 * \brief Matrice booléenne carrée d'ordre n, représentée par un tableau
 * dynamique de taille n * n.
 * 
 * Le coefficient a la i-ème ligne et j-ème colonne, où i et j sont compris
 * entre 0 et n - 1, est tab[i*n + j].
 */
typedef struct {
	int n; /**<ordre de la matrice carrée. */
	int *tab; /**<tableau dynamique de taille n * n */
} mat_bool;

/**
 * \brief CRÉE une matrice booléenne carrée d'ordre n et l'initialise à la
 * matrice nulle.
 * \param n ordre de la matrice carrée
 * \return NULL si l'allocation a échoué, sinon l'adresse de la matrice ainsi
 * créée et initialisée.
 *
 * En cas de succès,
 * de la mémoire est allouée, à la fois pour la variable de type mat_bool et le
 * tableau de n*n int pointé par son champ tab.
 */
mat_bool *mat_bool_creer(int n);
/**
 * \brief DÉTRUIT la matrice booléenne dont l'adresse est passée en argument.
 * \param m adresse de la variable de type mat_bool à détruire.
 *
 * Le pointeur passé en paramètre ne peut plus être utilisé ensuite, sauf par
 * une fonction qui CRÉE une matrice booléenne.
 */
void mat_bool_detruire(mat_bool *m);

/**
 * \brief Retourne l'ordre de la matrice booléenne carrée.
 * \param adresse de la variable matrice booléenne carrée à lire
 *
 * Ne fait rien si m est le pointeur NULL
 */
int mat_bool_get_n(mat_bool *m);
/**
 * \brief Retourne le coefficient à la ligne \a ligne et à la colonne \a colonne
 * de la matrice d'adresse m.
 * \param adresse de la variable matrice booléenne carrée à lire
 * \param ligne indice, compris entre 0 et n - 1, de la ligne du coefficient à
 * lire
 * \param colonne indice, compris entre 0 et n - 1, de la colonne du coefficient à
 * lire
 */
int mat_bool_get_coeff(mat_bool *m, int ligne, int col);
/**
 * \brief Modifie le coefficient à la ligne \a ligne et à la colonne \a colonne
 * de la matrice d'adresse m.
 * \param adresse de la variable matrice booléenne carrée à modifier
 * \param ligne indice, compris entre 0 et n - 1, de la ligne du coefficient à
 * modifier
 * \param colonne indice, compris entre 0 et n - 1, de la colonne du coefficient à
 * modifier
 * \param val nouvelle valeur (0 ou 1) du coefficient à modifier.
 */
void mat_bool_set_coeff(mat_bool *m, int ligne, int col, int val);

/**
 * \brief Affiche sur la sortie standard la matrice booléenne carrée dont
 * l'adresse est passée en argument.
 * \param m adresse de la variable matrice booléenne à lire.
 */
void mat_bool_afficher(mat_bool *m);

#endif /* MAT_BOOL_H */
