package com.murashovs.pajer.repository;

import com.murashovs.pajer.entity.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Long> {
}
