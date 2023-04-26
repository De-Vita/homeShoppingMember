package com.icia.hsm.repository;

import com.icia.hsm.dto.HsmDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HsmRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(HsmDTO hsmDTO) {
        return sql.insert("Hsm.save", hsmDTO);
    }

    public List<HsmDTO> findAll() {
        return sql.selectList("Hsm.findAll");
    }

    public HsmDTO findById(Long custno) {
        return sql.selectOne("Hsm.findById", custno);
    }

    public void update(HsmDTO hsmDTO) {
        sql.update("Hsm.update", hsmDTO);
    }
}
