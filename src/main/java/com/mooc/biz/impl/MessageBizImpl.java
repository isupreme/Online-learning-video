package com.mooc.biz.impl;

import com.mooc.biz.MessageBiz;
import com.mooc.entity.Message;
import com.mooc.mapper.MessageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value="MessageBiz")
public class MessageBizImpl implements MessageBiz {
	@Autowired
    MessageMapper messageMapper;

	@Override
	public int delete(Message record) {
		// TODO Auto-generated method stub
		return messageMapper.delete(record);
	}

	@Override
	public Message select(Message record) {
		// TODO Auto-generated method stub
		return messageMapper.select(record);
	}

	@Override
	public int insert(Message record) {
		// TODO Auto-generated method stub
		return messageMapper.insert(record);
	}

	@Override
	public List<Message> selectmy(String userid) {
		// TODO Auto-generated method stub
		return messageMapper.selectMy(userid);
	}

	@Override
	public int deleteByCourseId(String courseId) {
		return messageMapper.deleteByCourseId(courseId);
	}

}
