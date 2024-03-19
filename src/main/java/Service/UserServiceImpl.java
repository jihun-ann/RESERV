package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import DAO.UserDAO;
import VO.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;

	@Override
	public List<UserVO> allUser() throws Exception {
		List<UserVO> ulst =userDAO.userSelectALL(); 
		System.out.println("11111111111111"+ulst.toString());
		return ulst;
	}
}
