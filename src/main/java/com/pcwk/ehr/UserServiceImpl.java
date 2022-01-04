package com.pcwk.ehr;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class UserServiceImpl implements UserService {
    final Logger LOG = LogManager.getLogger(getClass());
    
	public UserServiceImpl() {
	}

	public void upgradeLevels() throws SQLException {
//		사용자 레벨은 : BASIC,SILVER,GOLD
//		사용자가 처음 가입 하면 : BASIC
//		가입이후 50회 이상 로그인 하면 : SILVER
//		SILVER 레벨이면서 30번 이상 추천을 받으면 GOLD로 레벨 UP.


	}

}
