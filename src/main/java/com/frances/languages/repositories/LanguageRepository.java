package com.frances.languages.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.frances.languages.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long>{
    List<Language> findAll();
    
    Long countByNameContaining(String search);
    
    Long deleteByNameStartingWith(String search);
    
    Optional<Language> findById(Long id);
    
    void deleteById(Long id);
}