CREATE TABLE `data_platform_game_counter_data`
(
  `Game`                             int(16) NOT NULL,
  `NumberOfLikes`                    int(10) DEFAULT NULL,
  `NumberOfParticipations`           int(10) DEFAULT NULL,
  `NumberOfAttendances`              int(10) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,

    PRIMARY KEY (`Game`),

    CONSTRAINT `DPFMGameCounterData_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
