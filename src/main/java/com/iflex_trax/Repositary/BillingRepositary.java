package com.iflex_trax.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iflex_trax.Entity.Billing;


@Repository
public interface BillingRepositary extends JpaRepository<Billing,Long> {

}
