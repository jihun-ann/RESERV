package DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import VO.UserVO;

public interface UserDAO {
	List<UserVO> userSelectALL() throws Exception;
}
