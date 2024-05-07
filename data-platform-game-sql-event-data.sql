CREATE TABLE `data_platform_game_event_data`
(
    `Game`                          int(16) NOT NULL,
    `Event`                         int(16) NOT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsReleased`                    tinyint(1) DEFAULT NULL,
    `IsCancelled`                   tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Game`, `Event`),
    
    CONSTRAINT `DPFMGameEventData_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`),
    CONSTRAINT `DPFMGameEventDataEvent_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
