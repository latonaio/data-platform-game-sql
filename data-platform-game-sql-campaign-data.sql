CREATE TABLE `data_platform_game_campaign_data`
(
    `Game`                           int(16) NOT NULL,
    `Campaign`                       int(16) NOT NULL,
    `CreationDate`                   date NOT NULL,
    `LastChangeDate`                 date NOT NULL,
    `IsReleased`                     tinyint(1) DEFAULT NULL,
    `IsCancelled`                    tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Game`, `Campaign`),
    
    CONSTRAINT `DPFMGameCampaignData_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`),
    CONSTRAINT `DPFMGameCampaignDataCampaign_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
