package com.nsk.project03;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/* �������� ���� Ŭ�������� �˷��ش� */
@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDao boardDao;
	/* �����ͺ��̽� ������ ���� BookDao �ν��Ͻ��� ���� */
	
	@Override
	public String create(Map<String, Object> map) {
		//bookDao.insert �޼��带 ����
		//affectRowCount �������� ������� �� ���� ����.
	    int affectRowCount = this.boardDao.insert(map);
	    if (affectRowCount ==  1) {
	    	//map �ν��Ͻ��� book ���̺��� PK�� book_id�� ������� ���̴�. book_id ���� ����
	        return map.get("num").toString();
	    }
	    return null;
	}
  @Override
    public Map<String, Object> detail(Map<String, Object> map){
        return this.boardDao.selectDetail(map);
    }	
    
    @Override
    public boolean edit(Map<String, Object> map) {
        int affectRowCount = this.boardDao.update(map);
        return affectRowCount == 1;
    }
    
    
    @Override
    public boolean remove(Map<String, Object> map) {
        int affectRowCount = this.boardDao.delete(map);
        //������ ��� ������ �����ϰ� �� ���� ���� ����� ����޾Ҵ����� �˻�
        return affectRowCount == 1;
    }    
}