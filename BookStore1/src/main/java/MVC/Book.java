package MVC;

public class Book {
	private String id;
    private String title;
    private String author;
    private double price;
    private String desc;

    // Getter and setter methods
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    public boolean validate() {
        return id != null && !id.isEmpty() &&
               title != null && !title.isEmpty() &&
               author != null && !author.isEmpty() &&
               desc != null && !desc.isEmpty() &&
               isValidDouble(price);
    }

    private boolean isValidDouble(double value) {
        return value > 0;
    }

}
