#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_LENGTH 1000

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <username>\n", argv[0]);
        return EXIT_FAILURE;
    }

    char *login = argv[1];

    FILE *file = fopen("/etc/passwd", "r");
    if (file == NULL) {
        perror("Error opening the /etc/passwd file");
        exit(EXIT_FAILURE);
    }

    char line[MAX_LINE_LENGTH];
    while (fgets(line, MAX_LINE_LENGTH, file) != NULL) {
        char *token = strtok(line, ":");
        if (strcmp(token, login) == 0) {
            for (int i = 0; i < 3; ++i) {
                token = strtok(NULL, ":");
            }

            token = strtok(NULL, ":");
            if (token != NULL) {
                char *name = strtok(token, ",");
                if (name != NULL) {
                    printf("%s\n", name);
                    fclose(file);
                    exit(EXIT_SUCCESS);
                }
            }
        }
    }

    printf("User with login %s not found\n", login);
    fclose(file);

    return EXIT_SUCCESS;
}
