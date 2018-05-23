/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beauty.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import beauty.model.Produto;
import java.util.List;
/**
 *
 * @author joaom
 */
public class ProdutoDAO {

    private final SessionFactory sf;

    public ProdutoDAO(SessionFactory sf) {
        this.sf = sf;
    }
    
    public List<Produto> getList() {
        Session session = sf.openSession();
        Transaction tx = session.beginTransaction();
        
        Query query = session.createQuery("from Produto where validade > now()");
        List<Produto> listOfProducts = query.list();
        
        tx.commit();
        session.close();
        
        return listOfProducts;
    }
}
