import java.util.Scanner;
//import java.util.ArrayList;
//import java.util.Collections;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ComponentEvent;
import java.awt.event.ComponentListener;
import java.awt.event.KeyEvent;

import java.io.*;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.lang.model.element.Element;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JTextArea;
import javax.swing.border.CompoundBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.BadLocationException;
import javax.swing.text.Utilities;


public class Guest_List{
	
	public static void main(String[] args)  {
		            
		
		
		JFrame frame = new JFrame("");
		frame.setSize(1280, 720);
		frame.setLocation(300, 200);
				
		
		final JFileChooser fc = new JFileChooser();		
		
						
		final JTextArea text = new JTextArea(10, 40);
		frame.getContentPane().add(BorderLayout.CENTER, text);
		
		
		
		//Adding The Menu To The Menu Bar
		JMenu menu = new JMenu("File");
		menu.setMnemonic(KeyEvent.VK_A);
		menu.getAccessibleContext().setAccessibleDescription("The Only File Menu");
		JMenuBar menubar = new JMenuBar();
		menubar.add(menu);
		
		
		//Add a sub-menu
		JMenuItem Menuitem = new  JMenuItem("Open");
		Menuitem.setMnemonic(KeyEvent.VK_O);
		Menuitem.getAccessibleContext().setAccessibleDescription("Open a Folder");
		menu.add(Menuitem);
		Menuitem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				fc.showOpenDialog(null);
				File f = fc.getSelectedFile();
				String fileName = f.getAbsolutePath();
					try {
						FileReader reader = new FileReader(fileName);
						BufferedReader br = new BufferedReader(reader);	
						text.read(br, null);
						br.close();
						text.requestFocus();
					} catch (Exception e1) {
						JOptionPane.showMessageDialog(null, e1);
					}
					
					frame.setName(f.getName());
			}
		});
		
		JMenuItem save = new JMenuItem("Save");
		save.setMnemonic(KeyEvent.VK_S);
		save.getAccessibleContext().setAccessibleDescription("Save File To Computer");
		menu.add(save); 
		save.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e1) {
				//Save/Update File FunctionFile temp_file = new File("TempFile.txt");
				
				
			}
		});
		
		JMenuItem save_as = new JMenuItem("Save As");
		save_as.setMnemonic(KeyEvent.VK_A);
		save_as.getAccessibleContext().setAccessibleDescription("Save Entire Folder");
		menu.add(save_as);
		save_as.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e2) {
				// Save File Dialog Function
				
			}
		});
		
		menu.addSeparator();
		
		JMenuItem options = new JMenuItem("Options");
		options.setMnemonic(KeyEvent.VK_T);
		options.getAccessibleContext().setAccessibleDescription("Opens Option Menu");
		menu.add(options);


		
		//EDIT FONT MENU
		JMenu editMenu = new JMenu("Edit");
		editMenu.setMnemonic(KeyEvent.VK_P);
		editMenu.getAccessibleContext()	.setAccessibleDescription("Menu To Edit Items");		
		menubar.add(editMenu);
		
		JMenuItem Copy = new JMenuItem("Copy");
		Copy.setMnemonic(KeyEvent.VK_C);
		Copy.getAccessibleContext().setAccessibleDescription("Copy Highlighted Text");
		editMenu.add(Copy);
		
		
		JMenuItem Cut = new JMenuItem("Cut");
		Cut.setMnemonic(KeyEvent.VK_F);
		Cut.getAccessibleContext().setAccessibleDescription("Cut Highlighted Text");;
		editMenu.add(Cut);				
		
		
		editMenu.addSeparator();
		
		
		JMenuItem Paste = new JMenuItem("Paste");
		Paste.setMnemonic(KeyEvent.VK_V);
		Paste.getAccessibleContext().setAccessibleDescription("Pastes Other Copied Text");
		editMenu.add(Paste);
		
		
		JMenuItem Font = new JMenuItem("Font");
		Font.setMnemonic(KeyEvent.VK_E);
		Font.getAccessibleContext().setAccessibleDescription("Change Font color And Text Style");
		editMenu.add(Font);
		
		JMenu View = new JMenu("View");
		View.setMnemonic(KeyEvent.VK_PLUS);
		View.getAccessibleContext().setAccessibleDescription("Increase Font Size in text area");
		menubar.add(View);
		
		JMenuItem Zoom = new JMenuItem("Zoom");
		Zoom.setMnemonic(KeyEvent.VK_MINUS);
		Zoom.getAccessibleContext().setAccessibleDescription("Zoom Into Text"); 
		View.add(Zoom);
		
		JCheckBox Statusbar = new JCheckBox("Status Bar");
		Statusbar.setMnemonic(KeyEvent.VK_F10);
		Statusbar.getAccessibleContext().setAccessibleDescription("Adds Status Bar @ Bottom");
		View.add(Statusbar);
		
		JMenu Window = new JMenu("Window");
		Window.setMnemonic(KeyEvent.VK_W);
		Window.getAccessibleContext().setAccessibleDescription("Change Theme And Other");
		menubar.add(Window);
		
		
		JMenu Theme = new JMenu("Change Theme");
		Theme.setMnemonic(KeyEvent.VK_E);
		Theme.getAccessibleContext().setAccessibleDescription("Change The Theme Of The Window");
		Window.add(Theme);

		
		JMenuItem Dark = new JMenuItem("Dark [Windows]");
		Dark.setMnemonic(KeyEvent.VK_D);
		Dark.getAccessibleContext().setAccessibleDescription("Change Theme To Dark Mode");
		Theme.add(Dark);
		Dark.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Color c = new Color(66, 62, 61);
				text.setBackground(c);
				
				Color forec = new Color(255, 255, 255);
				text.setForeground(forec);							
			}
		});
		
		JMenuItem Light = new JMenuItem("Light [Windows]");
		Light.setMnemonic(KeyEvent.VK_L);
		Light.getAccessibleContext().setAccessibleDescription("Change Theme To Light Mode");
		Theme.add(Light);		
		Light.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Color c = new Color(255, 255, 255);
				text.setBackground(c);
				
				Color f = new Color(0, 0, 0);
				text.setForeground(f);
			}
		});
		
		JMenuItem Black = new JMenuItem("Dark [User Choice]");
		Black.setMnemonic(KeyEvent.VK_B);
		Black.getAccessibleContext().setAccessibleDescription("");
		Theme.add(Black);
		Black.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Color c = new Color(0, 0, 0);
				text.setBackground(c);
				
				Color f = new Color(255, 255, 255);
				text.setForeground(f);
			}
		});
		
		
		
		frame.setJMenuBar(menubar);
		frame.setVisible(true);
		
	}
}