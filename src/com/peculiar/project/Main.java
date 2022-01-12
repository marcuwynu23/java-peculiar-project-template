package com.peculiar.project; 

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;

public class Main{
    public static void main(String[] args){
        javax.swing.SwingUtilities.invokeLater(()->{
            new SwingApplication();
        });
    }
}
class SwingApplication extends JFrame{
    static class UI{
        private static final String TITLE = "Swing System Template";
        private static final int WIDTH = 700;
        private static final int HEIGHT = 600;
        private static final Color BG_COLOR = new Color(244,244,244);
        private static final Color BG_COLOR2 = new Color(44,44,44);
        private static final Color FG_COLOR = Color.WHITE;
    }
    private Container ctpane;
    public SwingApplication(){
        try{
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        }catch(Exception ex){
            System.out.println(ex);
        }
        setSize(UI.WIDTH,UI.HEIGHT);
        setTitle(UI.TITLE);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(3);
        setComponents();
        setComponentUI();
        setComponentEvent();
        setComponentLayout();
        setVisible(true);
    }
    private void setComponents(){
        ctpane = getContentPane();
        ctpane.setLayout(new BorderLayout());
        var sidePanel = new JPanel();
        sidePanel.setLayout(new BorderLayout());
        sidePanel.setBackground(UI.BG_COLOR2);
        sidePanel.setSize(200,200);
        var panel = new JPanel();
        panel.setLayout(new GridBagLayout());
        panel.setBackground(UI.BG_COLOR2);

        var gc = new GridBagConstraints();
        gc.insets = new Insets(5,5,5,5);
        gc.gridx = 0;
        gc.gridy = 0;
        var btn1 = new JButton("Menu");
        btn1.setBackground(UI.BG_COLOR2);
        btn1.setForeground(UI.FG_COLOR);
        panel.add(btn1,gc);


        gc.gridx = 0;
        gc.gridy = 1;
        var btn2 = new JButton("About");
        btn2.setBackground(UI.BG_COLOR2);
        btn2.setForeground(UI.FG_COLOR);
        panel.add(btn2,gc);

        sidePanel.add(panel,BorderLayout.NORTH);
        ctpane.add(sidePanel,BorderLayout.WEST);
    }
    private void setComponentUI(){
        ctpane.setBackground(UI.BG_COLOR);
    }
    private void setComponentEvent(){

    }
    private void setComponentLayout(){

    }    
}