package com.hau.ketnguyen.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hau.ketnguyen.entity.OrderItemsEntity;

@Repository("orderItemsRepository")
public interface OrderItemsRepository extends JpaRepository<OrderItemsEntity,Long>{

}
