/**
 * @file Departmental.c
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2022-02-09
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

//#include "Departmental.h"

/**
 * @brief 
 * 
 */
void mainmenu(){
    int i;
    char ch;
    const char *menu[]= {"   Calculate Bill","   Add Goods","   Edit Goods","   Display All  ","   Search Goods", "   Delete Goods","   Exit" };
    system("cls");

    for ( i = 1; i <= 10; i++)
    {
        printf("-");
    }
    printf(" NEW TOWN ");

    for ( i = 1; i <=10; i++)
    {
        printf("-");
    }
    printf("\n\n");
    printf("DEPARTMENTAL STORE\n");

    printf("\n\n");
    printf("MAIN MENU");
    
     for (i=0; i<=6; i++)
    {
        printf("%s\n\n\n",menu[i]);
    }
    cursor(7);
    
}

/**
 * @brief 
 * 
 */
void dis_search()
{
    char ch;
    int i;
    const char *menu[]= {"   By Code","   By Rate","   By Quantity","   Back to main menu"};
    system("cls");
    printf("SEARCH MENU");
    for (i=0; i<=3; i++)
    {
        printf("%s\n\n\n",menu[i]);
    }
    cursor(4);
}

/*function for cursor movement*/
void cursor(int no){
    int count = 1;
    char ch = getch();

    highlight(no,count);
    if(ch == '\r')
    {
        if(no == 7)
        {
            if (count==1) bill() ;
                else if(count==2) add();
                else if(count==3) edit();
                else if (count==4) all();
                else if (count==5) dis_search();
                else if (count==6) del();
                else   exit(0);
        }
          if(no==4)
            {
                if (count==1) c_code();
                else if (count==2)dis_rate();
                else if (count==3) dis_quan();
                else mainmenu();
            }
    }
}

void highlight(int no,int count)
{
    if (no==4)
    {
        printf("   By Code          \n");
        printf("   By Rate          \n");
        printf("   By Quantity      \n");
        printf("   Back to main menu \n");
       
        switch (count)
        {
        case 1:
            printf(" - By Code          ");
            break;
        case 2:
            printf(" - By Rate          ");
            break;
        case 3:
            printf(" - By Quantity      ");
            break;
        case 4:
            printf(" - Back to main menu");
            break;
        }
    }
    if(no==7)
    {
        printf("   Calculate Bill \n");
        printf("   Add Goods      \n");
        printf("   Edit Goods     \n");
        printf("   Display All    \n");
        printf("   Search         \n");
        printf("   Delete Goods   \n");
        printf("   Exit           \n");
 
        switch(count)
        {
        case 1:
            printf(" - Calculate Bill ");
            break;
        case 2:
            printf(" - Add Goods      ");
            break;
        case 3:
            printf(" - Edit Goods     ");
            break;
        case 4:
            printf(" - Display All    ");
            break;
        case 5:
            printf(" - Search         ");
            break;
        case 6:
            printf(" - Delete Goods   ");
            break;
        case 7:
            printf(" - Exit           ");
            break;
        }
    }
}

void bill()
{
    char x[4]= {0};
    int j=29,q=0,size=0,i=1;
    float total=0,gtotal=0;
    FILE* file;
    file=fopen("record.txt","r+b");
    rewind(file);
    system("cls");
    bill();
    printf("Enter  \"end\" to finish input");
    while(1)
    {
        printf("                    ");
        printf("                    ");
        printf("Enter Item Code:");
        scanf("%s",x);
        if(strcmp(x,"end")==0)
            break;
        printf("Enter Quantity:");
        scanf("%d",&q);
        rewind(file);
        while(fread(&item,sizeof(item),1,file))
        {
            if((strcmp(item.code,x)==0))
            {
                total=item.rate*q;
                printf("%4d",i);
                printf("%9s",item.name);
                printf("%13d",q);
                printf("%15.2f",item.rate);
                printf("%13.2f",total);
                gtotal=gtotal+total;
                size=sizeof(item);
                item.quantity=item.quantity-q;
                j+=2;
                i++;
                fseek(file,-size,SEEK_CUR);
                fwrite(&item,sizeof(item),1,file);
                break;
            }
        }
    }
    if(gtotal!=0)
    {
        printf("TOTAL AMOUNT = NRs. %6.2f",gtotal);
    }
    fclose(file);
    getch();
    mainmenu();
}

/*function to display bill window*/
void dis_bill()
{
    int i;
    for (i=1; i<=10; i++)
        printf("-");
    printf(" OLD TOWN ");
    for (i=1; i<=10; i++)
        printf("-");
    printf("\n\n");
    printf("DEPARTMENTAL STORE");

    printf("\n\n");
    printf("CUSTOMER'S BILL") ;

    printf("\n\n");
    printf("SN.   Item Name     Quantity     Rate          Total");

}

/*function to add records*/
void add ()
{
    FILE *file;
    char y[ACS],x[12];
    system("cls");

    printf("Enter New Record(Y/N)?");
    while(toupper(getche())=='Y')
    {
        system("cls");
        file=fopen("record.txt","ab");
        c_code(y);
        strcpy(item.code,y);
        printf("Enter Rate Of The Item:");
        scanf("%f",&item.rate);
        printf("Enter Quantity Of The Item:");
        scanf("%d",&item.quantity);
        printf("Enter Name Of The Item:");
        scanf("%s",item.name);
        fseek(file,0,SEEK_END);
        fwrite(&item,sizeof(item),1,file);
        fclose(file);
        printf("Enter New Record(Y/N)?");

    }
    mainmenu();
}

/*function to check availability of code*/
void c_code(char y[])
{
    int flag;
    FILE* file;
    file=fopen("record.txt","rb");
    while(1)
    {
        system("cls");
        printf(" ADD ARTICLES ")  ;
        flag=1;
        rewind(file);
        printf("Enter New Code Of The Article:");
        scanf(" %[^\n]",y);
        while(fread(&item,sizeof(item),1,file)==1)
        {
            if (strcmp(y,item.code)==0)
            {
                flag=0;
                printf("Code Already Exists");
                printf("Enter Again");
                getch();
                break;
            }
        }
        if (flag==1)
            break;
    }
}

/*function for editing*/
void edit()
{
    int flag=0,choice;
    char x[ACS],y[ACS];
    FILE* file;
    int size;
    system("cls");
    printf("EDIT RECORDS\n");
    printf("Enter Item Code: ");
    scanf("%s",x);
    flag=check(x);
    if(flag==0)
    {
        file=fopen("record.txt","r+b");
        rewind(file);
        while (fread(&item,sizeof (item),1,file))
        {
            if(strcmp(item.code,x)==0)
            {

                printf(\n"name       = %s",item.name);
                printf(\n"code       = %s",item.code);
                printf(\n"rate       = %g",item.rate);
                printf(\n"quantity   = %d",item.quantity);
                printf(\n"Do You Want To Edit This Record?(y/n):");
                fflush(file);
                if(toupper(getche())=='Y')
                {

                    printf("1- Edit Name \n");
                    printf("2- Edit Code \n");
                    printf("3- Edit Rate \n");
                    printf("4- Edit Quantity \n");
                    printf(" Enter Your Choice(1, 2, 3, 4) \n");
                    scanf("%d",&choice);
                    switch(choice)
                    {
                    case 1:
                        system("cls");
                        printf("EDIT RECORDS\n");
                        printf(" Enter New Name: ");
                        scanf("%s",item.name);
                        size=sizeof(item);
                        fseek(file,-size,SEEK_CUR);
                        fwrite(&item,sizeof(item),1,file);
                        break;
                    case 2:
                        system("cls");
                        printf("EDIT RECORDS\n");
                        c_code(y);
                        strcpy(item.code,y);
                        size=sizeof(item);
                        fseek(file,-size,SEEK_CUR);
                        fwrite(&item,sizeof(item),1,file);
                        break;
                    case 3:
                        system("cls");
                        printf("EDIT RECORDS\n");
                        printf(" Enter New Rate: ");
                        scanf("%f",&item.rate);
                        size=sizeof(item);
                        fseek(file,-size,SEEK_CUR);
                        fwrite(&item,sizeof(item),1,file);
                        break;
                    case 4:
                        system("cls");
                        printf("EDIT RECORDS\n");
                        printf(" Enter New Quantity: ");
                        scanf("%d",&item.quantity);
                        size=sizeof(item);
                        fseek(file,-size,1);
                        fwrite(&item,sizeof(item),1,file);
                        break;
                    }
                    printf("--- Item Edited---");
                    break;
                }
            }
        }
    }
    if (flag==1)
    {
        printf("Item Does Not Exist.\n");
        printf("TRY AGAIN\n");
    }
    getch();
    fclose(file);
    mainmenu();
}

/*function to display all records*/
void all()
{
    int i,j=1;
    FILE* file;
    dis_con();
    file=fopen("record.txt","rb");
    rewind(file);
    i=26;
    fflush(file);
    while(fread(&item,sizeof(item),1,file))
    {
        display(&item,i,j);
        i++;
        j++;
        if ((j%20)==0)
        {
            printf("\nPress Any Key To See More...........");
            getch();
            system("cls");
            dis_con();
            i=26;
            continue;
        }
    }
    getc();
    if (i==26)
    {
        printf("-- No Articles Found --\n");
    }
    getch();
    fclose(file);
    mainmenu();
}

/*function to display by quantity*/
void dis_quan()
{
    int i,j=1;
    int a,b;
    FILE* file;
    dis_con();
    file=fopen("record.txt","rb");
    rewind(file);
    i=26;
    printf("\nEnter Lower Range: ");
    scanf("%d",&a);
    printf("Enter Upper Range:");
    scanf("%d",&b);
    fflush(file);
    while(fread(&item,sizeof(item),1,file))
    {
        if((item.quantity>=a)&&(item.quantity<=b))
        {
            display(&item,i,j);
            i++;
            j++;
            if ((j%20)==0)
            {
                printf("\nPress Any Key To See More......");
                getch();
                system("cls");
                dis_con();
                i=26;
                continue;
            }
        }
    }
    getch();
    if (i==26)
    {
        printf(" No Items Found.\n");
    }
    getch();
    dis_search();
    fclose(file);
}

/*function to display by rate*/
void dis_rate()
{
    int i,j=1;
    float a,b;
    FILE* file;
    dis_con();
    file=fopen("record.txt","rb");
    rewind(file);
    i=26;
    printf("Enter Lower Range: ");
    scanf("%f",&a);
    printf("Enter Upper Range: ");
    scanf("%f",&b);
    fflush(file);
    while(fread(&item,sizeof(item),1,file))
    {
        if((item.rate>=a)&&(item.rate<=b))
        {
            display(&item,i,j);
            i++;
            j++;
            if ((j%20)==0)
            {
                printf("\nPress Any Key To See More.....");
                getch();
                system("cls");
                dis_con();
                i=26;
                continue;
            }
        }
    }
    getch();
    if (i==26)
    {
        printf(" No Item Found \n");
    }
    getch();
    fclose(file);
    dis_search();
}

/*function to display by code*/
void dis_code()
{
    int i,j=1;
    char x[4]= {0};
    FILE* file;
    dis_con();
    file=fopen("record.txt","rb");
    rewind(file);
    i=26;
    printf("Enter Item Code: ");
    scanf("%s",x);
    fflush(file);
    while(fread(&item,sizeof(item),1,file))
    {
        if((strcmp(item.code,x)==0))
        {
            display(&item,i,j);
            i++;
            j++;
            break;
        }
    }
    if (i==26)
    {
        printf("\nNo Item Found\n");
    }
    getch();
    fclose(file);
    dis_search();
}

/*function to display window for item display*/
void dis_con()
{
    int i;
    system("cls");
    ;
    for (i=1; i<=10; i++)
        printf("-");
    printf(" OLD TOWN ");
    for (i=1; i<=10; i++)
        printf("-");
    printf("\n\n");
    printf("DEPARTMENTAL STORE");

    printf("\n\n");
    printf("RECORDS") ;

    printf("\n\n");
    printf ("\nSN.   Item Name   Item Code      Rate     Quantity\n");
}

/*function to display in screen*/
void display(rec *item,int i,int j)
{
    printf("%4d",j);
    printf("%9s",item->name);
    printf("%12s",item->code);
    printf("%14.2f",item->rate);
    printf("%11d",item->quantity);
}

/*function to delete records*/
void del()
{
    int flag;
    char x[ANS];
    FILE *file,*file1;
    system("cls");

    printf("DELETE ARTICLES\n");
    printf("Enter Item Code: ");
    scanf("%s",x);
    flag=check(x);
    if(flag==0)
    {
        file1=fopen("record1.txt","ab");
        file=fopen("record.txt","rb");
        rewind(file);
        while (fread(&item,sizeof (item),1,file))
        {
            if(strcmp(item.code,x)!=0)
                fwrite(&item,sizeof(item),1,file1);
        }
        printf("---Item Deleted---\n");
        remove("record.txt");
        rename("record1.txt","record.txt");
    }
    if (flag==1)
    {
        printf("---Item Does Not Exist---\n");
        printf("TRY AGAIN\n");
    }
    fclose(file1);
    fclose(file);
    getch();
    mainmenu();
}

/*function to check validity of code while editing and deleting*/
int check(char x[ANS])
{
    FILE* file;
    int flag=1;
    file=fopen("record.txt","rb");
    rewind(file);
    while (fread(&item,sizeof (item),1,file))
    {
        if(strcmp(item.code,x)==0)
        {
            flag=0;
            break;
        }
    }
    fclose(file);
    return flag;
}

