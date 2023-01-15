package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.DetailpageDTO;

public class DetailpageDaoImp implements DetailpageDao {

	public DetailpageDaoImp() {
	
	}
	
	//mapper 호출위함
	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<DetailpageDTO> list(DetailpageDTO pv) {
		return sqlSession.selectList("seoulfoodsample.list",pv);
	}

	@Override
	public List<DetailpageDTO> list_match(int res_num) {
		return sqlSession.selectList("seoulfoodsample.list_match",res_num);
	}

}

