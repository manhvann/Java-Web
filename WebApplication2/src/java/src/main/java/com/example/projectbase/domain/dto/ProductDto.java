package com.example.projectbase.domain.dto;



import com.example.projectbase.constant.ErrorMessage;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;


import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;


@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ProductDto {

    @NotBlank(message = ErrorMessage.NOT_BLANK_FIELD)
    private String name;

    @NotBlank(message = ErrorMessage.NOT_BLANK_FIELD)
    @Min(value = 0)
    private int price;

    @Length(max = 100000)
    private String description;

    @NotBlank(message = ErrorMessage.NOT_BLANK_FIELD)
    private MultipartFile image;

    @Max(value = 100)
    @Min(value = 0)
    private float discount;

    private int stock;


}
