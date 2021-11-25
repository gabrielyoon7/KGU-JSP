package kr.ac.kyonggi.gabrielyoon7.handler.dto.user;

public class UserTypeDTO {
    public String type_name;
    public String board_level;
    public String  for_header;

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public String getBoard_level() {
        return board_level;
    }

    public void setBoard_level(String board_level) {
        this.board_level = board_level;
    }

    public String getFor_header() {
        return for_header;
    }

    public void setFor_header(String for_header) {
        this.for_header = for_header;
    }
}
