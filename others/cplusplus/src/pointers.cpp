#include <iostream>

using namespace std;

int main(){
    int age = 19;
    int *pAge = &age;

    double gpa = 2.7;
    double *pGpa = &gpa;

    string name = "Mike";
    string *pName = &name;

    cout    << "Age:    " << &age  <<endl;
    cout    << "pAge:   " << *pAge <<endl;

    cout    << "Gpa:    " << &gpa  <<endl;
    cout    << "pGpa:   " << *pGpa <<endl;

    cout    << "Name:   " << &name <<endl;
    cout    << "pName:  " << *pName<<endl;

    return 0;
}