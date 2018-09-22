# my Java Readme 

### Dates 
SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
Date now = new Date();

String dateAsString = sdf.format(date); //"08.01.2013"
Date dateFromString = sdf.parse(dateAsString);

Calendar c = Calendar.getInstance(); 
c.setTime(now); 
c.add(Calendar.MONTH, -3);

### Regex

String datePattern = "no more than (\\d+) months ago from today";
            value.matches(datePattern)

                List<String> allMatches = new ArrayList<String>();
                Matcher m = Pattern.compile("\\d+").matcher(value);
                while (m.find()) {
                    allMatches.add(m.group());
                }
