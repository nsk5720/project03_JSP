package com.nsk.project03;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	@Autowired	// sqlSessionTemplate 객체를 사용할 수 있게 만들어주는 어노테이션
	SqlSessionTemplate sqlSessionTemplate;
	/* 매퍼 XML(book_SQL.xml)을 실행시키기 위해서 SqlSessionTemplate 객체를 멤버 변수로 선언 */

	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("board.insert", map);	
		//book.insert => book_SQL.xml에 있는 namespace="book" 밑에 있는 id=insert
	}
	
	public Map<String, Object> selectDetail(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectOne("board.select_detail", map);
	}
	
    public int update(Map<String, Object> map) {
        return this.sqlSessionTemplate.update("board.update", map);
    }   
    
    public int delete(Map<String, Object> map) {
        return this.sqlSessionTemplate.delete("board.delete", map);
    }
    
    public List<Map<String,Object>>selectList(Map<String, Object> map) {
        return this.sqlSessionTemplate.selectList("board.select_list", map);
    }   
}
