package kr.co.magnolia.dto;

import lombok.Data;

@Data
public class Board {
    private int seq;
    private String title;
    private String content;
    private String nickname;
    private String regdate;
    private int visited;
}
