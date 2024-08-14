# Mock SAS Data Cleaning
### TLDR;
This is an example of a script that is used on a regular basis to clean dirty data. The example utelizes a fake dataset from [mockaroo](https://www.mockaroo.com/). The model uses similar attributes and types of values to it's real world application. The main purpose is to do a basic clean of the data; removing any duplicates and unnecessary columns and leaving a condensed list of POs that would need to be cross-referenced with a seperate dataset.

---

### Setup
Simply [download both the .sas](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/mock%20SAS%20data%20clean.sas) and the [dataset](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/MOCK_DATA.csv), then upload the files into SAS Studio.

---

### Quick Preamble
The mock data shows duplicate POs attributed to different vendor numbers. In real world application, this would not be the case. The reason the mock code is like this is that it's too much of a hassle to put logic into the fake dataset to replicate the real world to a T. The script still does it's job of cleaning and sorting the data.

---

### Dataset
> [!NOTE]
> The photo doesn't show the entirety of the dataset.
![dataset used for analysis](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/SASRawMockData.jpg)

This is a replica of dirty data this script cleans, albeit larger than what it normally handels. There are no columns, so column names will have to be input and formatted manually. Where there are emails and fake ip addresses, there would be products, product codes and even their coresponding SKUs.

---

### Overview of the Code
First thing is to input the data and name any variables (columns), after which, we must format certain variables.

![Formating variables](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/FormatVariables.jpg)

Formatting is necessary as both SAS and Excel use different integers to [represent different dates within their code](https://support.sas.com/resources/papers/proceedings/proceedings/sugi29/068-29.pdf). SAS date formats can only convert values that are integers. Since SAS wants to input the _po_date_ and _po_eta_ as chars by default, we need to create a dummy variable with the format we want the data to take. Then use **_INPUT()_** to convert chars into ints as we move them to our new variable (which will then automatically inherit it's format). We then drop the old variable to clean up our table.

![New columns](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/NewVariables.jpg)

Finally dropping unnecessary columns, labeling ones that are needed, and sorting the data by PO numbers put the finishing touches on the report.

![Mock Report](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/MockReport.jpg)

---

### Challenges
The biggest challenge (embarissingly enough) was rembering to add a length to the columns that held what would be date values. The fuss that SAS makes in regards to converting date formats from Excel is often over looked and after a couple of hours trying to find a proper way of doing this, it ended up only needed 3 lines of code to fix the issue.

![Challenge](https://github.com/TeaZea/Data-Cleaning-Examples/blob/main/Mock%20SAS%20Data%20Cleaning/SAS%20Data%20Clean%20README%20Pics/Challenge.jpg)

The issue with the date values was the biggest issue simply because they weren't showing fully. When they were shown, because of the original input formats of the values, they would show incorrectly. This is why they needed to be duplicated and converted to a format SAS could properly work with.

---

### Future Iterations
Of course, the easiest way to improve on this cleaning script is to run SAS on an enterprise level from a local machine. That way there can be full integration with local directories to schedule batch uploads using a process flows, local/cloud databases and python.
