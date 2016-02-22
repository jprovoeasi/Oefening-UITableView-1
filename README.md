# Exercise-UITableView-1

In this exercise you will learn to use a **dynamic** UITableView.

## Tips
1. The UITableView is configured from the storyboard. Select the UITableView and use the **attributes inspector**.
2. This exercise can **not** be solved completely from the storyboard.

## Tasks
1. Add a UITableViewController to the storyboard.
2. Configure tje UITableViewController in the storyboard. Use the attributes inspector.
3. Make a **prototype cell** in the storyboard.
  - Visualize the names and the scores of the teams. Use different UILabels. When the match is not over yet, hide the scores.
  - Set the **reuse identifier** of the cell.
4. Implement the **UITableViewDataSource protocol**.
  - For now, use only a single section to display everything.
  - The data (rows) to be displayed is already present in the project, you don't have to alter it. Make use of the class `MatchFactory`.
  - In one of the methodes of the protocol the prototype cell is connected. This is done by a **reuse identifier**, this is the same identifier from step 3.
5. When the application is run at this point, the UITableView should be filled with cells.
6. Change the height of the rows.
7. Add header views depending on the state of the match.
  - Add another prototype cell in the storyboard and configure its layout as you like.
  - You will need multiple sections in the UITableView.
8. Change the height of the header views.
9. Remove the **cell separator**.
10. Add the cell separator again and change its default color.
11. When a row is clicked, navigate to a detail screen by a push.
  - Pass along the selected `Match` to the detail view controller by using the method `prepareForSegue:sender:`.
  - Present the images of both teams in full size.
  - Present the names of both teams.
  - Present the score.

## Solutions
The solutions are available in the **oplossing** branch of this repository.
