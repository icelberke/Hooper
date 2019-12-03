//String[] playerData = loadStrings("list.txt");
String data = "playerX playerY";
String[] dataList = split(data, ' ');
//will containe the playerData from the last save
String[] playerData;
String[] currentData;

/*
function setSavedInfo
gets current playerX and playerY and etc
writes over the current data in playerData and saves the new info
*/
//Assigns the latest playerX and playerY to a data array
//Saves the values to the playerData.txt folder
void setSavedInfo(){
  String[] data = {str(playerX), str(playerY)};
  saveStrings("playerData.txt", data);
}

//Assigns the strings in playerData folder to a array named playerData
void getSavedInfo() {
  playerData = loadStrings("playerData.txt");
  print(playerData[0] + ' ' + playerData[1] + "\n");
}

//Will be used to convert strings to ints to be able to use
//in game
int stringToInt(String conversionString) {
  return parseInt(conversionString);
}
