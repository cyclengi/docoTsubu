package tester;

import java.util.ArrayList;
import java.util.List;

import dao.MutterDAO;
import model.Mutter;

public class DAOTester {

	public static void main(String[] args) {

		List<Mutter> mutterList = new ArrayList<Mutter>();
		MutterDAO dao = new MutterDAO();
		mutterList = dao.findAll();

		for(Mutter mutter : mutterList) {
			System.out.println(mutter.getUserName());
			System.out.println(mutter.getText());
			System.out.println("終了");
		}


	}

}
