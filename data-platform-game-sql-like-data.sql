CREATE TABLE `data_platform_game_like_data`
(
  `Game`                     int(16) NOT NULL,
  `BusinessPartner`          int(12) NOT NULL,
  `Like`                     tinyint(1) DEFAULT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,
  `LastChangeDate`           date NOT NULL,
  `LastChangeTime`           time NOT NULL,

    PRIMARY KEY (`Game`, `BusinessPartner`),

    CONSTRAINT `DPFMGameLikeData_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`),
    CONSTRAINT `DPFMGameLikeDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
