package com.icia.hsm.service;

import com.icia.hsm.dto.HsmDTO;
import com.icia.hsm.repository.HsmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HsmService {
    @Autowired
    private HsmRepository hsmRepository;
    public int save(HsmDTO hsmDTO) {
        System.out.println("hsmDTO = " + hsmDTO);
        int result = hsmRepository.save(hsmDTO);
        return result;
    }

    public List<HsmDTO> findAll() {
        List<HsmDTO> hsmDTOList = hsmRepository.findAll();
        if (hsmDTOList.size() == 0) {
            return null;
        } else {
            return hsmDTOList;
        }
    }

    public HsmDTO findById(Long custno) {
        return hsmRepository.findById(custno);
    }

    public void update(HsmDTO hsmDTO) {
        hsmRepository.update(hsmDTO);
    }
}
