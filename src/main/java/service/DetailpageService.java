package service;

import java.util.List;

import dto.DetailpageDTO;

public interface DetailpageService {
	public List<DetailpageDTO> f_list(DetailpageDTO pv);
	public List<DetailpageDTO> f_list_match(int res_num);	
}
