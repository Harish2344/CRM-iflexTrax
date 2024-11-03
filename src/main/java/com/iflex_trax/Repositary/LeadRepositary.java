package com.iflex_trax.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iflex_trax.Entity.Lead;

@Repository
public interface LeadRepositary extends JpaRepository<Lead,Long> {

}
