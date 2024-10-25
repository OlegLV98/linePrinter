#include <iostream>
#include <ncurses.h>
#include <cmath>
#include <vector>
using namespace std;
class Point {
private:
    int m_x;
    int m_y;
public:
    Point()=default;
    Point(int x,  int y){
        m_x = x;
        m_y = y;
    }
    int getX(){
        return m_x;
    }
    int getY(){
        return m_y;
    }
    Point& getPoint(){
        return *this;
    }
};
class Brush {

};
class Line {
private:
    Point m_p1;
    Point m_p2;
public:
    Line()=default;
    Line(Point& p1,  Point& p2){
        m_p1 = p1;
        m_p2 = p2;
    }
    Point getPoint1(){
        return m_p1;
    }
    Point getPoint2(){
        return m_p2;
    }
    void drawLine(){
        vector<Point>line = {};
        double k = ((double)(m_p1.getY() - m_p2.getY()) / (m_p1.getX() - m_p2.getX()));
        double b = m_p1.getY() - k * m_p1.getX();
        int nX = (m_p1.getX() < m_p2.getX()) ? m_p1.getX() : m_p2.getX();
        if(m_p1.getX() != m_p2.getX()){
            for(int i = nX; i <= nX + abs(m_p2.getX() - m_p1.getX()); ++i){
                int y = int(i * k + b);
                Point p(i, y);
                line.emplace_back(p);
            }
        } else {
            int nY = (m_p1.getY() < m_p2.getY()) ? m_p1.getY() : m_p2.getY();
            for(int i = nY; i <= nY + abs(m_p2.getY() - m_p1.getY()); ++i){
                Point p(m_p1.getX(), i);
                line.emplace_back(p);
            }
        }

        for(auto & it : line){
            int x = it.getX();
            int y = it.getY();
            move(x, y);
            attron(COLOR_PAIR(1));
            printw(".");
            attroff(COLOR_PAIR(1));
        }
    }
    int lineLenght(){
        int l = (int)sqrt((m_p1.getX() - m_p2.getX()) * (m_p1.getX() - m_p2.getX()) +
                (m_p1.getY() - m_p2.getY()) * (m_p1.getY() - m_p2.getY()));
        return l;
    }
};
void bord(){
    for(int i = 10; i < 51; ++i){
        for(int j = 10; j < 101; ++j){
           if(i == 10 || i == 50 || j == 10 || j == 100){
               move(i,j);
               printw("+");
           }
        }
    }
    move(9, 4);
    printw("(%d,%d)", 10, 10);
    move(51, 4);
    printw("(%d,%d)", 50, 10);
    move(5, 4);
    printw("|");
    move(6, 4);
    printw("V");
    move(5, 2);
    printw("x");
    move(5, 5);
    printw("-");
    move(5, 6);
    printw("-");
    move(5, 7);
    printw(">");
    move(4, 5);
    printw("y");
    move(9, 101);
    printw("(%d,%d)", 10, 100);
    move(51, 101);
    printw("(%d,%d)", 50, 100);
}
int main() {
    initscr();
    curs_set(0);
    start_color();
    init_pair(1, COLOR_RED, COLOR_BLACK);
    //scrollok(stdscr, TRUE);
    //nodelay(stdscr, TRUE);
    //cbreak();
    //keypad(stdscr, TRUE);
//    char nx1[3];
//    char ny1[3];
//    char nx2[3];
//    char ny2[3];


    vector<Point>setPoint = {};
    char nX[3] = "t";
    char nY[3] = "t";
    while(true){
        move(0,0);
        //clear();
        printw("Please, enter the first X1: ");
        bord();
        move(0,28);
        getstr(nX);
        if(nX[0] == 'd'){
            break;
        }
        move(0,0);
        //clear();
        printw("Please, enter the first Y1: ");
        bord();
        move(0,28);
        getstr(nY);
        if(nY[0] == 'd'){
            break;
        }
        move(0,0);
        //clear();
        move(stoi(nX), stoi(nY));
        printw("*");
        printw("(%d:%d)", stoi(nX), stoi(nY));
        Point newPoint(stoi(nX), stoi(nY));
        setPoint.emplace_back(newPoint);
    }
    clear();
//    for(auto it1 = setPoint.begin(), it2 = setPoint.begin() + 1; it2 != setPoint.end(); ++it1, ++it2){
//        printw("(%d:%d) (%d:%d)\n", it1->getX(), it1->getY(), it2->getX(), it2->getY());
//    }
    for(auto it1 = setPoint.begin(), it2 = setPoint.begin() + 1; it2 != setPoint.end(); ++it1, ++it2){
        Line line(it1->getPoint(), it2->getPoint());
        line.drawLine();
    }
    bord();



//    move(0,0);
//    printw("Please, enter four numbers:");
//    move(0,0);
//    clear();
//    printw("Please, enter the first X1: ");
//    getstr(nx1);
//    move(0,0);
//    clear();
//    printw("Please, enter the first Y1: ");
//    getstr(ny1);
//    move(0,0);
//    clear();
//    printw("Please, enter the second X2: ");
//    getstr(nx2);
//    move(0,0);
//    clear();
//    printw("Please, enter the second Y2: ");
//    getstr(ny2);
//    clear();
//    noecho();
//    Point p1(stoi(nx1), stoi(ny1));
//    Point p2(stoi(nx2), stoi(ny2));
//    Line line(p1, p2);
//    line.drawLine();
    getch();
    endwin();
    return 0;
}

