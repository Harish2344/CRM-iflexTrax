package com.iflex_trax.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iflex_trax.Entity.Customer;


@Repository
public interface ReportCustomerRepo extends JpaRepository<Customer,Long> {

}
