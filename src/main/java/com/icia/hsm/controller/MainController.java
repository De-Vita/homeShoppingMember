package com.icia.hsm.controller;

import com.icia.hsm.dto.HsmDTO;
import com.icia.hsm.service.HsmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    private HsmService hsmService;
    @GetMapping("/save")
    public String saveForm() {
        return "save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute HsmDTO hsmDTO, Model model) {
        int saveResult = hsmService.save(hsmDTO);
        model.addAttribute("result", saveResult);
        return "saveResult";
    }

    @GetMapping("/list")
    public String findAll(Model model) {
        List<HsmDTO> hsmDTOList = hsmService.findAll();
        for (HsmDTO hsmDTO: hsmDTOList) {
            System.out.println("hsmDTO = " + hsmDTO);
        }
        model.addAttribute("hsmList", hsmDTOList);
        return "list";
    }

    @GetMapping("/detail")
    public String findById(@RequestParam("custno") Long custno, Model model) {
        HsmDTO hsmDTO = hsmService.findById(custno);
        model.addAttribute("hsm",hsmDTO);
        return "detail";
    }

    @GetMapping("/update")
    public String updateForm(@RequestParam("custno") Long custno, Model model) {
        HsmDTO hsmDTO = hsmService.findById(custno);
        model.addAttribute("hsm", hsmDTO);
        return "update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute HsmDTO hsmDTO) {
        hsmService.update(hsmDTO);
        return "redirect:/detail?custno="+hsmDTO.getCustno();
    }

}
