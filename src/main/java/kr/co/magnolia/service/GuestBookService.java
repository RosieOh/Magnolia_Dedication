package kr.co.magnolia.service;

import kr.co.magnolia.dto.GuestBook;

public interface GuestBookService {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
}
