Select*
From PortfolioPro2..Housingdata

-- Converting Sales Date to Date Format

Select SaledateConverted, Convert(Date,SaleDate)
From PortfolioPro2..Housingdata



UPDATE PortfolioPro2..Housingdata
SET SaledateConverted = Convert(Date,SaleDate)

-- Checking Null Fields

Select *
From PortfolioPro2..Housingdata
Where PropertyAddress is null
Order by ParcelID

-- Self Join to Eliminated Null fields in Property address 
SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM PortfolioPro2..Housingdata a
JOIN PortfolioPro2..Housingdata b
	On a.ParcelID = b.ParcelID
	And a.[UniqueID ] <> b.[UniqueID ]
	Where a.PropertyAddress is null

Update a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM PortfolioPro2..Housingdata a
JOIN PortfolioPro2..Housingdata b
	On a.ParcelID = b.ParcelID
	And a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null

-- Breaking out Address into individual Column (substriing and Character 
Select PropertyAddress
From PortfolioPro2..Housingdata
--Where PropertyAddress is null
--Order by ParcelID

Select
SUBSTRING(PropertyAddress, 1, CharIndex(',', PropertyAddress) -1) as Address
From PortfolioPro2..Housingdata

-- New Update

Select
SUBSTRING(PropertyAddress, 1, CharIndex(',', PropertyAddress) -1) as Address
, SUBSTRING(PropertyAddress, CharIndex(',', PropertyAddress) + 1, LEN(PropertyAddress)) as Address

From PortfolioPro2..Housingdata

-- Spliting Property Address and City

ALTER TABLE Portfoliopro2..Housingdata
Add PropertySplitAddress Nvarchar(255)


UPDATE PortfolioPro2..Housingdata 
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CharIndex(',', PropertyAddress) -1) 

ALTER TABLE Portfoliopro2..Housingdata
Add PropertySplitCity Nvarchar(255)


UPDATE PortfolioPro2..Housingdata
SET PropertySplitCity = SUBSTRING(PropertyAddress, CharIndex(',', PropertyAddress) -1, LEN(PropertyAddress))

Select*
From PortfolioPro2..Housingdata

-- Spliting Single column into Multiple Columns Using Parse name

Select OwnerAddress
From PortfolioPro2..Housingdata

Select
PARSENAME(REPLACE(OwnerAddress, ',', '.'),3)
, PARSENAME(REPLACE(OwnerAddress, ',', '.'),2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.'),1)

From PortfolioPro2..Housingdata

--- Updating Owner's Column using Parse name
ALTER TABLE Portfoliopro2..Housingdata
Add OwnerSplitAddress Nvarchar(255)


UPDATE PortfolioPro2..Housingdata 
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.'),3) 

ALTER TABLE Portfoliopro2..Housingdata
Add OwnerSplitCity Nvarchar(255)


UPDATE PortfolioPro2..Housingdata 
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.'),2)

ALTER TABLE Portfoliopro2..Housingdata
Add OwnerSplitState Nvarchar(255)


UPDATE PortfolioPro2..Housingdata
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.'),1)

Select*
From PortfolioPro2..Housingdata


-- Distinct Count of Sold As vacant 

Select Distinct (SoldAsvacant), Count(SoldAsVacant)
From PortfolioPro2..Housingdata
Group by SoldAsVacant
order by 2

Select SoldAsVacant
, Case When SoldAsVacant = 'Y' THEN 'Yes'
	 when SoldAsVacant = 'N' THEN 'No'
	 Else SoldAsVacant
	 End
From PortfolioPro2..Housingdata

Update PortfolioPro2..Housingdata
SET SoldAsVacant = Case When SoldAsVacant = 'Y' THEN 'Yes'
	 when SoldAsVacant = 'N' THEN 'No'
	 Else SoldAsVacant
	 End

	 -- Finding where There are Duplicates and removing Duplicates (rank, Order rank, Row number)
WITH RownumCTE As(
Select*,
	ROW_NUMBER() Over (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
				   UniqueID
					) row_num

From PortfolioPro2.dbo.Housingdata
--Order by ParcelID


Select*
From RownumCTE
Where row_num > 1
--Order by PropertyAddress

-- deleting Unused Column
Select*
From PortfolioPro2..Housingdata

ALTER TABLE PortfolioPro2..Housingdata
Drop Column OwnerAddress, PropertyAddress, TaxDistrict, OwnerSplitACity

ALTER TABLE PortfolioPro2..Housingdata
Drop Column SaleDate
