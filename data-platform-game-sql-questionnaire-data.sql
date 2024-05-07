CREATE TABLE `data_platform_game_questionnaire_data`
(
  `Game`                     int(16) NOT NULL,
  `Respondent`               int(12) NOT NULL,
  `Questionnaire`            int(20) NOT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,

    PRIMARY KEY (`Game`, `Respondent`),

    CONSTRAINT `DPFMGameQuestionnaireData_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`),
    CONSTRAINT `DPFMGameQuestionnaireDataRespondent_fk` FOREIGN KEY (`Respondent`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMGameQuestionnaireDataQuestionnaire_fk` FOREIGN KEY (`Questionnaire`) REFERENCES `data_platform_questionnaire_header_data` (`Questionnaire`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
