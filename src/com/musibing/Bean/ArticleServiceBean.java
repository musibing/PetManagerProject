package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.ArticleService;
import com.musibing.vo.Article;

@Service("ArticleServiceBean")
@Transactional 
public class ArticleServiceBean implements ArticleService{
@Resource
SessionFactory factory;
	@Transactional
	public void saverArticle(Article ac) {
		factory.getCurrentSession().save(ac);
	}
	
	public Article selectArticleForID(int ArticleID) {
		
		return (Article)factory.getCurrentSession().get(Article.class, ArticleID);
	}

	@Override
	public void updateArticle(Article ac) {
		factory.getCurrentSession().update(ac);
		
	}

	
	public  List<Article>  SelectAllArticle() {
	
		return factory.getCurrentSession().createQuery("from Article").setMaxResults(8).list();
	}

	
	public List<Article> SelectAllQuestion(int MaxResultsID) {
		
		return  factory.getCurrentSession().createQuery("from Article").setFirstResult(MaxResultsID-10).setMaxResults(MaxResultsID).list();
	}
	public int SelectMaxArticleID(){
		
		return (int)factory.getCurrentSession().createQuery("select max(articleID) from Article").uniqueResult();
	}
	public Long SelectCountArticle(){
		return (Long)factory.getCurrentSession().createQuery("select count(*) from Article").uniqueResult();
		
	}

	
	public List<Article> SelectAllArticleNoTerm() {
		return factory.getCurrentSession().createQuery("from Article").list();
		
	}


}
