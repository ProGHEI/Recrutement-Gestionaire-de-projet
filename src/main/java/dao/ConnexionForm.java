package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import model.Utilisateur;

public final class ConnexionForm {
    private static final String CHAMP_EMAIL  = "email";
    private static final String CHAMP_PASS   = "motdepasse";

    private String 				resultat;
    private Map<String, String> erreurs      = new HashMap<String, String>();


    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public Utilisateur connecterUtilisateur( HttpServletRequest request ) {
        /* Récupération des champs du formulaire */
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String motDePasse = getValeurChamp( request, CHAMP_PASS );

        Utilisateur utilisateur = new Utilisateur();

        
        /* Validation du membre. */
        try {
            validationMembre(email, motDePasse);
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
    
    
    public Utilisateur connecterAdmin( HttpServletRequest request ) {
        /* Récupération des champs du formulaire */
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String motDePasse = getValeurChamp( request, CHAMP_PASS );

        Utilisateur utilisateur = new Utilisateur();

        
        /* Validation du membre. */
        try {
            validationAdmin(email, motDePasse);
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
}