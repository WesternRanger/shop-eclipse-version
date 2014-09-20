package dao;

public class Fenye {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Fenye f= new Fenye();
		String sql=f.fenyemethod(3, "t_product", 13, 5);
		System.out.println("fenyesql====" +sql);

	}
	// 根据curpage当前页（如果是第二页）和rowcount每页显示多少行（10行）
	public static String fenyemethod(int curpage,String tab,int rowCount,int pagesize)
	{

		// tab==表名字
		// curpage==当前页 -----2
		// pagesize==一页多少行 ----10
		// rowCount==一共多少行 ----66

		// 例如//我要请求第二页，起始行：11，结束行20
		// 实际的页数：=rowCount/pagesize（如果是整除的话，即是当前商，如果不整除，则是商+1）
		// 起始行=（当前页-1）×pagesize+1（需要注意到是:当前页<=实际的页数）
		// 结束行= 起始行 + pagesize -1（需要注意到是:结束行<=rowCount）
		
		int beginc=0;
		int endc=0;
		
		int realpage=0;
		int xx=rowCount%pagesize;
		if(xx==0)
		{
			realpage=rowCount/pagesize;
		}else
		{
			realpage=rowCount/pagesize+1;
		}
		
		if(curpage<=realpage)
		{
			beginc=(curpage-1)*pagesize+1;
			endc=beginc+pagesize-1;
		}else
		{
			beginc=(realpage-1)*pagesize+1;
			endc = rowCount;
		}

		//totalcount作用是万一计算出的页数超过总行数的话，给他显示最后一页 beginc endc
		//oracle分页查询
		//String sql="select * from (select t.*,rownum  as row_number from " + tab + " t)  where row_number between "+ beginc + " and "+ endc;
		String sql = "select * from "+ tab+  " limit " + (beginc-1) + "," + endc;
		return sql;
	}
}
