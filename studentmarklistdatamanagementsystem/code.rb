
def studentinfo()
  mark=nil
  grade=nil
  class1=nil
  name=nil
  condition=nil
  writingcondition=nil
  limit=nil
  path=nil
  puts"\n"
  puts "Enter the Operation\n Write for write  and Read for read "
  puts"\n"
  condition=gets.chomp();
  puts"\n"
  if condition=="write"||condition=="Write"||condition=="WRITE"
  
    def writing()
      puts"Enter The Path For Save File\n example Drivename://foldername/filname.type"
      puts"\n"
      path=gets.chomp();
      puts"\n"
    puts"Enter How many students"
    puts"\n"
    limit=gets.chomp();
    puts"\n"
    puts"Enter the writing condition w for write "
    puts"\n"
    writingcondition=gets.chomp()
    puts"\n"
    i=0;
    while i < limit.to_i
  puts "Enter The Student Name";
  puts"\n"
  name=gets.chomp()
  puts"\n"
  puts "Enter The student mark";
  puts"\n"
  mark=gets.chomp()
  puts"\n"
  puts "Enter The student class";
  puts"\n"
  class1=gets.chomp();
  puts"\n"
  puts "Enter The student grade";
  puts"\n"
  grade=gets.chomp()
  puts"\n"
  File.open(path,writingcondition)do|file|
  
     file.write("Name:"+name+"\t\t"+"Mark:"+mark+"\t\t"+"Class:"+class1+"\t\t"+"Grade:"+grade+"\n")
     i+=1;
    end
    puts "Enter the writing condition to a for append"
    puts"\n"
    writingcondition=gets.chomp()
      puts"\n"
  end
  puts"\n"
  puts"students data is stored in path #{path} you can read it by applying read instead of write"
  puts"\n"
  puts"Enter once for run again , then enter read for read your entered students data from stored file"
  puts"\n"
  change=gets.chomp();
   puts"\n"
  if change=="once"||change=="ONCE"||change=="Once"
  studentinfo()
  end

  end
  writing()
  
  
  elsif condition=="read"||condition=="Read"||condition=="READ"
  
    def reading()
  puts "Enter The File Path example\nDrivename://foldername/filename.type"
  puts"\n"
  path=gets.chomp();
  puts"\n"
  File.open(path,"r")do|file|
  
  for lines in file.readlines()
    puts lines
  end
  end
  end
  reading()
  
  else
    puts "invalid"
  
  end
  
  
  end
    
  studentinfo()
  
