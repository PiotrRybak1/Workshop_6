package pl.coderslab.book;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Size;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name ="books")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Size(max = 255)
    private String isbn;
    @Size(max =255)
    private String title;
    @Size(max =255)
    private String author;
    @Size(max =255)
    private String publisher;
    @Size(max =255)
    private String type;

    public Book(String isbn, String title, String author, String publisher, String type) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.type = type;
    }
}

