#include "backend.h"
#include <stdio.h>

int main() {
    printf("%d\n", initialize_conn());
    printf("%d\n", execute("INSERT INTO Users VALUES (\"shit\")"));
    close_conn();
}
