<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Article_Approval_Success_full</fullName>
        <description>Article Approval Success full</description>
        <protected>false</protected>
        <recipients>
            <recipient>Customer_Support_Compliant</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>C_Sports/Article_Approval_Successfull</template>
    </alerts>
    <knowledgePublishes>
        <fullName>Publish_the_Complaint_article</fullName>
        <action>PublishAsNew</action>
        <description>The action occurs after approval of the article</description>
        <label>Publish the Complaint article</label>
        <language>en_US</language>
        <protected>false</protected>
    </knowledgePublishes>
</Workflow>
