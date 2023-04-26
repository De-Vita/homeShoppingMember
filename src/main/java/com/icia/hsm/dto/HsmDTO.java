package com.icia.hsm.dto;
import lombok.*;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class HsmDTO {
    private Long custno;
    private String custname;
    private String phone;
    private String address;
    private String joindate;
    private String grade;
    private String  city;
}
