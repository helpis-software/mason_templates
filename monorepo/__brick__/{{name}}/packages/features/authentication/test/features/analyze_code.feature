Feature: Analyze code

Scenario: FlutterCode editor runs the Dart analyzer on a file and highlights any warnings or errors
  Given the user is in the FlutterCode editor
  And the user has opened a file in the editor
  When the user clicks the "Analyze code" button
  Then the FlutterCode editor runs the Dart analyzer on the open file
  And any warnings or errors found by the analyzer are highlighted in the editor
