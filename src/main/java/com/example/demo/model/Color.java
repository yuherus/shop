package com.example.demo.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Data
@Entity(name = "Color")
@Table(name = "color")
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "color_id")
    private Long colorId;

    @Column(name = "color_name")
    private String colorName;

    @Column(name = "color_img")
    private String colorImg;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "colorList")
    private Set<Product> productList;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "color")
    private Set<CartItem> cartItemList;

    public Color() {
    }

    public Color(Long colorId, String colorName, String colorImg) {
        this.colorId = colorId;
        this.colorName = colorName;
        this.colorImg = colorImg;
    }

    public Long getColorId() {
        return colorId;
    }

    public void setColorId(Long colorId) {
        this.colorId = colorId;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public String getColorImg() {
        return colorImg;
    }

    public void setColorImg(String colorImg) {
        this.colorImg = colorImg;
    }
}
