package springweb.a02_mvc.a03_dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import springweb.a02_mvc.a04_vo.Emp;
//springweb.a02_mvc.a03_vo.dao.EmpDao

@Repository
public interface EmpDao {
	public List<Emp> getEmpList(Emp sch);
}
