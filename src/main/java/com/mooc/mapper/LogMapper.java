package com.mooc.mapper;

import java.util.List;

import com.mooc.entity.Log;
import com.mooc.entity.Statistic;

public interface LogMapper {
	List<Log> select();
	List<Log> selectadminlog();
	List<Log> selectbyusername(String username);
	List<Log> selectadminlogbyusername(String username);
	int insert(Log log);
	int updateByPrimaryKeySelective(Log log);

	List<Statistic> count();
}
