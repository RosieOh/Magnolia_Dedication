package kr.co.teamlimked.dao;

import kr.co.teamlimked.dto.GuestBook;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuestBookDAOImpl implements GuestBookDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void writeArticle(GuestBook guestBookDto) throws Exception {
        sqlSession.insert("guestbook.writeArticle", guestBookDto);
    }

    @Override
    public void fileRegister(GuestBook guestBookDto) throws Exception {
        sqlSession.insert("guestbook.fileRegister", guestBookDto);
    }
}
