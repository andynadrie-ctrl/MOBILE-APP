String? findQuat(String code){
  if (code== "OL"){
    return "Olembe";
  }
  else if (code == "TS"){
    return "Tsinga";
  }
  else if  (code == "ME"){
    return "Messasi";
  }
  return null;
}
void main(){
  print(findQuat("OL") ?? "unknown town");
 // print(findQuat("TS")?? "unknown town");
  //print(findQuat("ME")?? "unknown town");
}