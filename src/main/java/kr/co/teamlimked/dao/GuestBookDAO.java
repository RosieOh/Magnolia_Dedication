package kr.co.teamlimked.dao;

import kr.co.teamlimked.dto.GuestBook;

public interface GuestBookDAO {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
    public void fileRegister(GuestBook guestBookDto) throws Exception;
}