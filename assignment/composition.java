
class Book {
    String title;
    String author;

    Book(String title, String author) {
        this.title = title;
        this.author = author;
    }

    void displayBookInfo() {
        System.out.println("Book Title: " + title);
        System.out.println("Author: " + author);
    }
}
class Library {
    String libraryName;
    Book book; 

    Library(String libraryName, Book book) {
        this.libraryName = libraryName;
        this.book = book;
    }

    void showLibraryDetails() {
        System.out.println("Library Name: " + libraryName);
        book.displayBookInfo();     }
}

public class composition {
    public static void main(String[] args) {
        Book b1 = new Book("Wings of Fire", "Dr. A.P.J. Abdul Kalam");
        Library lib = new Library("City Central Library", b1);
        lib.showLibraryDetails();
    }
}

