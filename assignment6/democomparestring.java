class democomparestring
 {
      public static void main(String[] args)
      {
          long stime=System.currentTimeMillis();
          StringBuilder sb1=new StringBuilder("welcome to");
          for(int i=0;i<100000;i++)
          {
            sb1.append("iexceed");
          }
          System.out.println("String Builder");
          System.out.println(System.currentTimeMillis()-stime+"ms");
 
          long stime1=System.currentTimeMillis();
          StringBuffer sb2=new StringBuffer("welcome to");
          for(int i=0;i<100000;i++)
          {
            sb2.append("iexceed");
          }
          System.out.println("String Buffer");
          System.out.println(System.currentTimeMillis()-stime1+"ms");
 
 
      }
 }