package com.mooc.biz;

import com.mooc.entity.Message;

import java.util.List;

public interface MessageBiz {
    int delete(Message record);

    Message select(Message record);

    int insert(Message record);

    List<Message> selectmy(String userid);

    int deleteByCourseId(String courseId);
}
