package com.enginee.service;

import java.util.List;

import com.enginee.model.Reply;
import com.enginee.model.Task;
import com.enginee.util.TransResult;

public interface ReplyService {

	List<Task> listTask();

	TransResult replyReply(Reply reply);

	Reply findByEmail(String email);


}
