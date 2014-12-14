public boolean check_for_word(String word){
    try {
        BufferedReader in = createReader("TWL06.txt");
        String str;
        while ((str = in.readLine()) != null) {
            if ( str.indexOf( word ) > -1 ) {
 return true;
} else {
  return false;
}
        }
        in.close();
    } catch (IOException e) {
    }

return false;
}
