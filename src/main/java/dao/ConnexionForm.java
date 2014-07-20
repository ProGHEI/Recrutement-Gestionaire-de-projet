package dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import model.Utilisateur;

public final class ConnexionForm {
    private static final String CHAMP_EMAIL = "email";
    private static final String CHAMP_PASS = "motdepasse";

    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();


    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }
    
  //======================= UTILISATEUR ================================================================

    /**
	 * Cette méthode permet de connecter un membre en récupérant son e-mail et son mot de passe
	 * rentrés dans le formulaire
	 * <p>
	 * On récupère le "salt" contenu dans la BDD afin de hasher le mot de passe 
	 * rentré. Si le résultat correspond à la valeur contenu dans la BDD, on valide la connexion.
	 */
    
    public Utilisateur connecterUtilisateur( HttpServletRequest request ) {
    	
        /* Récupération des champs du formulaire */
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String motDePasse = getValeurChamp( request, CHAMP_PASS );

        Utilisateur utilisateur = new Utilisateur();

        String salt = null;
        
        try {
			salt = getSalt(email, motDePasse);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

        String securePassword = get_SHA_512_SecurePassword(motDePasse, salt);
        
        /* Validation du membre. */
        try {
            validationMembre(email, securePassword);
            utilisateur.setEmail( email );
         utilisateur.setMotDePasse( motDePasse );
        } catch ( Exception e ) {
            setErreur( CHAMP_PASS, e.getMessage() );
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }


        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty()) {
            resultat = "Succès de la connexion.";
        } else {
            resultat = "Échec de la connexion.";
        }

        return utilisateur;
    }
    
    
  //======================= ADMIN ================================================================
    
    
    /**
	 * Cette méthode permet de connecter un membre en récupérant son e-mail et son mot de passe
	 * rentrés dans le formulaire
	 * <p>
	 * On récupère le "salt" contenu dans la BDD afin de hasher le mot de passe 
	 * rentré. Si le résultat correspond à la valeur contenu dans la BDD, on valide la connexion.
	 */
    
    public Utilisateur connecterAdmin( HttpServletRequest request ) {
        /* Récupération des champs du formulaire */
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String motDePasse = getValeurChamp( request, CHAMP_PASS );

        Utilisateur utilisateur = new Utilisateur();
        
        String salt = null;
        
        try {
			salt = getSalt(email, motDePasse);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

        String securePassword = get_SHA_512_SecurePassword(motDePasse, salt);
        
        /* Validation du membre. */
        try {
            validationAdmin(email, securePassword);
            utilisateur.setEmail( email );
         utilisateur.setMotDePasse( motDePasse );
        } catch ( Exception e ) {
            setErreur( CHAMP_PASS, e.getMessage() );
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }


        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty()) {
            resultat = "Succès de la connexion en tant qu'admin.";
        } else {
            resultat = "Échec de la connexion en tant qu'admin.";
        }

        return utilisateur;
    }
    

    
    
    private void validationAdmin(String email, String motDePasse) throws Exception {
     boolean validation = false;
    
	     try {
		Connection connection = DataSourceProvider.getDataSource()
		.getConnection();
		// Utiliser la connexion
		PreparedStatement stmt = connection.prepareStatement( "SELECT * FROM `user` WHERE `mail`=? AND `pass`=? AND `role`='admin'");
		stmt.setString(1,email);
		stmt.setString(2,motDePasse);
		ResultSet results = stmt.executeQuery();
		if(results.next()){
		validation=true;
		}
		
		// Fermer la connexion
		stmt.close();
		connection.close();
		
		
		} catch (SQLException e) {
		e.printStackTrace();
		}
		    
		     if (!validation) {
		throw new Exception();
		     }
		
	}
    
  //======================= ================================================================
    
    private String getSalt(String email, String motDePasse) throws Exception {
        String salt = null;
       
   	     try {
   		Connection connection = DataSourceProvider.getDataSource()
   		.getConnection();
   		// Utiliser la connexion
   		PreparedStatement stmt = connection.prepareStatement( "SELECT `salt` FROM `user` WHERE `mail`=?");
   		stmt.setString(1,email);
   		ResultSet results = stmt.executeQuery();
   		if(results.next()){
   		salt = results.getString("salt");
   		}
   		
   		// Fermer la connexion
   		stmt.close();
   		connection.close();
   		
   		
   		} catch (SQLException e) {
   		e.printStackTrace();
   		}
   		    
		return salt;
   		
   	}
		
		/*
		* Ajoute un message correspondant au champ spécifié à la map des erreurs.
		*/
		    private void setErreur( String champ, String message ) {
		        erreurs.put( champ, message );
		    }
		
		    /*
		* Méthode utilitaire qui retourne null si un champ est vide, et son contenu
		* sinon.
		*/
		    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
		        String valeur = request.getParameter( nomChamp );
		        if ( valeur == null || valeur.trim().length() == 0 ) {
		            return null;
		        } else {
		            return valeur;
		        }
		    }
		    
		    
		    /*
		* Méthode permettant de savoir si le membre est enregistré ou non, et
		* renvoie une exception qui fait echouer la connexion
		*/
		    public void validationMembre(String email, String motDePasse) throws Exception{
		boolean validation = false;
		    
		     try {
		Connection connection = DataSourceProvider.getDataSource()
		.getConnection();
		// Utiliser la connexion
		PreparedStatement stmt = connection.prepareStatement( "SELECT * FROM `user` WHERE `mail`=? AND `pass`=?");
		stmt.setString(1,email);
		stmt.setString(2,motDePasse);
		ResultSet results = stmt.executeQuery();
		if(results.next()){
		validation=true;
		}
		
		// Fermer la connexion
		stmt.close();
		connection.close();
		
		
		} catch (SQLException e) {
		e.printStackTrace();
		}
		    
		if (!validation) {
			throw new Exception();
		}
	}

		    private static String get_SHA_512_SecurePassword(String passwordToHash, String salt)
		    {
		        String generatedPassword = null;
		        try {
		            MessageDigest md = MessageDigest.getInstance("SHA-512");
		            md.update(salt.getBytes());
		            byte[] bytes = md.digest(passwordToHash.getBytes());
		            StringBuilder sb = new StringBuilder();
		            for(int i=0; i< bytes.length ;i++)
		            {
		                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		            }
		            generatedPassword = sb.toString();
		        }
		        catch (NoSuchAlgorithmException e)
		        {
		            e.printStackTrace();
		        }
		        return generatedPassword;
		    }
}