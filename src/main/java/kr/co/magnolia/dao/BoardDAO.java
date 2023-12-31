package kr.co.magnolia.dao;
import kr.co.magnolia.dto.Board;

import java.util.List;
public interface BoardDAO {
    public List<Board> boardList() throws Exception;
    public Board boardDetail(int seq) throws Exception;
    public void boardInsert(Board dto) throws Exception;
    public void boardDelete(int seq) throws Exception;
    public void boardEdit(Board dto) throws Exception;
}
