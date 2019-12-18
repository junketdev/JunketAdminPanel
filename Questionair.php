<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Questionair</title>
</head>
<body>
  <form action="#">
    <table>

      <!-- Question Heading with question number -->
      <tr>
        <th>Question 1 : </th>
      </tr>
    
      <!-- Question Description -->
      <tr>
        <td>What type of destination you would like to visit?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <input type="checkbox" name="option1">Water sports & scuba diving<br>
            <input type="checkbox" name="option2">Adventure & Hiking<br>
            <input type="checkbox" name="option3">Cultural-for museums, local traditions<br>
            <input type="checkbox" name="option4">Shopping<br>
          </ol>
        </td>
      </tr>
       <!-- Question Description -->
      <tr>
        <td>What is your budget?(Indian currency)</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <input type="checkbox" name="option1">5000-10000<br>
            <input type="checkbox" name="option2">10000-20000<br>
            <input type="checkbox" name="option3">20000-40000<br>
            <input type="checkbox" name="option4">40000 and above<br>
          </ol>
        </td>
      </tr>
       <!-- Question Description -->
      <tr>
        <td>On which tour would you like to go?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
          <form action="/action_page.php">
  <input type="checkbox" name="option1" value="National"> National Tour<br>
  <input type="checkbox" name="option2" value="International"> International Tour<br>
            
          </ol>
        </td>
      </tr>

      <!--<form action="/action_page.php">
  <input type="checkbox" name="vehicle1" value="Bike"> I have a bike<br>
  <input type="checkbox" name="vehicle2" value="Car"> I have a car<br>
  <input type="checkbox" name="vehicle3" value="Boat" checked> I have a boat<br><br>
  <input type="submit" value="Submit">-->







      <!-- Submit -->
      <tr><td><input type="submit"></td></tr>
    </table>
  </form>
</body>
</html>