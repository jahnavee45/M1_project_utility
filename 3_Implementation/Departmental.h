

#ifndef SAMPLEP_H
#define SAMPLEP_H
#define ANS 15
#define ACS 4


/*structure declaration*/
typedef struct
{
    char name[ANS],code[ACS];
    float rate;
    int quantity;
} rec;
rec item;

//int getc(FILE *__stream);

/*declaration of checking functions*/
void c_code(char[]);
int check(char[]);

/*declaration of display functions*/
void cursor(int);
void dis_bill();
void mainmenu();
void display(rec *,int,int);
void window(int,int,int,int);
void dis_con();
void dis_search();
void highlight(int,int);

/*declaration of main menu functions*/
void bill() ;
void edit();
void add();
void del();
void exit();

/*declaration of display submenu functions*/
void dis_code();
void dis_rate();
void dis_quan();
void all();

#endif