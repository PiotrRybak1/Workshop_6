package pl.coderslab.book;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/admin/books")
@RequiredArgsConstructor
public class ManageBookController {
    private final BookService bookService;

    @GetMapping("/all")
    public String showPosts(Model model){
        List<Book> books = bookService.getBooks();
        model.addAttribute("books", books);
        return "/books/all";
    }
    @GetMapping("/add")
    public String addBook(Model model){
        model.addAttribute("book", new Book());
        return "/books/add";
    }
    @PostMapping("/add")
    public String addBookValidate(@Valid Book book, BindingResult result){
        if(result.hasErrors()){
            return "/books/add";
        }
        bookService.add(book);
        return "redirect:/admin/books/all";
    }
    @GetMapping("/edit/{id}")
    public String editBook(@PathVariable Long id, Model model){
        model.addAttribute("book", bookService.get(id));
        return "/books/edit";
    }
    @PostMapping("/edit")
    public String editBookValidate(@Valid Book book, BindingResult result){
        if(result.hasErrors()){
            return "/books/edit/";
        }
        bookService.add(book);
        return "redirect:/admin/books/all";
    }
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable Long id ){
        bookService.delete(id);
        return "redirect:/admin/books/all";
    }
    @GetMapping("/bookDetails/{id}")
    public String getDetails(@PathVariable Long id, Model model){
        model.addAttribute("details",bookService.get(id).orElseThrow(EntityNotFoundException :: new));
        return "books/details";

    }



}
