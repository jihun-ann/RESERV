package VO;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
@Builder
public class UserVO {
	int usernum;
	String userid;
	String userpw;
	String username;
	String userssn;
	String userphonenum;
	String useraddress;
	String userrole;
	String str_01;
	String str_02;
	String str_03;
	String str_04;
	String str_05;
}
