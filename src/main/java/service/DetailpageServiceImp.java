package service;

import java.util.HashMap;
import java.util.List;

import dao.DetailpageDao;
import dto.DetailpageDTO;

public class DetailpageServiceImp implements DetailpageService {
	private DetailpageDao dao;

	public DetailpageServiceImp() {

	}

	public void setDao(DetailpageDao dao) {
		this.dao = dao;
	}

	@Override
	public List<DetailpageDTO> f_list(DetailpageDTO pv) {
		return dao.list(pv);
	}

	@Override
	public List<DetailpageDTO> f_list_match(int res_num) {
		return dao.list_match(res_num);
	}



}
