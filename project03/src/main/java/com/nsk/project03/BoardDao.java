package com.nsk.project03;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	@Autowired	// sqlSessionTemplate ��ü�� ����� �� �ְ� ������ִ� ������̼�
	SqlSessionTemplate sqlSessionTemplate;
	/* ���� XML(book_SQL.xml)�� �����Ű�� ���ؼ� SqlSessionTemplate ��ü�� ��� ������ ���� */

	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("board.insert", map);	
		//book.insert => book_SQL.xml�� �ִ� namespace="book" �ؿ� �ִ� id=insert
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
}