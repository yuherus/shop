package com.example.demo.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Data
@Entity(name = "ParentCategory")
@Table(name = "parent_category")
public class ParentCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "parent_category_id")
    private Long parentCategoryId;

    @Column(name = "parent_category_name")
    private String parentCategoryName;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "parentCategory")
    private Set<Category> categoryList;

    public ParentCategory() {
    }

    public ParentCategory(Long parentCategoryId, String parentCategoryName) {
        this.parentCategoryId = parentCategoryId;
        this.parentCategoryName = parentCategoryName;
    }

    public Long getParentCategoryId() {
        return parentCategoryId;
    }

    public void setParentCategoryId(Long parentCategoryId) {
        this.parentCategoryId = parentCategoryId;
    }

    public String getParentCategoryName() {
        return parentCategoryName;
    }

    public void setParentCategoryName(String parentCategoryName) {
        this.parentCategoryName = parentCategoryName;
    }
}
