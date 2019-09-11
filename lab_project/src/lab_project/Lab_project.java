/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab_project;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.sql.*;

/**
 *
 * @author Annu
 */
public class Lab_project {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws UnknownHostException, SocketException, SQLException, IOException {
        String mac = GetNetworkAddress.getMacAddress();
        
        Socket sock = null;
        sock = new Socket("192.168.43.252",5484);
        DataOutputStream dos = null;
        DataInputStream dis = null;
        dos = new DataOutputStream(sock.getOutputStream());
        dis =new DataInputStream(sock.getInputStream());
        dos.writeUTF("phone");   
        dos.writeUTF("filename");
        dos.writeUTF(mac);
        
        
        if(!dis.readUTF().equals("####"))
        {
            java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NewJFrame().setVisible(true);
                }
            });
        }
        else
        {
            java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new sender().setVisible(true);
            }
        });
        }
    }
    
}