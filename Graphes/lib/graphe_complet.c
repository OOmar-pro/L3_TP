#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/stat.h> /* pour le statut de retour de la commande dot */

int main()
{
	char nom_fichier[] = "complet10.dot";
	int i, j;
	FILE *f = fopen(nom_fichier, "w");
	if (!f) { perror("fopen"); return EXIT_FAILURE; }

	fputs("graph {\n", f);
	for (i = 0; i < 10; ++i)
		fprintf(f, "\t%d;\n", i);
	fputs("\n", f);
	for (i = 0; i < 10; ++i)
		for (j = i + 1; j < 10; ++j)
			fprintf(f, "\t%d -- %d;\n", i, j);
	fputs("}\n", f);

	fclose(f);
#ifdef AFFICHER
	{
		int stat;
		char cmd[80];
		char pref_cmd[] = "dot -Tx11 ";
		sprintf(cmd, "%s%.*s", pref_cmd,(int) (sizeof(cmd) - strlen(pref_cmd) - 1), nom_fichier);
		puts(cmd);
		stat = system(cmd);
		return WEXITSTATUS(stat);
	}
#endif
	return EXIT_SUCCESS;
}
