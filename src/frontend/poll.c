#include <ncurses.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* users[] = {"Yao", "Yang", "Xiao", "Paley"};
char tit[] = "Q: A I 1 2 3 4 5 6 7 8 C";

int validate_user(char* inp) {
    int i;
    for (i = 0; i < 4 && strcmp(inp, users[i]); i++);
    return i != 4;
}

int main(){
    char un[20];
    int ans[10] ={0};
    FILE* temp = fopen("temp", "a");
    char query_buf[1000];
    WINDOW* w = initscr();
    int my, mx;
    int n = 0;
    getmaxyx(w, my, mx);
    mvprintw(my >> 1, (mx - 9) >> 1, "%s\n", "User Name");
    mvvline((my >> 1) + 2, ((mx - 20) >> 1) - 1, ACS_VLINE, 1);
    mvvline((my >> 1) + 2, ((mx - 20) >> 1) + 20, ACS_VLINE, 1);
    mvprintw((my >> 1) + 1, ((mx - 20) >> 1) - 1, "%c", '+');
    mvprintw((my >> 1) + 1, ((mx - 20) >> 1) + 20, "%c", '+');
    mvprintw((my >> 1) + 3, ((mx - 20) >> 1) - 1, "%c", '+');
    mvprintw((my >> 1) + 3, ((mx - 20) >> 1) + 20, "%c", '+');
    mvhline((my >> 1) + 1, (mx - 20) >> 1, ACS_HLINE, 20);
    mvhline((my >> 1) + 3, (mx - 20) >> 1, ACS_HLINE, 20);
    int valid;
    do {
        mvscanw((my >> 1) + 2, (mx - 20) >> 1, "%s", un);
        valid = validate_user(un);
        if (!valid) {
            beep();
            mvprintw((my >> 1) + 2, (mx - 20) >> 1, "%20c", 10);
            mvvline((my >> 1) + 2, ((mx - 20) >> 1) + 20, ACS_VLINE, 1);
        }
    } while (!valid);
    curs_set(0);
    noecho();
    clear();
    keypad(stdscr, TRUE);
    cbreak();
    int c;
    int flag = 1;
    int pos = mx - 25;
    mvprintw(my - 4, mx - 21, "%-11s %-6s", "left arrow", "prev");
    mvprintw(my - 3, mx - 21, "%-11s %-6s", "right arrow", "next");
    mvprintw(my - 2, mx - 21, "%-11s %-6s", "enter", "commit");
    mvprintw(my - 1, mx - 21, "%-11s %-6s", "esc", "quit");
    mvprintw(0, mx - 28, "%s", tit);
    mvprintw(1, mx - 28, "%s", "A: ");
    int nt = 0;
    do {
        switch (flag) {
        case 3:
            mvprintw((my >> 1) - 1, (mx - 15) >> 1, "%15s", " ");
            mvprintw((my >> 1) + 1, (mx - 25) >> 1, "%25s", " ");
            flag = 1;
            break;
        case 2:
            mvprintw((my >> 1) - 1, (mx - 9) >> 1, "%s", "         ");
            mvprintw((my >> 1) + 1, (mx - 25) >> 1, "%s",
                     "                         ");
            sprintf(query_buf, "INSERT INTO Ans VALUES(\"%s\", default",
                    un);
            char temp_buf[10];
            for (int i = 0; i < 10; sprintf(temp_buf, ", %d", ans[i++]),
                                    strcat(query_buf, temp_buf));
            sprintf(temp_buf, ", %d);", nt);
            strcat(query_buf, temp_buf);
            fprintf(temp, "%s\n", query_buf);
            for (int i= 0; i < 10; ans[i++] = 0);
            mvprintw(1, mx - 25, "%25c", ' ');
            pos = mx - 25;
            flag = 1;
            nt = 0;
        }
        mvprintw(2, pos, "%c", '^');
        mvprintw(my >> 1, (mx - 11) >> 1, "Question %2d\n", n + 1);
        c = getch();
        int i;
        int valid = 1;
        switch (c) {
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
            switch (n) {
            case 1:
                if (c == '2') {
                    mvprintw((my >> 1) + 2, (mx - 12) >> 1, "%s", "Country Code");
                    echo();
                    do {
                        char buf[10];
                        mvscanw((my >> 1) + 3, (mx - 2) >> 1, "%s", buf);
                        nt = atoi(buf);
                        if (!nt || nt > 84) {
                            beep();
                            mvprintw((my >> 1) + 3, (mx - 2) >> 1, "%10c", ' ');
                        }
                    } while (!nt || nt > 84);
                    noecho();
                    mvprintw((my >> 1) + 2, (mx - 12) >> 1, "%12c", ' ');
                    mvprintw((my >> 1) + 3, (mx - 2) >> 1, "%10c", ' ');
                    mvprintw(1, mx - 5, "%d", nt);
                    break; 
                } else if (c == '1') {
                    mvprintw(1, mx - 5, "%s", "  ");
                    break;
                }
            case 3:
            case 5:
            case 7:
            case 8:
            case 9:
                if (c > '2') {
                    valid = 0;
                }
                break;
            case 0:
            case 2:
            case 4:
                if (c > '4') {
                    valid = 0;
                }
                break;
            case 6:
                if (c > '3') {
                    valid = 0;
                }
                break;
            }
            if (!valid) {
                beep();
                valid = 1;
                break;
            }
            ans[n] = c - '0';
            mvprintw((my >> 1) + 1, (mx - 1) >> 1, "%c", c);
            mvprintw(1, pos, "%c", c);
            break;
        case KEY_RIGHT:
        case 'd':
            n += n < 9 ? 1 : 0;
            mvprintw((my >> 1) + 1, (mx - 1) >> 1, "%c", ans[n] ? ans[n] + '0' : ' ');
            mvprintw(2, pos, "%c", ' ');
            pos = mx - 25 + (n << 1);
            break;
        case KEY_LEFT:
        case 'a':
            n -= n ? 1 : 0;
            mvprintw((my >> 1) + 1, (mx - 1) >> 1, "%c", ans[n] ? ans[n] + '0' : ' ');
            mvprintw(2, pos, "%c", ' ');
            pos = mx - 25 + (n << 1);
            break;
        case 10:
            for (i = 0; ans[i] && i < 10; i++);
            if (i < 10) {
                beep();
                mvprintw((my >> 1) - 1, (mx - 15) >> 1, "%s", "Incomplete data");
                mvprintw((my >> 1) + 1, (mx -25) >> 1, "%s", "Press any key to continue");
                flag = 3;
                getch();
                break;
            }
            mvprintw(2, mx - 25 + (n << 1), "%c", ' ');
            n = 0;
            mvprintw((my >> 1) - 1, (mx - 9) >> 1, "%s", "Committed");
            mvprintw((my >> 1) + 1, (mx - 25) >> 1, "%s",
                     "Press any key to continue");
            getch();
            flag = 2;
            break;
        case 27:
            flag = 0;
            break;
        default:
            beep();
        }
        mvprintw(0, 0, "key pressed %3d", c);
    } while (flag);
    fclose(temp);
    clear();
    mvprintw(my >> 1, ((mx - 25) >> 1), "%s", "Press any key to continue");
    getch();
    endwin();

	return 0;
}
