/* graphe-1 : représentation des graphes par leur matrice d'adjacence :: fichier
 * d'entête
    Règles de gestion :
    - un graphe peut être initialisé au graphe stable, pour
    un nombre de sommets donné
    - on peut ensuite ajouter ou supprimer des arêtes du graphe - en
    revanche, l'ordre du graphe ne peut être modifié sans ré-initialiser
    totalement le graphe
*/

#ifndef GRAPHE_H
#define GRAPHE_H

#define GRAPHE_ORDRE_MAX 9	/* nombre maximal de sommets dans un graphe */

/* ______________________________________ Structure de données
*/

/* Graphe par matrice d'adjacence */
struct s_graphe {
	int n;	/* nombre de sommets du graphes (doit être compris entre 1 et
		   GRAPHE_ORDRE_MAX) => V = {0 ,..., n -1} */
	int m;	/* nombre d'arêtes du graphes (entier naturel) */
	int adj[GRAPHE_ORDRE_MAX][GRAPHE_ORDRE_MAX];
	/* matrice d'adjacence du graphe (doit être cohérente avec m) : seules
	 * les lignes et colonnes d'indice 0 à n -1 sont à lire */
};

typedef struct s_graphe graphe;

/* ______________________________________ Initialisation
*/

/* Cette fonction initialise un graphe en un stable d'ordre n si 0 <= n <=
 * GRAPHE_ORDRE_MAX (auquel cas la fonction retourne 0), elle renvoie -1 sinon
	Pré-conditions : g adresse d'une variable graphe
	Post-conditions en cas de succès (0 <= n <= GRAPHE_ORDRE_MAX) :
	- le champs g->n est initialisé à la valeur passée en paramètre - g est
	un stable : les cases d'indice (v, w) où 0 <= v, w < n du champ adj
	valent 0, le champ m vaut 0
*/
int graphe_stable(graphe* g, int n);

/* ______________________________________ Ajout / Suppression d'arêtes
*/

/* ajout d'une arête donnée 
	Pré-conditions : g adresse d'une variable graphe,
	0 <= v, w < g->n <= GRAPHE_ORDRE_MAX
	Post-conditions : g->m et g->adj[v][w] et g->adj[w][v] sont augmentés de 1
*/
void graphe_ajouter_arete(graphe* g, int v, int w);

/* suppression d'une arête
	Cette fonction renvoie 0 si l'arête peut être supprimée et 0 sinon
	Pré-conditions : g adresse d'une variable graphe, 0 <= v, w < g->n <=
	GRAPHE_ORDRE_MAX
	Post-conditions si l'arête peut être supprimée : g->m
	et g->adj[v][w] sont diminués de 1 (toujours), et il en est de même de
	g->adj[w][v] si v <> w et le graphe n'est pas orienté
*/
int graphe_supprimer_arete(graphe* g, int v, int w);

/* ______________________________________ Accesseurs en lecture */

/* ordre du graphe
	Cette fonction renvoie le nombre de sommets du graphe
	Pré-conditions : g adresse d'une variable graphe
*/
int graphe_get_n(graphe* g);

/* nombre d'arêtes du graphe
	Cette fonction renvoie le nombre d'arêtes du graphe
	Pré-conditions : g adresse d'une variable graphe
*/
int graphe_get_m(graphe* g);


/* multiplicité d'une arete :
	Cette fonction renvoie le nombre d'occurrences d'une arete donnée dans
	le graphe Pré-conditions : g adresse d'une variable graphe, 0 <= v, w <
	g->n <= GRAPHE_ORDRE_MAX
*/
int graphe_get_multiplicite_arete(graphe* g, int v, int w);

/* degre :
	Cette fonction renvoie le degre du sommet v
	Pré-conditions : g adresse
	d'une variable graphe, 0 <= v < g->n <= GRAPHE_ORDRE_MAX
*/
int graphe_get_degre(graphe* g, int v);

/* simplicité
 * retourne 1 si le graphe pointé est simple, 0 sinon
 */
int graphe_est_simple(graphe *g);
/* ______________________________________ Entrées / Sorties
*/

/* cette fonction affiche les données d'un graphe g <> NULL et si 0 <= g->n <=
 * GRAPHE_ORDRE_MAX
	Pré-condition : si g <> NULL, g adresse d'une variable graphe
*/

void graphe_afficher(graphe* g);

/* Initialisations supplémentaires */
/* Cette fonction initialise un graphe en un graphe complet
 * d'ordre n si 0 <= n <= GRAPHE_ORDRE_MAX (auquel cas la fonction retourne 0),
 * elle renvoie -1 sinon
	Pré-conditions : g adresse d'une variable graphe Post-conditions en cas
	de succès (0 <= n <= GRAPHE_ORDRE_MAX) : - le champs g->n est initialisé
	à la valeur passée en paramètre - g est un graphe complet : les entrées
	de la matrice sont 1 partout sauf sur la diagonale où elles sont 0*/
int graphe_complet(graphe* g, int n);

/* Cette fonction initialise un graphe en un graphe simple aléatoire
 * d'ordre n si 0 <= n <= GRAPHE_ORDRE_MAX et 0 <= p <= 1 
 * (auquel cas la fonction retourne 0),
 * elle renvoie -1 si n n'est pas convenable et
 * -2 si n est convenable mais pas p.
	Pré-conditions : g adresse d'une variable graphe Post-conditions en cas
	de succès (0 <= n <= GRAPHE_ORDRE_MAX) : - le champs g->n est initialisé
	à la valeur passée en paramètre - chaque arete du graphe complet
	correspondant est présente avec proba p*/
int graphe_aleatoire(graphe* g, int n, double p);

#endif
