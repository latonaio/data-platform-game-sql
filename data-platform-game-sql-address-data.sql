CREATE TABLE `data_platform_game_address_data`
(
    `Game`                    int(16) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalSubRegion`          varchar(6) NOT NULL,
    `LocalRegion`             varchar(3) NOT NULL,
    `Country`                 varchar(3) NOT NULL,
    `GlobalRegion`            varchar(3) NOT NULL,
    `TimeZone`                varchar(3) NOT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    `XCoordinate`             float(20) DEFAULT NULL,
    `YCoordinate`             float(20) DEFAULT NULL,
    `ZCoordinate`             float(20) DEFAULT NULL,
    `Site`                    int(16) DEFAULT NULL,
    
    PRIMARY KEY (`Game`, `AddressID`),
    
    CONSTRAINT `DPFMGameAddressData_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`),
    CONSTRAINT `DPFMGameAddressDataPostalCode_fk` FOREIGN KEY (`PostalCode`, `Country`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `Country`),
    CONSTRAINT `DPFMGameAddressDataLocalSubRegion_fk` FOREIGN KEY (`LocalSubRegion`, `LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`),
    CONSTRAINT `DPFMGameAddressDataLocalRegion_fk` FOREIGN KEY (`LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_region_data` (`LocalRegion`, `Country`),
    CONSTRAINT `DPFMGameAddressDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMGameAddressDataGlobalRegion_fk` FOREIGN KEY (`GlobalRegion`) REFERENCES `data_platform_global_region_global_region_data` (`GlobalRegion`),
    CONSTRAINT `DPFMGameAddressDataTimeZone_fk` FOREIGN KEY (`TimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DPFMGameAddressDataDistrict_fk` FOREIGN KEY (`District`, `Country`) REFERENCES `data_platform_district_district_data` (`District`, `Country`),
    CONSTRAINT `DPFMGameAddressDataSite_fk` FOREIGN KEY (`Site`) REFERENCES `data_platform_site_header_data` (`Site`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
