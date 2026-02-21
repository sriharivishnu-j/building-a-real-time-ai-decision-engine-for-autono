package com.financial;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RestController
public class AnomalyDetectionService {

    private static final Logger logger = LoggerFactory.getLogger(AnomalyDetectionService.class);

    @GetMapping("/detect-anomalies")
    public String detectAnomalies() {
        logger.info("Starting anomaly detection");
        try {
            // Anomaly detection logic
            return "Anomalies detected successfully";
        } catch (Exception e) {
            logger.error("Anomaly detection failed", e);
            return "Anomaly detection failed";
        }
    }
}