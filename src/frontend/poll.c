#include <ncurses.h>
#include <stdio.h>

int main(){
    char un[20];
    int ans[10] ={0};
    FILE* temp = fopen("temp", "a");
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
    mvscanw((my >> 1) + 2, (mx - 20) >> 1, "%s", un);
    curs_set(0);
    noecho();
    clear();
    keypad(stdscr, TRUE);
    cbreak();
    int c;
    int flag = 1;
    mvprintw(my - 4, mx - 21, "%-11s %-6s", "left arrow", "prev");
    mvprintw(my - 3, mx - 21, "%-11s %-6s", "right arrow", "next");
    mvprintw(my - 2, mx - 21, "%-11s %-6s", "enter", "commit");
    mvprintw(my - 1, mx - 21, "%-11s %-6s", "esc", "quit");
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
            fprintf(temp, "INSERT INTO Ans VALUES (%s", "default");
            for (int i = 0; i < 10; fprintf(temp, ", %d", ans[i++]));
            fprintf(temp, "%c\n", ')');
            for (int i= 0; i < 10; ans[i++] = 0);
            flag = 1;
        }
        mvprintw(my >> 1, (mx - 11) >> 1, "Question %2d\n", n + 1);
        c = getch();
        int i;
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
        case 'e':
            ans[n] = c - '0';
            mvprintw((my >> 1) + 1, (mx - 1) >> 1, "%c", c);
            break;
        case KEY_RIGHT:
        case 'd':
            n += n < 9 ? 1 : 0;
            mvprintw((my >> 1) + 1, (mx - 1) >> 1, "%c", ans[n] ? ans[n] + '0' : ' ');
            break;
        case KEY_LEFT:
        case 'a':
            n -= n ? 1 : 0;
            mvprintw((my >> 1) + 1, (mx - 1) >> 1, "%c", ans[n] ? ans[n] + '0' : ' ');
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
