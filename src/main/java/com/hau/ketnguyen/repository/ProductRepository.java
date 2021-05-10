package com.hau.ketnguyen.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hau.ketnguyen.entity.ProductEntity;

@Repository("productRepository")
public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
	@Query(value = "SELECT COUNT(*) FROM product WHERE category_id =:cateId", nativeQuery = true)
	public int count(@Param("cateId") Long id);
	
	List<ProductEntity> findAllByCategoryId(Long id, Pageable pageable);
	
	@Query(value = "SELECT * FROM product WHERE name LIKE %?1%" + 
					" OR price LIKE %?1%" +
					" OR description LIKE %?1%" + " \n#pageable\n"
			,nativeQuery = true)
	List<ProductEntity> findAllByKey(String key,Pageable pageable);
	
	@Query(value = "SELECT COUNT(*) FROM product WHERE name LIKE %?1%" + 
			" OR price LIKE %?1%" +
			" OR description LIKE %?1%"
	,nativeQuery = true)
	public int count(String key);
}
