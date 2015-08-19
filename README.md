# Oefening-UITableView-1

In deze oefening gaan we **dynamic** rows gebruiken in de UITableView.

## Tips
1. De UITableView configureer je vanuit het storyboard. Selecteer de UITableView en gebruik de **attributes inspector**.
2. Deze oefening kan je **niet** volledig in het storyboard maken.

## Opgaves
1. Voeg een UITableViewController toe aan het storyboard.
2. Configureer de UITableViewController in het storyboard. Gebruik hiervoor de attributes inspector.
3. Maak een **prototype cell** in het storyboard.
  - Visualiseer de namen en de scores van de teams. Gebruik verschillende UILabels. Als de match niet afgelopen is, verberg je de labels.
  - Zet de **reuse identifier** van de cell.
4. Implementeer het **UITableViewDataSource protocol**.
  - Gebruik voorlopig 1 sectie om alles weer te geven.
  - De data (rows) om weer te geven is al aanwezig in het project en moet je niet veranderen. Gebruik hiervoor de klasse `MatchFactory`.
  - In één van de methodes van het protocol connecteer je het prototype van de cell. Dit doe je aan de hand van de **reuse identifier**, dit is dezelfde identifier als in stap 3.
5. Als je nu de applicatie runt, is de UITableView gevuld met cells en kan je vlot scrollen doorheen alle rows.
6. Verander de hoogte van de rows.
7. Voeg header views toe afhankelijk van de status van de match.
  - Voeg nog een prototype cell toe om deze header te maken.
  - Je zult meerdere secties moeten invoeren in de UITableView.
8. Verander de hoogte van de header views.
9. Verwijder de **cell separator**.
10. Wanneer je op een row klikt, navigeer je d.m.v. een push naar een detail scherm.
  - Geef de gekozen `Match` mee aan de detail view controller in de methode `prepareForSegue:sender:`.
