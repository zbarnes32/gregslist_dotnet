CREATE TABLE 
  IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) UNIQUE COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';


CREATE TABLE
  houses (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    price INT UNSIGNED NOT NULL,
    year SMALLINT UNSIGNED NOT NULL,
    bedrooms TINYINT UNSIGNED NOT NULL,
    bathrooms TINYINT UNSIGNED NOT NULL,
    description TEXT,
    imgUrl TEXT NOT NULL,
    creatorId VARCHAR(255) NOT NULL,
    FOREIGN KEY (creatorId) REFERENCES accounts (id) ON DELETE CASCADE
  );

  SELECT * FROM accounts WHERE id = "66a01f1b3c6756484d577837"

  SELECT houses.*, accounts.* FROM houses JOIN accounts ON accounts.id = houses.creatorId;


  INSERT INTO
    houses (
      price,
      year,
      bedrooms,
      bathrooms,
      description,
      imgUrl,
      creatorId
    )
    VALUES
    (
      "10750000",
      "2024",
      "5",
      "5",
      "Mini mansion",
      "https://plus.unsplash.com/premium_photo-1661954372617-15780178eb2e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWFuc2lvbnxlbnwwfHwwfHx8MA%3D%3D",
      "66a01f1b3c6756484d577837"
    )