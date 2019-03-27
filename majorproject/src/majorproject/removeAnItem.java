package majorproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;

public class removeAnItem extends javax.swing.JFrame {

    
    Connection con;
   ResultSet rs;
   PreparedStatement stmt;
    
    public removeAnItem() {
        initComponents();
        createConnection();
        Update_table();
    }
    
    void createConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/MajorProject","root","");
      
            System.out.println("Success");
            
            
        }  catch(ClassNotFoundException ex){
            Logger.getLogger(MajorProject.class.getName()).log(Level.SEVERE, null, ex);
            
        }  catch(SQLException ex){
            Logger.getLogger(MajorProject.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    private void Update_table(){
        
       try {
           String sql = "SELECT * FROM inventory";
           stmt = con.prepareStatement(sql);
           rs=stmt.executeQuery();
           inventoryTable.setModel(DbUtils.resultSetToTableModel(rs));
           
           
       } catch (Exception e) {
           JOptionPane.showMessageDialog(null,e);
       }      
        
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        inventoryTable = new javax.swing.JTable();
        deletebtn = new javax.swing.JButton();
        refreshbtn = new javax.swing.JButton();
        backbtn = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        inventoryTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(inventoryTable);

        deletebtn.setText("Delete");
        deletebtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                deletebtnActionPerformed(evt);
            }
        });

        refreshbtn.setText("Refresh");
        refreshbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                refreshbtnActionPerformed(evt);
            }
        });

        backbtn.setText("Go back");
        backbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backbtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(backbtn)
                    .addComponent(refreshbtn)
                    .addComponent(deletebtn))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 78, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 375, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGap(121, 121, 121)
                .addComponent(deletebtn)
                .addGap(46, 46, 46)
                .addComponent(refreshbtn)
                .addGap(40, 40, 40)
                .addComponent(backbtn)
                .addContainerGap(138, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void backbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backbtnActionPerformed
        dispose();
    }//GEN-LAST:event_backbtnActionPerformed

    private void refreshbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_refreshbtnActionPerformed
        Update_table();
    }//GEN-LAST:event_refreshbtnActionPerformed

    private void deletebtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_deletebtnActionPerformed
        int row = inventoryTable.getSelectedRow();
        String name = inventoryTable.getValueAt(row, 0).toString();
        
        String sqlc = "DELETE FROM inventory WHERE name = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(sqlc);
            stmt.setString(1, name);
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Delete completed");
            stmt.close();
        } 
        
        
        catch (SQLException ex) {
            Logger.getLogger(removeAnItem.class.getName()).log(Level.SEVERE, null, ex);
        }
        refreshbtn.doClick();
    }//GEN-LAST:event_deletebtnActionPerformed

  
    public static void main(String args[]) {
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new removeAnItem().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton backbtn;
    private javax.swing.JButton deletebtn;
    private javax.swing.JTable inventoryTable;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton refreshbtn;
    // End of variables declaration//GEN-END:variables
}
