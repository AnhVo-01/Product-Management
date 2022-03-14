package controller;

/**
 *
 * @author AnhVo-PC
 */
public class htmlPaging {
    public static String hyperlink(String text, String url) {
        return "<a class=\"paging_link\" href=\"" + url + "\" >" + text + "</a>";
    }

    public static String label(String text) {
        return "<span class=\"paging_label\" >" + text + "</span>";
    }

    public static String pager(int gap, int pageindex, int totalpage) {
        StringBuilder sb = new StringBuilder();
        
        sb.append(hyperlink("<i class=\"fa-solid fa-angles-left\"></i>", "?page=1"));
        
        for (int i = gap; i > 0; i--) {
            int page = pageindex - i;
            if (page > 0) {
                sb.append(hyperlink("" + page, "?page=" + page));
            }
        }

        sb.append(label(pageindex + ""));

        for (int i = 1; i <= gap; i++) {
            int page = pageindex + i;
            if (page <= totalpage) {
                sb.append(hyperlink("" + page, "?page=" + page));
            }
        }

        sb.append(hyperlink("<i class=\"fa-solid fa-angles-right\"></i>", "?page=" + totalpage));
        
        return sb.toString();
    }
}
