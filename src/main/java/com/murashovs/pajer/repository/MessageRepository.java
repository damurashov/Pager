package com.murashovs.pajer.repository;

import com.murashovs.pajer.entity.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

}
