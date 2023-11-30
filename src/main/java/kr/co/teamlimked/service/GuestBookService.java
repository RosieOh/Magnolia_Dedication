package kr.co.teamlimked.service;

import kr.co.teamlimked.dto.GuestBook;

public interface GuestBookService {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
}
