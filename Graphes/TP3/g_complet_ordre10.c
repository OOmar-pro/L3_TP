#include <stdio.h>
/* fopen , fclose , fprintf , perror , FILE */
#include <stdlib.h>
/*  EXIT_SUCCESS , EXIT_FAILURE  */
int main()
{
    FILE *f;
    int i,j;
    char nom_fichier[] = "k10.dot";
    f = fopen(nom_fichier, "w");
    if (f == NULL)
    {
        perror("fopen");
        /* écrit la  dernière  erreur  rencontrée par  fopen */
        return EXIT_FAILURE;
    }
    fprintf(f, "graph{\n");

    for (i = 1; i < 10; i++)
        fprintf(f, "\t%d;\n", i);
    
    fprintf(f, "\n");


    for (i = 1; i < 10; i++){
        for(j = i+1; j < 10; j++){
            fprintf(f, "\t%d--%d;\n", i, j);
        }
    }
    fprintf(f, "}\n");
    fclose(f);
    return EXIT_SUCCESS;
}