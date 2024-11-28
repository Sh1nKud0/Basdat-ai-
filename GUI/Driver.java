/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package anu;
import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author GITHAPATI PRABUJA KD
 */
public class Driver2 extends javax.swing.JFrame {

    /**
     * Creates new form Driver2
     */
    public Driver2() {
        initComponents();
    }
private void Clean(){
        txtId.setText("");
        txtName.setText("");
        txtRating.setText("");
    }

    //Fungsi highlight data di tabel
    private void highlightRowInTable(String id) {
    for (int i = 0; i < tblData.getRowCount(); i++) {
        // Cocokkan ID dari tabel dengan ID yang ditampilkan di field
        if (tblData.getValueAt(i, 0).toString().equals(id)) {
            tblData.setRowSelectionInterval(i, i); // Highlight baris yang sesuai
            tblData.scrollRectToVisible(tblData.getCellRect(i, 0, true)); // Scroll ke baris tersebut
            break;
        }
    }
    }

    private void ShowData (){
        try {
            st = cn.createStatement();
            rs = st.executeQuery("SELECT * FROM Driver");
            DefaultTableModel model = new DefaultTableModel();
            model.addColumn("ID");
            model.addColumn("Name");
            model.addColumn("Rating");
            
//            model.getDataVector().removeAllElements();
//            model.fireTableDataChanged();
            model.setRowCount(0);
            
            while (rs.next()) {
                Object[] row = {
                    rs.getString("driver_id"),
                    rs.getString("name"),
                    rs.getString("rating"),
                };
                model.addRow(row);
                tblData.setModel(model);
            }
        } catch (Exception e) {
        }
    }
    
    public Statement st;
    public ResultSet rs;
    Connection cn = Koneksi.BukaKoneksi();
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        btnLast = new javax.swing.JButton();
        id = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        tblData = new javax.swing.JTable();
        txtName = new javax.swing.JTextField();
        nama = new javax.swing.JLabel();
        btnDelete = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        btnClear = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnFirst = new javax.swing.JButton();
        btnInsert = new javax.swing.JButton();
        btnPrev = new javax.swing.JButton();
        txtId = new javax.swing.JTextField();
        btnnext = new javax.swing.JButton();
        txtRating = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        btnLast.setText(">>");
        btnLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLastActionPerformed(evt);
            }
        });

        id.setText("ID");

        tblData.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "ID", "Name", "Rating"
            }
        ));
        tblData.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblDataMouseClicked(evt);
            }
        });
        jScrollPane3.setViewportView(tblData);

        txtName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNameActionPerformed(evt);
            }
        });

        nama.setText("Name");

        btnDelete.setText("Delete");
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        jLabel4.setText("Rating");

        btnClear.setText("Clear");
        btnClear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnClearActionPerformed(evt);
            }
        });

        btnUpdate.setText("Update");
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });

        btnFirst.setText("<<");
        btnFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFirstActionPerformed(evt);
            }
        });

        btnInsert.setText("Insert");
        btnInsert.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInsertActionPerformed(evt);
            }
        });

        btnPrev.setText("<");
        btnPrev.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrevActionPerformed(evt);
            }
        });

        txtId.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtIdActionPerformed(evt);
            }
        });

        btnnext.setText(">");
        btnnext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnnextActionPerformed(evt);
            }
        });

        txtRating.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtRatingActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnFirst, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btnPrev, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnnext, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btnLast, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnDelete, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btnInsert, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btnClear, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(id, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(nama, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(24, 24, 24)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtId, javax.swing.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE)
                            .addComponent(txtName)
                            .addComponent(txtRating))
                        .addGap(20, 20, 20)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(id)
                            .addComponent(txtId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(nama)
                            .addComponent(txtName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(txtRating, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 109, Short.MAX_VALUE))
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(14, 14, 14)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnClear)
                        .addComponent(btnUpdate))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnInsert)
                        .addComponent(btnDelete)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnFirst)
                    .addComponent(btnPrev)
                    .addComponent(btnnext)
                    .addComponent(btnLast))
                .addGap(23, 23, 23))
        );

        pack();
    }// </editor-fold>                        

    private void btnLastActionPerformed(java.awt.event.ActionEvent evt) {                                        
        try {
            // Query untuk mengambil data pertama berdasarkan driver_id
            String query = "SELECT TOP 1 * FROM Driver ORDER BY driver_id DESC";
            PreparedStatement pst = cn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Ambil data yang ditemukan dan tampilkan di field
                txtId.setText(rs.getString("driver_id"));
                txtName.setText(rs.getString("cust_name"));
                txtRating.setText(rs.getString("address"));

                // Highlight data baru di tabel
                highlightRowInTable(rs.getString("driver_id"));
            } else {
                // Jika tidak ada data
                JOptionPane.showMessageDialog(this, "Tidak ada data.");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                       

    private void tblDataMouseClicked(java.awt.event.MouseEvent evt) {                                     
        txtId.setText(tblData.getValueAt(tblData.getSelectedRow(), 0).toString());
        txtName.setText(tblData.getValueAt(tblData.getSelectedRow(), 1).toString());
        txtRating.setText(tblData.getValueAt(tblData.getSelectedRow(), 2).toString());
 
    }                                    

    private void txtNameActionPerformed(java.awt.event.ActionEvent evt) {                                        
        // TODO add your handling code here:
    }                                       

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {                                          
        try {
            // Ambil nilai dari txtId
            String id = txtId.getText();

            // Validasi input: Pastikan txtId tidak kosong
            if (id.isEmpty()) {
                JOptionPane.showMessageDialog(this, "Masukkan ID untuk menghapus data!");
                return;
            }

            // Konfirmasi sebelum menghapus
            int confirm = JOptionPane.showConfirmDialog(this,
                "Apakah Anda yakin ingin menghapus data dengan ID: " + id + "?",
                "Konfirmasi Hapus", JOptionPane.YES_NO_OPTION);

            if (confirm == JOptionPane.YES_OPTION) {
                // Query untuk menghapus data berdasarkan driver_id
                String query = "DELETE FROM Driver WHERE driver_id = ?";
                PreparedStatement pst = cn.prepareStatement(query);
                pst.setString(1, id);

                // Eksekusi query
                int rowsAffected = pst.executeUpdate();

                if (rowsAffected > 0) {
                    JOptionPane.showMessageDialog(this, "Data berhasil dihapus!");

                    // Bersihkan field setelah penghapusan
                    Clean();

                    // Perbarui tabel dengan memanggil ShowData
                    ShowData();
                } else {
                    JOptionPane.showMessageDialog(this, "Data dengan ID tersebut tidak ditemukan.");
                }
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                         

    private void btnClearActionPerformed(java.awt.event.ActionEvent evt) {                                         
        Clean();
    }                                        

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {                                          
        try {
            // Ambil data dari input field
            String currentId = txtId.getText(); // ID yang sedang ditampilkan (sebelum perubahan)
            String newId = JOptionPane.showInputDialog(this, "Masukkan ID baru (atau tekan OK jika tidak diubah):", currentId);

            if (newId == null || newId.isEmpty()) {
                // Jika ID baru tidak dimasukkan atau dibatalkan
                JOptionPane.showMessageDialog(this, "ID tidak valid atau dibatalkan!");
                return;
            }

            String name = txtName.getText();
            String alamat = txtRating.getText();

            // Konfirmasi pengguna
            int confirm = JOptionPane.showConfirmDialog(this, "Apakah Anda yakin ingin memperbarui data?", "Konfirmasi", JOptionPane.YES_NO_OPTION);
            if (confirm == JOptionPane.YES_OPTION) {
                if (!newId.equals(currentId)) {
                    // Jika ID berubah, lakukan dua langkah:
                    // 1. Hapus data lama
                    String deleteQuery = "DELETE FROM Driver WHERE driver_id = ?";
                    PreparedStatement deletePst = cn.prepareStatement(deleteQuery);
                    deletePst.setString(1, currentId);
                    deletePst.executeUpdate();

                    // 2. Masukkan data baru dengan ID baru
                    String insertQuery = "INSERT INTO Driver (driver_id, name, rating ) VALUES (?, ?, ?)";
                    PreparedStatement insertPst = cn.prepareStatement(insertQuery);
                    insertPst.setString(1, newId);
                    insertPst.setString(2, name);
                    insertPst.setString(3, alamat);
                    insertPst.executeUpdate();
                } else {
                    // Jika ID tidak berubah, hanya lakukan pembaruan
                    String query = "UPDATE Driver SET name = ?, rating = ? WHERE driver_id = ?";
                    PreparedStatement pst = cn.prepareStatement(query);
                    pst.setString(1, name);
                    pst.setString(2, alamat);
                    pst.setString(5, currentId);
                    pst.executeUpdate();
                }

                JOptionPane.showMessageDialog(this, "Data berhasil diperbarui!");

                // Refresh data di tabel
                ShowData();
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                         

    private void btnFirstActionPerformed(java.awt.event.ActionEvent evt) {                                         
        try {
            // Query untuk mengambil data pertama berdasarkan driver_id
            String query = "SELECT TOP 1 * FROM Driver ORDER BY driver_id ASC";
            PreparedStatement pst = cn.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Ambil data yang ditemukan dan tampilkan di field
                txtId.setText(rs.getString("driver_id"));
                txtName.setText(rs.getString("name"));
                txtRating.setText(rs.getString("rating"));

                // Highlight data baru di tabel
                highlightRowInTable(rs.getString("driver_id"));
            } else {
                // Jika tidak ada data
                JOptionPane.showMessageDialog(this, "Tidak ada data.");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                        

    private void btnInsertActionPerformed(java.awt.event.ActionEvent evt) {                                          
        try {
            // Ambil data dari input field
            String id = txtId.getText();
            String name = txtName.getText();
            String alamat = txtRating.getText();
             // Validasi input
            if (id.isEmpty() || name.isEmpty() || alamat.isEmpty()) {
                JOptionPane.showMessageDialog(this, "Semua field harus diisi!");
                return;
            }

            // Query untuk insert data ke database
            String query = "INSERT INTO Driver (driver_id, cust_name, address, phone_number, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = cn.prepareStatement(query);
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, alamat);

            // Eksekusi query
            pst.executeUpdate();
            JOptionPane.showMessageDialog(this, "Data berhasil ditambahkan!");

            // Bersihkan input field setelah insert
            Clean();

            // Perbarui tabel dengan memanggil ShowData
            ShowData();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                         

    private void btnPrevActionPerformed(java.awt.event.ActionEvent evt) {                                        
        try {
            // Ambil ID yang sedang ditampilkan di txtId
            String currentId = txtId.getText();

            // Query untuk mengambil data selanjutnya berdasarkan driver_id
            String query = "SELECT * FROM Driver WHERE driver_id < ? ORDER BY driver_id DESC";
            PreparedStatement pst = cn.prepareStatement(query);
            pst.setString(1, currentId); // Filter berdasarkan ID yang sedang ditampilkan

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Ambil data yang ditemukan dan tampilkan di field
                txtId.setText(rs.getString("driver_id"));
                txtName.setText(rs.getString("cust_name"));
                txtRating.setText(rs.getString("address"));

                // Highlight data baru di tabel
                highlightRowInTable(rs.getString("driver_id"));
            } else {
                // Jika tidak ada data berikutnya
                JOptionPane.showMessageDialog(this, "Tidak ada data berikutnya.");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                       

    private void txtIdActionPerformed(java.awt.event.ActionEvent evt) {                                      
        // TODO add your handling code here:
    }                                     

    private void btnnextActionPerformed(java.awt.event.ActionEvent evt) {                                        
        try {
            // Ambil ID yang sedang ditampilkan di txtId
            String currentId = txtId.getText();

            // Query untuk mengambil data selanjutnya berdasarkan driver_id
            String query = "SELECT * FROM Driver WHERE driver_id > ? ORDER BY driver_id ASC";
            PreparedStatement pst = cn.prepareStatement(query);
            pst.setString(1, currentId); // Filter berdasarkan ID yang sedang ditampilkan

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Ambil data yang ditemukan dan tampilkan di field
                txtId.setText(rs.getString("driver_id"));
                txtName.setText(rs.getString("cust_name"));
                txtRating.setText(rs.getString("address"));

                // Highlight data baru di tabel
                highlightRowInTable(rs.getString("driver_id"));
            } else {
                // Jika tidak ada data berikutnya
                JOptionPane.showMessageDialog(this, "Tidak ada data berikutnya.");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Error: " + e.getMessage());
        }
    }                                       

    private void txtRatingActionPerformed(java.awt.event.ActionEvent evt) {                                          
        // TODO add your handling code here:
    }                                         

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
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
            java.util.logging.Logger.getLogger(Driver2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Driver2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Driver2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Driver2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Driver2().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton btnClear;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnFirst;
    private javax.swing.JButton btnInsert;
    private javax.swing.JButton btnLast;
    private javax.swing.JButton btnPrev;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JButton btnnext;
    private javax.swing.JLabel id;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JLabel nama;
    private javax.swing.JTable tblData;
    private javax.swing.JTextField txtId;
    private javax.swing.JTextField txtName;
    private javax.swing.JTextField txtRating;
    // End of variables declaration                   
}
