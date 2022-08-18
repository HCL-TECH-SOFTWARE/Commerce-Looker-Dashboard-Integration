# Looker-Dashboard-Integration

## WARRANTY & SUPPORT 
HCL Software provides HCL Commerce open source assets “as-is” without obligation to support them nor warranties or any kind, either express or implied, including the warranty of title, non-infringement or non-interference, and the implied warranties and conditions of merchantability and fitness for a particular purpose. HCL Commerce open source assets are not covered under the HCL Commerce master license nor Support contracts.

If you have questions or encounter problems with an HCL Commerce open source asset, please open an issue in the asset's GitHub repository. For more information about [GitHub issues](https://docs.github.com/en/issues), including creating an issue, please refer to [GitHub Docs](https://docs.github.com/en). The HCL Commerce Innovation Factory Team, who develops HCL Commerce open source assets, monitors GitHub issues and will do their best to address them. 

## HCLC Looker Dashboard Integration Asset

Proof of concept to connect HCL Commerce with Looker to create the different reports and dashboard for data analysis.  

## Looker Implementation 

- Looker Cloud 

- Looker On-prem

- Embed Dashboard in CMC

**1. Looker Cloud**

Follow the below steps

- Have an looker account on cloud 
- Once you have a account, change to developer mode and then create a database connection using DB2
- Create project and create model and views and explores using lookml language
- Refer the `LookML-model-sample` folder for the reference.. It has samples files for Commerce DB2 order data
- Save your models and go to explore section where you have create differents reports based on the views you have added in the model file.
- Once report is creted , save it as look or save in dashboard as a widget.
- Please refer `Looker_Integration` for better understanding


**2. Looker On-prem**

Please refer `Looker-on-prem-installation-GUIDE` for the installation on the local.

**3. Embed Dashboard**

Pleasse refer embed dashboard section from  `Looker_Integration` file to embed the looker dashboard in CMC 
- The Folder `EmbedDashboard-CMC` has all the code which will create all embed URL which we can add in the iframe in the CMC Menu.
- Follow the below basic steps to run the code from `EmbedDashboard-CMC`
    - Do the `npm install` from the folder to install all the dependencies
    - Run the `npm start` to run the code
    - Open the <host:port>/index.html from the browser.. It has iframe in it and has the embed URL which we can integrate in CMC
