#include <iostream>

class Book {
    public:
        std::string title;
        std::string author;
        int pages;
};

// Class and Objects
void classes(){
    Book book1;
    Book book2;

    // book1
    book1.title = "HP";
    book1.author = "JK Rowling";
    book1.pages = 304;

    // book2
    book2.title = "LoR";
    book2.author = "Tolkein";
    book2.pages = 675;
    
    book2.pages = 783;

    // std::cout
    std::cout << book1.title;
    std::cout << book1.author;
    std::cout << book1.pages << std::endl;

    std::cout << book2.title;
    std::cout << book2.author;
    std::cout << book2.pages<< std::endl;
}




// Constructors
class BD {
    public:
        std::string title;
        std::string author;
        int pages;
        int sells;
        
        BD(std::string aTitle,std::string aAuthor,int aPages) {
            std::cout << "Creating Object" << std::endl;
            title = aTitle;
            author = aAuthor;
            pages = aPages;
            sells = 0;
        };
};

void constructor(){
    BD bd1("AoT","Boy",30);

    std::cout << bd1.title;
    std::cout << bd1.author;
    std::cout << bd1.pages;
    std::cout << bd1.sells << std::endl;

}


// Object Functions
class Student {
    public:
        std::string name;
        std::string major;
        double gpa;

        Student(std::string aName,std::string aMajor,double aGpa) {
            name = aName;
            major = aMajor;
            gpa = aGpa;
        };

        bool hasHonors(){
            if(gpa >= 3.5 ) {
                return true;
            }
            return false;
        };
};

void object_functions(){
    Student student1("Jim","Business",2.4);
    Student student2("Pam","Art",3.6);

    std::cout << student1.hasHonors();
    std::cout << student2.hasHonors();
};


// Getters and Setters
class Movie {
    private:
        std::string title;
        std::string director;
        std::string rating;

    public:
        Movie(std::string aTitle,std::string aDirector,std::string aRating) {
            title = aTitle;
            director = aDirector;
            setRating(aRating);
        };

        void setRating(std::string aRating) {
            if (aRating == "g" || aRating == "pg"|| aRating == "pg-13"|| aRating == "r" || aRating == "nr"){
                rating = aRating;
            } else {
                rating = "nr";
            }
        }

        std::string getRating(){
            return rating;
        };
};

void getter_setter(){
    Movie avengers("the avengers","joss whedon","pg-13");

    std::cout << avengers.getRating();
};


//inheritance
class Chef {
    public:
        void makeChicken(){
            std::cout << "chef makes chicken" << std::endl;
        };
        void makeSalad(){
            std::cout << "chef makes salad" << std::endl;
        };
        void makeBBQ(){
            std::cout << "chef makes bbq" << std::endl;
        };
};

class ItalianChef : public Chef{
    public:
        void makePasta(){
                std::cout << "chef makes pasta" << std::endl;
            };
};

void inheritance(){
    Chef chef;
    chef.makeChicken();

    ItalianChef italian_chef;
    italian_chef.makeChicken();
    italian_chef.makePasta();
};


int main(){
    // classes();
    // constructor();
    // object_functions(); // bool in c++ is 0 = false | 1 = true
    //getter_setter();
    inheritance();
    
    return 0;
}