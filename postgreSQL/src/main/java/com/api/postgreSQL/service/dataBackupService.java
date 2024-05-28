package com.api.postgreSQL.service;

import org.apache.tomcat.websocket.ReadBufferOverflowException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

@Service
public class dataBackupService {

    public void backupDatabase() throws IOException {

        //Caminho do backup
        String backupDir = "D:\\DEVMEDIA\\BACK_END\\DBA\\teste\\backup";
        String backupFile = backupDir + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_backup.sql";
        String[] cmd = {
                "pg_dump",
                "-h", "localhost",
                "-p", "5432",
                "-U", "admin",
                "-F", "c",
                "-b",
                "-v",
                "-f", backupFile,
                "controlepessoal"
        };
        ProcessBuilder pb = new ProcessBuilder(cmd);
        pb.environment().put("PGPASSWORD", "admin");
        Process process = pb.start();

        try {
            int exitCode = process.waitFor();
            if (exitCode != 0) {
                throw new RuntimeException("O processo de backup falhou.");
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("O processo de backup foi interrompido");
        }

    }
}
