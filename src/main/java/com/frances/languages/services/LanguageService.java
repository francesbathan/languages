package com.frances.languages.services;

import java.util.List;
import java.util.Optional;

import com.frances.languages.models.Language;
import com.frances.languages.repositories.LanguageRepository;

import org.springframework.stereotype.Service;

@Service
public class LanguageService {
    private final LanguageRepository languageRepository;
    
    public LanguageService(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }

    public List<Language> allLanguages() {
        return languageRepository.findAll();
    }
    
    
    public Language createLanguage(Language l) {
        return languageRepository.save(l);
    }
    
    
    public Language findLanguage(Long id) {
        Optional<Language> optionalLanguage = languageRepository.findById(id);
        if(optionalLanguage.isPresent()) {
            return optionalLanguage.get();
        } else {
            return null;
        }
    }
    
   
    public Language updateLanguage(Language l) {
    	return languageRepository.save(l);
    }
    
    public Language updateLanguage(Long id, String name, String creator, String version) {
    	Optional<Language> lang = languageRepository.findById(id);
    	if(lang != null) {
    		lang.get().setName(name);
    		lang.get().setCreator(creator);
    		lang.get().setVersion(version);

    		return lang.get();
    	}
    	return null;        
    }
  

    public void deleteLanguage(Long id) {
    	languageRepository.deleteById(id);
    }

    
}