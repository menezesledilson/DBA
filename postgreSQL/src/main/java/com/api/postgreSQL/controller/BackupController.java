package com.api.postgreSQL.controller;


import com.api.postgreSQL.service.DatabaseBackupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
@RequestMapping("/api")
public class BackupController {

    @Autowired
    private DatabaseBackupService backupService;

    @GetMapping("/backup")
    public ResponseEntity<String> backupDatabase() {
        try {
            backupService.backupDatabase();
            return ResponseEntity.ok("Backup realizado com sucesso!");
        } catch (IOException e) {
            return ResponseEntity.status(500).body("Erro ao realizar backup: " + e.getMessage());
        }
    }
}

