<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Closed_Case_Alert</fullName>
        <description>Closed Case Alert</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>C_Sports/Case_Closed_template</template>
    </alerts>
    <alerts>
        <fullName>Response_missing</fullName>
        <ccEmails>praveen2sahu@gmail.com</ccEmails>
        <description>Response missing</description>
        <protected>false</protected>
        <recipients>
            <recipient>bibhu_pati@infosys.com.scdemo</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>hanumantha_muddana@25demo.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kapil_maske@infosys.com.scdemo</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>praveen_sahu02@infosys.com.scdemo</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>C_Sports/Response_for_Case_Creation</template>
    </alerts>
    <alerts>
        <fullName>response_missing_SLA</fullName>
        <ccEmails>praveen2sahu@gmail.com</ccEmails>
        <description>response missing SLA</description>
        <protected>false</protected>
        <recipients>
            <recipient>bibhu_pati@infosys.com.scdemo</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>C_Sports/SupportCaseResponse</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Owner</fullName>
        <description>Change owner to Support manager</description>
        <field>OwnerId</field>
        <lookupValue>hanumantha_muddana@25demo.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Change Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Case Close Notification</fullName>
        <actions>
            <name>Closed_Case_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <description>Closed Case</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
