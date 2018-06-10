#include <mysql.h>
#include "backend.h"

MYSQL* conn;

int initialize_conn(void) {
    conn = mysql_init(NULL);
    return mysql_real_connect(conn,
                              "192.168.2.102",
                              "datainput",
                              "guchianone",
                              "japantoday",
                              0, NULL, 0) != NULL;
}

void close_conn(void) {
    mysql_close(conn);
}

int execute(char* query) {
    return mysql_query(conn, query);
}
