package kr.ac.kyonggi.gabrielyoon7.handler.action.page;

import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

/**
 * 테스트용
 * 
 * */
public class TestAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        StringBuilder urlBuilder = new StringBuilder("http://api.data.go.kr/openapi/tn_pubr_public_weighted_envlp_api"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=dg8oHXO5d9HkXM00ye%2Bvpwk1w16hxVZxN9UGvCFKA8kXtHQhTb6CJebWA2WZdMszfK%2B9HgoiqEYCB%2Bze2hFWMQ%3D%3D"); /*Service Key*/
//        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "dg8oHXO5d9HkXM00ye+vpwk1w16hxVZxN9UGvCFKA8kXtHQhTb6CJebWA2WZdMszfK+9HgoiqEYCB+ze2hFWMQ=="); /*Service Key*/
//        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*페이지 번호*/
//        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*한 페이지 결과 수*/
//        urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*XML/JSON 여부*/
//        urlBuilder.append("&" + URLEncoder.encode("CTPRVN_NM","UTF-8") + "=" + URLEncoder.encode("인천광역시", "UTF-8")); /*시도명*/
//        urlBuilder.append("&" + URLEncoder.encode("SIGNGU_NM","UTF-8") + "=" + URLEncoder.encode("계양구", "UTF-8")); /*시군구명*/
//        urlBuilder.append("&" + URLEncoder.encode("WEIGHTED_ENVLP_TYPE","UTF-8") + "=" + URLEncoder.encode("규격봉투", "UTF-8")); /*종량제봉투종류*/
//        urlBuilder.append("&" + URLEncoder.encode("WEIGHTED_ENVLP_MTHD","UTF-8") + "=" + URLEncoder.encode("소각용", "UTF-8")); /*종량제봉투처리방식*/
//        urlBuilder.append("&" + URLEncoder.encode("WEIGHTED_ENVLP_PRPOS","UTF-8") + "=" + URLEncoder.encode("생활쓰레기", "UTF-8")); /*종량제봉투용도*/
//        urlBuilder.append("&" + URLEncoder.encode("WEIGHTED_ENVLP_TRGET","UTF-8") + "=" + URLEncoder.encode("기타", "UTF-8")); /*종량제봉투사용대상*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_1","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*1ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_1_HALF","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*1.5ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_2","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*2ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_2_HALF","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*2.5ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_3","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*3ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_5","UTF-8") + "=" + URLEncoder.encode("160", "UTF-8")); /*5ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_10","UTF-8") + "=" + URLEncoder.encode("310", "UTF-8")); /*10ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_20","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*20ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_30","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*30ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_50","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*50ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_60","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*60ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_75","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*75ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_100","UTF-8") + "=" + URLEncoder.encode("3060", "UTF-8")); /*100ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_120","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*120ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("PRICE_125","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*125ℓ가격*/
//        urlBuilder.append("&" + URLEncoder.encode("CHRG_DEPT_NM","UTF-8") + "=" + URLEncoder.encode("청결지도팀", "UTF-8")); /*관리부서명*/
//        urlBuilder.append("&" + URLEncoder.encode("PHONE_NUMBER","UTF-8") + "=" + URLEncoder.encode("032-450-5464", "UTF-8")); /*관리부서전화번호*/
//        urlBuilder.append("&" + URLEncoder.encode("REFERENCE_DATE","UTF-8") + "=" + URLEncoder.encode("2020-02-01", "UTF-8")); /*데이터기준일자*/
//        urlBuilder.append("&" + URLEncoder.encode("instt_code","UTF-8") + "=" + URLEncoder.encode("B551295", "UTF-8")); /*제공기관코드*/
//        urlBuilder.append("&" + URLEncoder.encode("instt_nm","UTF-8") + "=" + URLEncoder.encode("인천광역시계양구시설관리공단", "UTF-8")); /*제공기관기관명*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),"utf-8"));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(),"utf-8"));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());


//        Gson gson = new Gson();
        request.setAttribute("test", sb.toString());

        return "test/test.jsp";
    }
}
