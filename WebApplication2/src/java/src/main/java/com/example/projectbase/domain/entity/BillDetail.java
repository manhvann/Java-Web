package com.example.projectbase.domain.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BillDetail implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bill_detail_id")
    private int id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id",foreignKey = @ForeignKey(name = "FK_BILL_PRODUCT1"),referencedColumnName = "product_id")
    private Product product;


    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "bill_id",foreignKey = @ForeignKey(name = "FK_BILL_PRODUCT"),referencedColumnName = "bill_id")
    private Bill bill;

    @Column(nullable = false)
    private String quantity;





}


