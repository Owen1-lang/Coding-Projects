import java.awt.Color;

import javax.lang.model.element.Element;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

public class LineNumberTextAreaTest extends JFrame {
		   private JTextArea textArea;
		   private JTextArea lines;
		   private JScrollPane jsp;
		   public LineNumberTextAreaTest() {
		      setTitle("LineNumberTextArea Test");
		      jsp = new JScrollPane();
		      textArea = new JTextArea();
		      lines = new JTextArea("1");
		      lines.setBackground(Color.LIGHT_GRAY);
		      lines.setEditable(false);
		      //  Code to implement line numbers inside the JTextArea
		      textArea.getDocument().addDocumentListener(new DocumentListener() {
		         public String getText() {
		            int caretPosition = textArea.getDocument().getLength();
		            Element root = (Element) textArea.getDocument().getDefaultRootElement();
		            String text = "1" + System.getProperty("line.separator");
		               for(int i = 2; i < ((javax.swing.text.Element) root).getElementIndex(caretPosition) + 2; i++) {
		                  text += i + System.getProperty("line.separator");
		               }
		            return text;
		         }
		         @Override
		         public void changedUpdate(DocumentEvent de) {
		            lines.setText(getText());
		         }
		         @Override
		         public void insertUpdate(DocumentEvent de) {
		            lines.setText(getText());
		         }
		         @Override
		         public void removeUpdate(DocumentEvent de) {
		            lines.setText(getText());
		         }
		      });
		      jsp.getViewport().add(textArea);
		      jsp.setRowHeaderView(lines);
		      add(jsp);
		      setSize(400, 275);
		      setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		      setLocationRelativeTo(null);
		      setVisible(true);
		   }

public static void main(String[] args) {
	new LineNumberTextAreaTest();
	}
}