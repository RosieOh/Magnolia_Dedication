package kr.co.magnolia.dao;

import kr.co.magnolia.dto.GuestBook;

public interface GuestBookDAO {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
    public void fileRegister(GuestBook guestBookDto) throws Exception;
}