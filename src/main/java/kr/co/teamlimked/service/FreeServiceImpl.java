package kr.co.teamlimked.service;

import kr.co.teamlimked.dao.FreeDAO;
import kr.co.teamlimked.dto.Free;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FreeServiceImpl implements FreeService {

    @Autowired
    private FreeDAO freeDAO;

    @Override
    public List<Free> freeList() throws Exception {
        return freeDAO.freeList();
    }

    @Override
    public Free freeDetail(int bno) throws Exception {
        return freeDAO.freeDetail(bno);
    }

    @Override
    public void freeInsert(Free dto) throws Exception {
        freeDAO.freeInsert(dto);
    }

    @Override
    public void freeDelete(int bno) throws Exception {
        freeDAO.freeDelete(bno);
    }

    @Override
    public void freeEdit(Free dto) throws Exception {
        freeDAO.freeEdit(dto);
    }
}
