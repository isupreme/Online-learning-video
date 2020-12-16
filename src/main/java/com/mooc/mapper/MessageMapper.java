package com.mooc.mapper;

import com.mooc.entity.Message;

import java.util.List;

public interface MessageMapper {
	 int delete(Message record);
      Message select(Message record);
	    int insert(Message record);
      List<Message> selectMy(String userid);

    int deleteByCourseId(String courseId);
}
