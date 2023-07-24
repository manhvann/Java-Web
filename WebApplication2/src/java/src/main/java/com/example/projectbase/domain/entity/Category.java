package com.example.projectbase.domain.entity;

import com.example.projectbase.domain.entity.common.DateAuditing;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "categories")
public class Category extends DateAuditing {
    @Id
    @Column(name = "category_id",insertable = false, updatable = false, nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    String name;


    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "category_product",
            joinColumns = @JoinColumn(name = "category_id",foreignKey = @ForeignKey(name = "FK_CATEGORY_PRODUCT1")),
            inverseJoinColumns = @JoinColumn(name = "product_id",foreignKey = @ForeignKey(name = "FK_CATEGORY_PRODUCT2")))
    private List<Product> products;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "category_shop",
            joinColumns = @JoinColumn(name = "category_id",foreignKey = @ForeignKey(name = "FK_CATEGORY_SHOP1")),
            inverseJoinColumns = @JoinColumn(name = "shop_id",foreignKey = @ForeignKey(name = "FK_CATEGORY_SHOP2")))
    private List<Shop> shops;
}