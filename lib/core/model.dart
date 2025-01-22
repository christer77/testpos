// ignore: file_names
class Epargne {
  late String id;

  late String CodeCompte="";
  late String NomCompte="";
  late String Client_ID="";
  late String produitEpargne="";
  late String CodeDevise="";
  late String CodeAgence="";
  late String nomProdEp;
  late String solde="0";
  late String lienamount="0";
  late String estFermer="";
  late String nomAgence="";
  late String montantMinDepot="0";
  late String montantMaxRetrait="0";

  late String search = "";
 
  late final Epargne transaction;

  String table = "epargnes";

  Epargne({
      required this.CodeCompte,
      required this.NomCompte,
      required this.Client_ID,
      required this.produitEpargne,
      required this.CodeDevise,
      required this.CodeAgence,
      required this.nomProdEp,
      required this.solde,
      required this.lienamount,
      required this.estFermer,
      required this.nomAgence,
      required this.montantMinDepot,
      required this.montantMaxRetrait,
  });

}