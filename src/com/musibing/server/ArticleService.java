package com.musibing.server;

import java.util.List;

import com.musibing.vo.Article;

public interface ArticleService {
	public void saverArticle(Article ac);
	public Article selectArticleForID(int ArticleID);
	public void updateArticle(Article ac);
	public List<Article> SelectAllArticle();
	
	public List<Article> SelectAllQuestion(int MaxResultsID);
	public int SelectMaxArticleID();
	public Long SelectCountArticle();
	public List<Article> SelectAllArticleNoTerm();
}
