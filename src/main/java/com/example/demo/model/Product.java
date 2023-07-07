package com.example.demo.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Data
@Entity(name = "Product")
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Long productId;

    @Column(name = "product_name")
    private String productName;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(columnDefinition = "TEXT")
    private String overview;

    @Column(columnDefinition = "TEXT")
    private String material;

    @Column(name = "img_link")
    private String imgLink;

    private Float price;

    private Integer size;

    private boolean onsale;

    @Column(name = "sale_price")
    private Float salePrice;

    private Integer quantity;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "product_color",
            joinColumns = { @JoinColumn(name = "product_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "color_id", nullable = false, updatable = false) })
    private Set<Color> colorList;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "category_id", nullable = false,
           foreignKey = @ForeignKey(name = "fk_product_category"))
    private Category category;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private Set<Review> reviewList;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "wishList")
    private Set<Users> userList;

    public Product() {
    }

    public Product(Long productId, String productName, String description, String overview, String material, String imgLink, Float price, Integer size, boolean onsale, Float salePrice, Integer quantity) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.overview = overview;
        this.material = material;
        this.imgLink = imgLink;
        this.price = price;
        this.size = size;
        this.onsale = onsale;
        this.salePrice = salePrice;
        this.quantity = quantity;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getImgLink() {
        return imgLink;
    }

    public void setImgLink(String imgLink) {
        this.imgLink = imgLink;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public boolean isOnsale() {
        return onsale;
    }

    public void setOnsale(boolean onsale) {
        this.onsale = onsale;
    }

    public Float getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(Float salePrice) {
        this.salePrice = salePrice;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
