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
	// ����curpage��ǰҳ������ǵڶ�ҳ����rowcountÿҳ��ʾ�����У�10�У�
	public static String fenyemethod(int curpage,String tab,int rowCount,int pagesize)
	{

		// tab==������
		// curpage==��ǰҳ -----2
		// pagesize==һҳ������ ----10
		// rowCount==һ�������� ----66

		// ����//��Ҫ����ڶ�ҳ����ʼ�У�11��������20
		// ʵ�ʵ�ҳ����=rowCount/pagesize������������Ļ������ǵ�ǰ�̣������������������+1��
		// ��ʼ��=����ǰҳ-1����pagesize+1����Ҫע�⵽��:��ǰҳ<=ʵ�ʵ�ҳ����
		// ������= ��ʼ�� + pagesize -1����Ҫע�⵽��:������<=rowCount��
		
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

		//totalcount��������һ�������ҳ�������������Ļ���������ʾ���һҳ beginc endc
		//oracle��ҳ��ѯ
		//String sql="select * from (select t.*,rownum  as row_number from " + tab + " t)  where row_number between "+ beginc + " and "+ endc;
		String sql = "select * from "+ tab+  " limit " + (beginc-1) + "," + endc;
		return sql;
	}
}
