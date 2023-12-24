package model;

public class Product {
    private int productId; //pk
    private String title;
    private int regularPrice;
    private int rentalFee;
    private String description;
    private int deposit;
    private String productPhoto;
    private String address;
    private String detailAddress;
    private boolean isBorrowed;
    private int customerId; //fk
    private String category;
    
    public Product(Integer productId, Integer regularPrice, Integer rentalFee, String description, Integer deposit,
            String productPhoto, String address, String detailAddress, Boolean isBorrowed,
            Integer customerId, String title, String category) {
        super();
        this.productId = productId;
        this.regularPrice = regularPrice;
        this.rentalFee = rentalFee;
        this.description = description;
        this.deposit = deposit;
        this.productPhoto = productPhoto;
        this.address = address;
        this.detailAddress = detailAddress;
        this.isBorrowed = isBorrowed;
        this.customerId = customerId;
        this.title = title;
        this.category = category;
    }

    public int getProductId() {
        return productId;
    }

//    public void setProductId(int productId) {
//        this.productId = productId;
//    }

    public int getRegularPrice() {
        return regularPrice;
    }

    public void setRegularPrice(int regularPrice) {
        this.regularPrice = regularPrice;
    }

    public int getRentalFee() {
        return rentalFee;
    }

    public void setRentalFee(int rentalFee) {
        this.rentalFee = rentalFee;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDeposit() {
        return deposit;
    }

    public void setDeposit(int deposit) {
        this.deposit = deposit;
    }

    public String getProductPhoto() {
        return productPhoto;
    }

    public void setProductPhoto(String productPhoto) {
        this.productPhoto = productPhoto;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
    }

    public boolean isBorrowed() {
        return isBorrowed;
    }

    public void setBorrowed(boolean isBorrowed) {
        this.isBorrowed = isBorrowed;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }    
   
}
