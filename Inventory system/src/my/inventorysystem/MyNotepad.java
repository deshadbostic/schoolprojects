package my.inventorysystem;

import java.awt.Color;
import java.awt.FileDialog;
import java.awt.datatransfer.Clipboard;
import java.awt.event.TextEvent;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;
import javax.swing.JOptionPane;

public class MyNotepad extends javax.swing.JFrame {

    String programName = "Notepad";
    String filename = "";
    String holdText;
    String fn;
    String dir;
    boolean textChanged = false;
    String fileName;
    Clipboard clip = getToolkit().getSystemClipboard();

    
    
    public MyNotepad() {
        initComponents();
    }

     public void checkFile() {
        BufferedReader read;
        StringBuffer sb = new StringBuffer();
        try {
            read = new BufferedReader(new FileReader(fileName));
            String line;
            while ((line = read.readLine()) != null) {
                sb.append(line + "\n");
            }
            textArea.setText(sb.toString());
            read.close();
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
        } catch (IOException ioe) {
        }
    }
    
        
            
        
    
    
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        dialogColor = new javax.swing.JDialog();
        colorChooser = new javax.swing.JColorChooser();
        textArea = new java.awt.TextArea();
        jButton1 = new javax.swing.JButton();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();
        saveMenu = new javax.swing.JMenuItem();
        jMenuItem5 = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();
        jMenuItem6 = new javax.swing.JMenuItem();

        javax.swing.GroupLayout dialogColorLayout = new javax.swing.GroupLayout(dialogColor.getContentPane());
        dialogColor.getContentPane().setLayout(dialogColorLayout);
        dialogColorLayout.setHorizontalGroup(
            dialogColorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, dialogColorLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(colorChooser, javax.swing.GroupLayout.PREFERRED_SIZE, 600, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        dialogColorLayout.setVerticalGroup(
            dialogColorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(dialogColorLayout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addComponent(colorChooser, javax.swing.GroupLayout.PREFERRED_SIZE, 295, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(22, Short.MAX_VALUE))
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("MyNotepad");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        textArea.addTextListener(new java.awt.event.TextListener() {
            public void textValueChanged(java.awt.event.TextEvent evt) {
                textAreaTextValueChanged(evt);
            }
        });

        jButton1.setText("Back");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jMenu1.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-document-15.png")); // NOI18N
        jMenu1.setText("File");

        jMenuItem1.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_N, java.awt.event.InputEvent.CTRL_MASK));
        jMenuItem1.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-add-new-15.png")); // NOI18N
        jMenuItem1.setText("New");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem1);

        jMenuItem2.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_O, java.awt.event.InputEvent.CTRL_MASK));
        jMenuItem2.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-opened-folder-15.png")); // NOI18N
        jMenuItem2.setText("Open");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem2);

        jMenuItem3.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_S, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        jMenuItem3.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-save-as-15.png")); // NOI18N
        jMenuItem3.setText("Save As");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem3);

        saveMenu.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_S, java.awt.event.InputEvent.CTRL_MASK));
        saveMenu.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-save-15.png")); // NOI18N
        saveMenu.setText("Save");
        saveMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                saveMenuActionPerformed(evt);
            }
        });
        jMenu1.add(saveMenu);

        jMenuItem5.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_X, java.awt.event.InputEvent.CTRL_MASK));
        jMenuItem5.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-delete-15.png")); // NOI18N
        jMenuItem5.setText("Exit");
        jMenuItem5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem5ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem5);

        jMenuBar1.add(jMenu1);

        jMenu2.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-pencil-15.png")); // NOI18N
        jMenu2.setText("Edit");

        jMenuItem6.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_C, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        jMenuItem6.setIcon(new javax.swing.ImageIcon("/home/kylie/Pictures/icon/icons8-paint-palette-15.png")); // NOI18N
        jMenuItem6.setText("Color");
        jMenuItem6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem6ActionPerformed(evt);
            }
        });
        jMenu2.add(jMenuItem6);

        jMenuBar1.add(jMenu2);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(textArea, javax.swing.GroupLayout.DEFAULT_SIZE, 648, Short.MAX_VALUE)
            .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(textArea, javax.swing.GroupLayout.PREFERRED_SIZE, 420, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void saveMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_saveMenuActionPerformed
       if(filename.equals("")){
           saveAs();
       }
       else{
           save(filename);
       }
    }//GEN-LAST:event_saveMenuActionPerformed

    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed
        saveAs();
    }//GEN-LAST:event_jMenuItem3ActionPerformed

    private void textAreaTextValueChanged(java.awt.event.TextEvent evt) {//GEN-FIRST:event_textAreaTextValueChanged
        if(TextEvent.TEXT_VALUE_CHANGED != 0){
            if(!textChanged)
                setTitle("*  " + getTitle());
            textChanged = true;
            saveMenu.setEnabled(true);
        }
    }//GEN-LAST:event_textAreaTextValueChanged

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
       newFile();
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
        if(textArea.getText().length() < 1){
        FileDialog fd = new FileDialog(this, "Choose File", FileDialog.LOAD);
        fd.show();
        if (fd.getFile() != null) {
            fileName = fd.getDirectory() + fd.getFile();
            setTitle(fileName);
            checkFile();
        }
        textArea.requestFocus();
     }
     else if(!textChanged){
        FileDialog fd = new FileDialog(this, "Choose File", FileDialog.LOAD);
        fd.show();
        if (fd.getFile() != null) {
            fileName = fd.getDirectory() + fd.getFile();
            setTitle(fileName);
            checkFile();
        }
        textArea.requestFocus();
     }
     else{
            int confirm = JOptionPane.showConfirmDialog(null, "Do you want to save befor exiting this program?", "Notepad",JOptionPane.YES_NO_CANCEL_OPTION);
            if (confirm==JOptionPane.YES_OPTION)
            {
                if("".equals(filename)){
                saveAs();
                }
                else{
                    save(filename);
                }
            FileDialog fd = new FileDialog(this, "Choose File", FileDialog.LOAD);
            fd.show();
            if (fd.getFile() != null) {
                fileName = fd.getDirectory() + fd.getFile();
                setTitle(fileName);
                checkFile();
            }
            textArea.requestFocus();

            }
            else if(confirm == JOptionPane.NO_OPTION){
                FileDialog fd = new FileDialog(this, "Choose File", FileDialog.LOAD);
                fd.show();
                if (fd.getFile() != null) {
                    fileName = fd.getDirectory() + fd.getFile();
                    setTitle(fileName);
                    checkFile();
                }
                textArea.requestFocus();
            }
     }
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void jMenuItem5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem5ActionPerformed
           if("".equals(textArea.getText())){
        dispose();
    }
    else if(!textChanged){
        dispose();
    }
    else{
        int confirm = JOptionPane.showConfirmDialog(this, "Do you want to save befor exiting this program?");
        if (confirm==JOptionPane.YES_OPTION){
            if(filename.equals(""))
                saveAs();
            else
                save(filename);
        }
        if (confirm==JOptionPane.NO_OPTION)
        {
            dispose();
        }
    }
    }//GEN-LAST:event_jMenuItem5ActionPerformed

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
         if("".equals(textArea.getText())){
        System.exit(0);
    }
    else if(!textChanged){
        System.exit(0);
    }
    else{
        int confirm = JOptionPane.showConfirmDialog(this, "Do you want to save befor exiting this program?");
        if (confirm==JOptionPane.YES_OPTION){
            if(filename.equals(""))
                saveAs();
            else
                save(filename);
        }
        if (confirm==JOptionPane.NO_OPTION)
        {
            System.exit(0);
        }
    }

    }//GEN-LAST:event_formWindowClosing

    private void jMenuItem6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem6ActionPerformed
    Color c = colorChooser.showDialog(null, "Color Dialog", textArea.getForeground());
    textArea.setForeground(c);
    }//GEN-LAST:event_jMenuItem6ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

  
    public static void main(String args[]) {
        
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MyNotepad.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MyNotepad.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MyNotepad.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MyNotepad.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MyNotepad().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JColorChooser colorChooser;
    private javax.swing.JDialog dialogColor;
    private javax.swing.JButton jButton1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem jMenuItem5;
    private javax.swing.JMenuItem jMenuItem6;
    private javax.swing.JMenuItem saveMenu;
    private java.awt.TextArea textArea;
    // End of variables declaration//GEN-END:variables

    private void saveAs() {
       FileDialog fd = new FileDialog(MyNotepad.this, "Save", FileDialog.SAVE);
        fd.show();
        if (fd.getFile() != null) {

            fn=fd.getFile();
            dir=fd.getDirectory();
            filename = dir + fn +".txt";

            setTitle(filename);
            try
            {
                DataOutputStream d = new DataOutputStream(new FileOutputStream(filename));
                holdText = textArea.getText();
                BufferedReader br = new BufferedReader(new StringReader(holdText));
                while ((holdText = br.readLine()) != null){
                    d.writeBytes(holdText + "\r\n");
                    d.close();
                }
            }
            catch (Exception e)
            {
                System.out.println("File note found");
            }
            textArea.requestFocus();
            save(filename);
        }
    }

    private void save(String filename) {
        setTitle(programName+" "+filename);
        try
        {
            FileWriter out;
            out = new FileWriter(fn);
            out.write(textArea.getText());
            out.close();
        }
        catch(Exception err)
        {
            System.out.println("Error: " + err);
        }
        textChanged=false;
        saveMenu.setEnabled(false);
    }

    private void newFile() {
        if(textArea.getText().length() < 1){
            setTitle("Untitled-"+programName);
            textArea.setText("");
            textChanged=false;
        }
        else if(!textChanged){
            setTitle("Untitled-"+programName);
            textArea.setText("");
            textChanged=false;
        }
        else{
            int confirm = JOptionPane.showConfirmDialog(null, "Do you want to save befor exiting this program?", "Notepad",JOptionPane.YES_NO_CANCEL_OPTION);
            if (confirm==JOptionPane.YES_OPTION)
            {
                if("".equals(filename)){
                saveAs();
                }else{
                    save(filename);
                }
                setTitle(programName);
                filename="";
                textArea.setText("");
                textChanged=false;

            }
            else if(confirm == JOptionPane.NO_OPTION){
                setTitle(programName);
                textArea.setText("");
                textChanged=false;
            }
            /*setTitle("Untitled-"+programName);
            textArea.setText("");
            textChanged=false; */
        }
    }
    }


