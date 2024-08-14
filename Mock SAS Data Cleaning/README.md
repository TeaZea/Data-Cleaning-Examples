# Mock SAS Data Cleaning
### TLDR;
This is an example of a program that is used on a regular basis to clean dirty data. The example utelizes a fake dataset from [mockaroo](https://www.mockaroo.com/). The model uses similar attributes and types of values to it's real world application. The main purpose is to do a basic clean of the data; removing any duplicates and unnecessary columns and leaving a condensed list of POs that would need to be cross-referenced with a seperate dataset.

---

### Setup
Simply download both the .sas and the dataset, then upload the file into SAS Studio.

---

### Quick Preamble
The mock code shows duplicate POs attributed to different vendor numbers. In real world application, this would not be the case. The reason the mock code is like this is honestly it's too much of a hassle to put logic into the fake dataset to replicate the real world to a T. The program still does it's job of cleaning and sorting the data. The mock data is also quite larger than what would normally be used in a normalworld scenario.

---

### Dataset
> [!NOTE]
> The photo doesn't show the entirety of the dataset.
![dataset used for analysis](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/SASRawMockData.jpg)

This is a replica of dirty data this program is used to cleaning, albeit larger than what it normally handels. There are no columns, so column names will have to be input and formatted manually. Where there are emails and fake ip addresses, there would be products, product codes and even their coresponding SKUs.

---

### Overview of the Code
First thing is to input the data and name any variables (columns). After which, formatting the variables are necessary.



---

### Challenges
