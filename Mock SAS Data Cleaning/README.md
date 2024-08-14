# Mock SAS Data Cleaning
### TLDR;
This is an example of a script that is used on a regular basis to clean dirty data. The example utelizes a fake dataset from [mockaroo](https://www.mockaroo.com/). The model uses similar attributes and types of values to it's real world application. The main purpose is to do a basic clean of the data; removing any duplicates and unnecessary columns and leaving a condensed list of POs that would need to be cross-referenced with a seperate dataset.

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

![Formating variables](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/FormatVariables.jpg)

Formatting is necessary as both SAS and Excel use different integers to [represent different dates within their code](https://support.sas.com/resources/papers/proceedings/proceedings/sugi29/068-29.pdf). SAS date formats can only convert values that are integers. Since SAS input the _po_date_ and _po_eta_ as chars by default, we need to create a dummy variable with the format we want the data to take. Then use **_INPUT()_** to convert chars into int as we move them to our new variable. We then drop the old variable to clean up our table.

![New columns](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/NewVariables.jpg)

Dropping unnecessary columns, labeling ones we need, and sorting the data by PO numbers put the finishing touches on the report.



---

### Challenges


---

### Future Iterations
Of course, if the easiest way to improve on this cleaning script is to run SAS on an enterprise level from a local machine. That way there can be full integration with local directories to schedule batch uploads using a process flows, local/cloud databases and python.
