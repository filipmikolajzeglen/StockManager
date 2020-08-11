package pl.filipzeglen.model;

public class Bike {
    private String name;
    private String size;
    private String description;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Bike() {
    }

    public Bike(String name, String size, String desc) {
        this.name = name;
        this.size = size;
        description = desc;
    }
}
