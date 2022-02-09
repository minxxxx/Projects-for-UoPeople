import javax.swing.JOptionPane;
public class Quiz {
	public static void main(String[] args) {
		String question = "What is 2 + 2?\n";
		question += "A. 8\n";
		question += "B. 4\n";
		question += "C. 2\n";
		question += "D. 1/2\n";
		question += "E. 16\n";
		while (true) {
			String answer = JOptionPane.showInputDialog(question);
			answer = answer.toUpperCase();
			if (answer.equals("A")) {
				JOptionPane.showMessageDialog(null, "Wrong answer selected. Please try again.");
			} else if (answer.equals("B")) {
				JOptionPane.showMessageDialog(null, "That's right! It is 4!");
				break;
			} else if (answer.equals("C")) {
				JOptionPane.showMessageDialog(null, "Wrong answer selected. Please try again.");
			} else if (answer.equals("D")) {
				JOptionPane.showMessageDialog(null, "Wrong answer selected. Please try again.");
			} else if (answer.equals("E")) {
				JOptionPane.showMessageDialog(null, "Wrong answer selected. Please try again.");
			} else {
				JOptionPane.showMessageDialog(null, "Invalid selection, please try selecting A, B, C, D or E.");
			}
		}
	}
}
