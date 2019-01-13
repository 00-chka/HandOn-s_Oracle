/* Hands On 2 - Permissions */

Create User GUEST_HR
Identified By GUEST_PASSWD;

Create User GUEST_HR2
Identified By GUEST_PASSWD2;

Grant Select
On Employees
To GUEST_HR
With Grant Option;

Create Role Manager;

Drop Role Manager;