Feature: Appliquer des promotions à un panier

  Scenario: appliquer 10% sur un produit donné
    Given une promotion de 10% sur le "produit A"
    When j'ajoute le "produit A" ayant un prix unitaire de 10€
    And j'ajoute le "produit B" ayant un prix unitaire de 15€
    Then le montant du panier est de 24€

  Scenario: appliquer 10% sur un produit donné même lorsque la quantité est supérieure 1
    Given une promotion de 10% sur le "produit A"
    When j'ajoute 3 fois le "produit A" ayant un prix unitaire de 10€
    And j'ajoute le "produit B" ayant un prix unitaire de 15€
    Then le montant du panier est de 42€
