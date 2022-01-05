public class helperr {
@future
public static void forperset(Set<Id> userIds)
{
PermissionSet permset=[SELECT Id,Name FROM PermissionSet WHERE Name='Marketing_User_Permissions' LIMIT 1 ];
List<PermissionSetAssignment> newpermmission = new List<PermissionSetAssignment>();
for(Id userId:userIds)
{
PermissionSetAssignment Pa=new PermissionSetAssignment();
Pa.PermissionSetId=permset.Id;
Pa.AssigneeId=userId;
newpermmission.add(Pa);

}
if(newpermmission != null)
{
insert newpermmission;
}
}

}