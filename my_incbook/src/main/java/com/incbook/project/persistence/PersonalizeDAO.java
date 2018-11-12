package com.incbook.project.persistence;

import java.util.Map;

public interface PersonalizeDAO {

	public void deletePersonalChoice(int memberId) throws Exception;

	public void insertPersonalChoice(Map<String, Object> genreMap) throws Exception;

}
