# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZAuto;
use strict;
use warnings;
no warnings 'redefine';
use utf8;
sub Load {
    my ($File, $Self) = @_;
$Self->{'Ticket::Frontend::AgentTicketEmailOutbound'}->{'RichTextWidth'} =  '760';
$Self->{'Ticket::Frontend::AgentTicketForward'}->{'RichTextHeight'} =  '320';
$Self->{'Ticket::Frontend::AgentTicketForward'}->{'RichTextWidth'} =  '760';
$Self->{'PostMaster::PreFilterModule::NewTicketReject::Body'} =  'Dear Customer,

Unfortunately we could not detect a valid ticket number
in your subject, so this email can\'t be processed.

Please create a new ticket via the customer panel.

Thanks for your help!

 Your Helpdesk Team';
$Self->{'Frontend::Module'}->{'AgentTicketEmail'} =  {
  'Description' => 'Create new email ticket',
  'Loader' => {
    'JavaScript' => [
      'Core.Agent.CustomerSearch.js',
      'Core.Agent.TicketAction.js'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => 'm',
      'Block' => '',
      'Description' => 'Create new email ticket and send this out (outbound)',
      'Link' => 'Action=AgentTicketEmail',
      'LinkOption' => '',
      'Name' => 'New email ticket',
      'NavBar' => 'Ticket',
      'Prio' => '210',
      'Type' => ''
    },
    {
      'AccessKey' => 'n',
      'Block' => '',
      'Description' => 'BDR ODS',
      'Group' => [
        'bdr_ods_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Subject=Emissions%20low;Dest=12%7C%7CBDR+requests%3A%3AODS+for+ETC;Body=Dear+Mr.%2FMs.+XX%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+very+much+for+submitting+an+ods+report+for+your+company.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AWhen+going+deeper+into+your+report+we+recognized+that+your+company%27s+emissions+seem+very+low.+Due+to%26nbsp%3Btechnical+challenges+concerning+the+measurement+of+feedstock+and+process+agent+use+emissions%2C+emissions+of%26nbsp%3B0.1%25+of+the+overall+feedstock+or+process+agent+uses+need+to+be+reported+as+a+minimum.+In+some+cases+lower+emissions+will+also+be+accepted+if+the+company+can+prove+lower+emissions+on+the+basis+of%26nbsp%3Bmore+precise%26nbsp%3Bmeasurement+instruments+or+control+systems.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AWe+kindly+ask+you+clarify+this+issue+and%2For+resubmit+your+report.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AHere+some+hints+for+a+speedy+resubmission%3A%3Cbr+%2F%3E%0D%0AStep+1%3A+Create+a+new+envelope+and+make+sure+that+you+indicate+in+the+title+and+the+description+of+your+envelope+that+this+is+a+new+version.%26nbsp%3B%3Cbr+%2F%3E%0D%0AStep+2%3A+Browse+into+the+newly+created+envelope%2C+activate+the+Draft+task+and+click+on+the+%E2%80%9CCopy+previous+delivery%E2%80%9D+button+in+the+top+right+corner.%3Cbr+%2F%3E%0D%0AStep+3%3A+Click+on+%27Modify%26nbsp%3Bthe%26nbsp%3B%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fwebq%2FWebQMenu%3Flanguage%3DEn%26amp%3Benvelope%3Dhttps%3A%2F%2Fbdr.eionet.europa.eu%2Fods%2Fro%2Fods30000%2Fenvvttnhq%26amp%3Bobligation%3Dhttp%3A%2F%2Frod.eionet.europa.eu%2Fobligations%2F213%26amp%3Bschema%3Dhttp%3A%2F%2Fdd.eionet.europa.eu%2Fschemas%2Fods%2FODSReport.xsd%26amp%3BcompanyId%3Dods30000%22+target%3D%22_blank%22%3EOzone+Depleting+Substances+%28ODS%29+reporting%3C%2Fa%3E%26nbsp%3Bquestionnaire%27%26nbsp%3Band+perform+changes%3Cbr+%2F%3E%0D%0AStep+4%3A%26nbsp%3BClick+on+%27Submit+to+DG+Clima%27%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease+do+not+hesitate+should+you+have+any+further+questions+or+comments.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AKind%26nbsp%3Bregards%2C',
      'LinkOption' => '',
      'Name' => 'New emissions low template ticket [ODS]',
      'NavBar' => 'Ticket',
      'Prio' => '211',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR ODS',
      'Group' => [
        'bdr_ods_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Subject=Recipient%20missing;Dest=12%7C%7CBDR+requests%3A%3AODS+for+ETC;Body=Dear+Mr.%2FMs.+XX%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0Athank+you+very+much+for+submitting+an+ods-report+for+your+company.%3Cbr+%2F%3E%0D%0AWhen+going+deeper+into+your+report%2C+we+recognized%2C+that+the+recipient+is+missing+in+table+10+%28Placing+on+the+EU+market+during+the+reporting+year%29.+We+recognized%2C+that+you+summarized+all+placing%E2%80%99s+on+the+EU+market%2C+although+all+transactions+and+their+recipients+should+be+reported+individually.%3Cbr+%2F%3E%0D%0AWe+kindly+ask+you+to+correct+this+issue+and+resubmit+your+report%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AHere+some+hints+for+a+speedy+resubmission%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AStep+1%3A+Create+a+new+envelope+and+make+sure+that+you+indicate+in+the+title+and+the+description+of+your+envelope+that+this+is+a+new+version.%26nbsp%3B%3Cbr+%2F%3E%0D%0AStep+2%3A+Browse+into+the+newly+created+envelope%2C+activate+the+Draft+task+and+click+on+the+%E2%80%9CCopy+previous+delivery%E2%80%9D+button+in+the+top+right+corner.%3Cbr+%2F%3E%0D%0AStep+3%3A+Click+on+%27Modify%26nbsp%3Bthe%26nbsp%3B%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fwebq%2FWebQMenu%3Flanguage%3DEn%26amp%3Benvelope%3Dhttps%3A%2F%2Fbdr.eionet.europa.eu%2Fods%2Fro%2Fods30000%2Fenvvttnhq%26amp%3Bobligation%3Dhttp%3A%2F%2Frod.eionet.europa.eu%2Fobligations%2F213%26amp%3Bschema%3Dhttp%3A%2F%2Fdd.eionet.europa.eu%2Fschemas%2Fods%2FODSReport.xsd%26amp%3BcompanyId%3Dods30000%22+target%3D%22_blank%22%3EOzone+Depleting+Substances+%28ODS%29+reporting%3C%2Fa%3E%26nbsp%3Bquestionnaire%27%26nbsp%3Band+enter+the+recipient%28s%29+in+table+10%3Cbr+%2F%3E%0D%0AStep+4%3A%26nbsp%3BClick+on+%27Submit+to+DG+Clima%27%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease+do+not+hesitate+should+you+have+any+further+questions+or+comments.%3Cbr+%2F%3E%0D%0AThank+you+and+best+regards%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AJohannes+Bender',
      'LinkOption' => '',
      'Name' => 'New recipient missing template ticket [ODS]',
      'NavBar' => 'Ticket',
      'Prio' => '212',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR ODS',
      'Group' => [
        'bdr_ods_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Subject=Accounting%20framework%20mismatch;Dest=12%7C%7CBDR+requests%3A%3AODS+for+ETC;Body=Dear+Mr.%2FMs.+XX%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0Athank+you+very+much+for+submitting+an+ods-report+for+reporting+year+2014.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AWhen+going+deeper+into+your+report+we+recognized%2C+that+your+accounting+framework+is+mismatching.+%26nbsp%3B%3Cbr+%2F%3E%0D%0AQuantities+received%2C+imported%2C+produced+and+in+stock+at+1+January+of+the+reporting+year+should+equal+quantities+placed+on+the+market%2C+exported%2C+used%2C+destroyed+and+in+stock+at+the+end+of+the+year.+The+accounting+framework+should+be+zero.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AWe+kindly+ask+you+clarify+this+issue+and+resubmit+your+report.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+and+best+regards%2C',
      'LinkOption' => '',
      'Name' => 'New accounting framework mismatch template ticket [ODS]',
      'NavBar' => 'Ticket',
      'Prio' => '213',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR ODS',
      'Group' => [
        'bdr_ods_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Subject=NIL%20report;Dest=12%7C%7CBDR+requests%3A%3AODS+for+ETC;Body=Dear+Sir+or+Madam%2C<br+%2F>+<br+%2F>Thank+you+very+much+for+submitting+an+NIL+report+for+ODS+reporting+year+2014.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AWe+looked+into+your+report+and+kindly+would+like+to+ask+you+to+include+a+comment+explaining+why+your+company+submitted+an+NIL+report+and+why+you+are+not+obliged+to+submit+a+data+report.+This+might+also+be+just+a+short+note+like+%22We+did+not+import%2C+export%2C+destroy+or+produce+ozone+depleting+substances+in+reporting+year+2014%22.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+in+advance+and+kind+regards%3Cbr+%2F%3E',
      'LinkOption' => '',
      'Name' => 'New accounting framework mismatch template ticket [ODS]',
      'NavBar' => 'Ticket',
      'Prio' => '214',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=General+QC+issue;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%5BINSERT+ISSUE%5D%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New general QC issue ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '215',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Subject=QC+issue+export;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Body=Dear+Sir%2F+Madam%3Cbr+%2F%3Ethank+you+for+your+revised+report+submitted+at%3Cbr+%2F%3E%C2%A0%3Cbr+%2F%3E%5Binsert+URL%5D%3Cbr+%2F%3E%3Cbr+%2F%3EIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cul%3E%3Cli%3EYou+report+in+section+6A+as+intended+application+%22Export%22+the+same+amounts+which+you+report+in+section+3A+%28Exports%29+%26+3C+%28Exports+of+amounts+purchased+within+the+EU%29.%3C%2Fli%3E%3C%2Ful%3EThis+does+not+appear+plausible%3A%3Cul%3E%3Cli%3EReporting+in+section+6+A+would+be+expected+if+you+supply+the+F-gases+imported%2Fproduced+by+yourselves+to+a+third+party+which+would+export+these+quantities.+If+this+is+not+the+case+you+should+report+100%25+of+the+amounts+calculated+in+line+6X+for+%22your%22+intended+application%3Cbr+%2F%3E%3Cbr+%2F%3E%5Binsert+IA%3A+6D+Refrigeration%5D%3Cbr+%2F%3E%C2%A0%3C%2Fli%3E%3Cli%3EYour+reporting+in+section+3+is+correct+in+case+your+exports+were+actually+purchased+on+the+EU+market%3C%2Fli%3E%3Cli%3EIn+case+your+exports+were+in+fact%C2%A0+re-exports+of+parts+of+your+own+imports+you+should+report+the+same+amounts+in+3B%2C+as+well.+Note+that+this+would+alter+the+values+calculated+in+section+6X%C2%A0%3C%2Fli%3E%3C%2Ful%3EPlease%2C+confirm+the+data+reported+so+far+OR%3Cbr+%2F%3Esubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%C2%A0%3Cbr+%2F%3EThe+easiest+way+to+do+so+would+be%C2%A0+to%3Cul%3E%3Cli%3E%C2%A0%C2%A0+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%3Cli%3E%C2%A0%C2%A0+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%3Cli%3E%C2%A0%C2%A0+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%C2%A0+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%3Cli%3E%C2%A0%C2%A0+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%3Cli%3E%C2%A0+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%3Cli%3E%C2%A0%C2%A0+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%3C%2Ful%3E%28cf+.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases+%29%3Cbr+%2F%3E%3Cbr+%2F%3E%C2%A0',
      'LinkOption' => '',
      'Name' => 'New Intended application: export template ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '216',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Text+on+6X+vs+6W+principle;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThere+may+be+an+issue+with+the+data+in+your+report+under+6X%3Cbr+%2F%3E%0D%0AIn+the+logic+of+the%26nbsp%3Breporting+scheme%2C+6X+defines+the+amount+for+which+you+are+requested+to+report+your+best+available+knowledge+on+intended+applications+in+6A+through+6V.+6W+is+the+sum+of+6A-6V+and+must+equal+6X.%3Cbr+%2F%3E%0D%0A6X+is+calculated+based+on+the+data+you+provided+in+section+1-4+on+production%2C+import%2C+export+and+stocks.+6X+represents+the+amount+of+bulk+F-gases+supplied+to+the+EU+market+in+2014+AND+placed+on+the+market+by+your+company+in+2014+or+in+earlier+years+%28or+reclaimed%29+by+your+company.+%28You%27ll+note+that+the+formulas+for+calculating+6X+and+4M+are+similar+but+differ+in+the+accounting+for+stocks+and+reclamation.%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThus%2C+your+EU+sales+of+F-gases+which+you+had+purchased+within+the+EU+%28i.e.+amounts+which+had+been+placed+on+the+EU+market+for+the+1st+time+by+another+company%29+are+not+included+in+6X+and+should+thus+not+be+included+in+your+reported+numbers+for+6A-6V.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New text on 6X vs 6W principle ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '217',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Text+on+6A;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThere+may+be+an+issue+with+the+data+in+your+report+under+6A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0ASpecifically+on+6A%3A+you+should+report+here%2C+if+you+imported+F-gases%2C+supplied+those+gases+to+another+company+which%2C+according+to+your+knowledge+was+going+to+export+those+amount+as+bulk+gases.+In+case+your+customer+used+the+F-gases+for+charging+products%2Fequipment+which+are+then+exported%2C+please+report+as+intended+application+according+to+the+type+of+product%2Fequipment%2C+e.g.+6D+Refrigeration+%26amp%3B+air-conditioning.%3Cbr+%2F%3E%0D%0APlease+do+not+report+on+your+own+exports+in+6A.+For+your+own+exports+please+only+use+3A+%28and%2C+in+case+applicable+for+your+situation%2C+3B%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New text on 6A ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '218',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=QC+issue+6A;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EFor+some+gases+you+report+on+own+imports+%282A%29%2C+own+exports+%283A%29+and+own+imports+supplied+to+other+companies+for+exports+%286A%29%3C%2Fli%3E%0D%0A%09%3Cli%3EWe+wonder+if+this+may+be+an+error.%3C%2Fli%3E%0D%0A%09%3Cli%3EYour+activities+in+2014+as+reported+would+look+like+this%3A+You+imported+gas+and+supplied+a+part+of+those+gases+to+another+company+for+export.+Furthermore+you+purchased+gases+from+other+companies+within+the+EU+and+exported+those+amounts+yourselves.+In+case+this+story+reflects+your+activities+in+2014%2C+your+report+is+fine.%3C%2Fli%3E%0D%0A%09%3Cli%3EHowever%2C+in+case+you+actually+imported+gases+and+re-exported+parts+of+those+amounts%2C+you+should+report+differently%3A%0D%0A%09%3Cul%3E%0D%0A%09%09%3Cli%3Edelete+the+amounts+reported+in+6A%3C%2Fli%3E%0D%0A%09%09%3Cli%3Einsert+the+same+amounts+in+3B%2C+instead%3C%2Fli%3E%0D%0A%09%3C%2Ful%3E%0D%0A%09%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New QC issue 6A ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '219',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Feedstock+use+7A+%28for+incorrectly+reported+feedstock+use%2C+no+other+activities%29;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+section+7A+you+reported+on+feedstock+use+for+gases+which+are+uncommon+for+feedstock+use.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AAs+defined+by+the+F-Gas+Regulation+517%2F2014%2C+%E2%80%9Ca+feedstock+is+any+substance+that+undergoes+chemical+transformation+in+a+process+by+which+the+chemical+is+entirely+converted+from+its+original+composition+and+whose+emissions+are+insignificant%E2%80%9D.+Please+note+that+foam+blowing+is+not+considered+feedstock+use+as+there+is+no+chemical+conversion.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease+provide+a+short+explanation+what+specifically+your+feedstock+use+is.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+conclude+that+your+activities+are+not+feedstock+use+under+Regulation+517%2F2014+you+should+not+report+in+section+7A+at+all.%3Cbr+%2F%3E%0D%0AAs+this+use+was+your+single+reported+activity%2C+you+are+requested+to+submit+a+NIL+Report+in+that+case.%3Cbr+%2F%3E%0D%0AFor+that+purpose+please%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ELog+into+the+BDR+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2F%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2F%3C%2Fa%3E+using+your+ECAS+credentials+for+the+F-gases+portal%2FHFC+Registry+and+access+your+company+folder.%3C%2Fli%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+and+open+it%3C%2Fli%3E%0D%0A%09%3Cli%3EClick%3A+%E2%80%9C%3Cu%3EActivate+task%3A+Draft%E2%80%9D%3C%2Fu%3E%3C%2Fli%3E%0D%0A%09%3Cli%3EClick%3A+%E2%80%9CAdd+and+edit+a+%3Cu%3EFluorinated+gases+%28F-gases%29+reporting%3C%2Fu%3E+questionnaire%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EConfirm+your+company+contact+data%3C%2Fli%3E%0D%0A%09%3Cli%3EClick%3A+%E2%80%9CI+do+not+wish+to+report+on+company+affiliations%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3ETick+the+box+%E2%80%98Not+obliged+to+report+%28NIL+report%29%E2%80%99+in+the+activity+selection%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New feedstock use 7A (for incorrectly reported feedstock use, no other activities) ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '221',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Text+on+Feedstock+use+7A+%28if+also+other+activities%29;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+section+7A+you+reported+on+feedstock+use+for+gases+which+are+uncommon+for+feedstock+use.+Please+provide+a+short+explanation+what+specifically+your+feedstock+use+is.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AAs+defined+by+the+F-Gas+Regulation+517%2F2014%2C+%E2%80%9Ca+feedstock+is+any+substance+that+undergoes+chemical+transformation+in+a+process+by+which+the+chemical+is+entirely+converted+from+its+original+composition+and+whose+emissions+are+insignificant%E2%80%9D.+%3Cstrong%3EPlease+note+in+particular+that+foam+blowing+is+not+considered+feedstock+use%3C%2Fstrong%3E.+In+case+you+conclude+that+your+activities+are+no+feedstock+use+under+Regulation+517%2F2014+you+should+not+report+in+section+7A+at+all.%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+submit+a+revised+report+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New text on Feedstock use 7A (if also other activities) ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '222',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Text+on+2A+equalling+sum+of+11;Body=You+report+the+same+amounts+as+bulk+imports+in+section+2A+and+as+import+within+equipment+in+section+11.We+suspect+this+may+have+been+a+misunderstanding.+As+an+importer+of+products%2Fequipment+containing+F-gases+you+should+only+report+in+section+11%2C+not+in+section+2.',
      'LinkOption' => '',
      'Name' => 'New text on 2A equalling sum of 11 ticket ticket [Fgas]',
      'NavBar' => 'Ticket',
      'Prio' => '223',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=QC+issue+11Q+product+category+instead+of+RACHP;Body=%3Cp%3EDear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3C%2Fp%3E%0D%0A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+equipment%2Fproduct+imports+in+section+11P+%E2%80%9COther+products+and+equipment%E2%80%A6%E2%80%9C%3C%2Fli%3E%0D%0A%09%3Cli%3E%5Bspecify+more%5D%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+revise+your+report+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%0D%0A%3Cp%3E%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3C%2Fp%3E%0D%0A',
      'LinkOption' => '',
      'Name' => 'New QC issue 11Q product category instead of RACHP ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '224',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=QC+issue+11Q+product+category+instead+of+RACHP%2C+dehumidifiers;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+dehumidifiers+in+section+11P+%E2%80%9COther+products+and+equipment%E2%80%A6%E2%80%9C%3C%2Fli%3E%0D%0A%09%3Cli%3EHowever%2C+dehumidifiers+are+considered+%E2%80%98refrigeration%2C+air+conditioning+and+heat+pump+equipment%E2%80%99+and+should+be+reported+in+section+11D.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease%2C+submit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+create+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+browse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+click+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+open+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B+Activate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3E%26nbsp%3B%26nbsp%3B+Click+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+BDR+manual+available+at+https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%29%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.',
      'LinkOption' => '',
      'Name' => 'New QC issue 11Q product category instead of RACHP, dehumidifiers ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '225',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=QC+issue+non+reporting+on+11G+EU+blending;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%26nbsp%3B%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+import+of+single+HFCs+in+section+2A.+However+you+do+not+report+on+placing+on+the+market+of+mixtures+in+section+1F.+We+wonder+whether+this+part+of+the+reporting+form+may+have+slipped+your+attention.%3C%2Fli%3E%0D%0A%09%3Cli%3EPlease+check+question+5.3.+%E2%80%9CHow+to+report+mixtures+blended+by+my+company+within+the+EU%3F%E2%80%9D+of+the+FAQ+document+%28%3Ca+href%3D%22http%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocs%2Ffaq_reporting_en.pdf%22%3Ehttp%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocs%2Ffaq_reporting_en.pdf%3C%2Fa%3E%29+for+more+guidance.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%26nbsp%3B%3Cbr+%2F%3E%0D%0APlease+confirm+you+did+not+blend+F-gases+into+mixtures+by+replying+to+this+email%3Cbr+%2F%3E%0D%0AOR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.',
      'LinkOption' => '',
      'Name' => 'New QC issue non reporting on 11G EU blending ticket [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '226',
      'Type' => ''
    }
  ],
  'NavBarName' => 'Ticket',
  'Title' => 'New email ticket'
};
$Self->{'Ticket::Frontend::AgentTicketForward'}->{'StateDefault'} =  'open';
delete $Self->{'Ticket::Frontend::Quote'};
$Self->{'Ticket::Frontend::ResponseFormat'} =  '[% Data.Salutation | html %]
[% Data.StdResponse | html %]
[% Data.Signature | html %]
[% Data.Body | html %]';
delete $Self->{'Ticket::Frontend::AgentTicketPending'}->{'NoteMandatory'};
delete $Self->{'Ticket::Frontend::AgentTicketOwner'}->{'NoteMandatory'};
delete $Self->{'Ticket::Frontend::AgentTicketNote'}->{'NoteMandatory'};
$Self->{'Ticket::Frontend::AgentTicketNote'}->{'StateDefault'} =  'open';
$Self->{'Ticket::Frontend::AgentTicketNote'}->{'State'} =  '1';
delete $Self->{'Ticket::Frontend::AgentTicketClose'}->{'NoteMandatory'};
$Self->{'Ticket::Frontend::TimeUnits'} =  '(work units)';
$Self->{'ArticleDir'} =  '/opt/otrs/var/article';
$Self->{'Ticket::StorageModule'} =  'Kernel::System::Ticket::ArticleStorageFS';
$Self->{'Ticket::IndexModule'} =  'Kernel::System::Ticket::IndexAccelerator::StaticDB';
$Self->{'Frontend::Module'}->{'AdminGenericInterfaceMappingSimple'} =  {
  'Description' => 'Admin',
  'Group' => [
    'admin'
  ],
  'Loader' => {
    'CSS' => [
      'Core.Agent.Admin.GenericInterface.css'
    ],
    'JavaScript' => [
      'Core.Agent.Admin.GenericInterfaceMappingSimple.js'
    ]
  },
  'Title' => 'GenericInterface Webservice Mapping GUI'
};
$Self->{'Frontend::Module'}->{'AdminGenericInterfaceDebugger'} =  {
  'Description' => 'Admin',
  'Group' => [
    'admin'
  ],
  'Loader' => {
    'CSS' => [
      'Core.Agent.Admin.GenericInterface.css'
    ],
    'JavaScript' => [
      'Core.Agent.Admin.GenericInterfaceDebugger.js'
    ]
  },
  'Title' => 'GenericInterface Debugger GUI'
};
$Self->{'PublicFrontend::Module'}->{'PublicFAQExplorer'} =  {
  'Description' => 'Public faq',
  'Loader' => {
    'CSS' => [
      'FAQ.Customer.Detail.css',
      'FAQ.Customer.Default.css',
      'FAQ.Widget.css'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => 'f',
      'Block' => '',
      'Description' => 'FAQ-Area',
      'Link' => 'Action=PublicFAQExplorer',
      'Name' => 'FAQ',
      'NavBar' => '',
      'Prio' => '400',
      'Type' => ''
    }
  ],
  'NavBarName' => 'FAQ',
  'Title' => ''
};
$Self->{'CustomerFrontend::Module'}->{'CustomerFAQExplorer'} =  {
  'Description' => 'Customer FAQ',
  'Loader' => {
    'CSS' => [
      'FAQ.Customer.Detail.css',
      'FAQ.Customer.Default.css',
      'FAQ.Widget.css'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'FAQ',
      'Link' => 'Action=CustomerFAQExplorer',
      'Name' => 'FAQ',
      'NavBar' => 'FAQ',
      'Prio' => '700',
      'Type' => 'Menu'
    },
    {
      'AccessKey' => 'f',
      'Block' => '',
      'Description' => 'FAQ Explorer',
      'Link' => 'Action=CustomerFAQExplorer',
      'Name' => 'FAQ Explorer',
      'NavBar' => 'FAQ',
      'Prio' => '710',
      'Type' => 'Submenu'
    }
  ],
  'NavBarName' => 'FAQ',
  'Title' => ''
};
$Self->{'Loader::Customer::SelectedSkin'} =  'eionet';
$Self->{'Loader::Agent::DefaultSelectedSkin'} =  'eionet';
$Self->{'Stats::UseAgentElementInStats'} =  '1';
$Self->{'Frontend::Themes'} =  {
  'EIONET' => '1',
  'Lite' => '0',
  'Standard' => '1'
};
$Self->{'Customer::AuthModule::LDAP::AlwaysFilter'} =  '';
$Self->{'Customer::AuthModule::LDAP::UID'} =  'uid';
$Self->{'Customer::AuthModule::LDAP::BaseDN'} =  'ou=Users,o=Eionet,l=Europe';
$Self->{'Customer::AuthModule::LDAP::Host'} =  'ldap3.eionet.europa.eu';
$Self->{'Customer::AuthModule'} =  'Kernel::System::CustomerAuth::LDAP';
$Self->{'CustomerPanelBodyNewAccount'} =  'Hi <OTRS_USERFIRSTNAME>,

You or someone impersonating you has created a new OTRS account for
you.

Full name: <OTRS_USERFIRSTNAME> <OTRS_USERLASTNAME>
User name: <OTRS_USERLOGIN>
Password : <OTRS_USERPASSWORD>

You can log in via the following URL. We encourage you to change your password
via the Preferences button after logging in.

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>customer.pl';
$Self->{'CustomerPanelBodyLostPassword'} =  'Hi <OTRS_USERFIRSTNAME>,


New password: <OTRS_NEWPW>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>customer.pl';
$Self->{'CustomerPanelBodyLostPasswordToken'} =  'Hi <OTRS_USERFIRSTNAME>,

You or someone impersonating you has requested to change your OTRS
password.

If you want to do this, click on this link. You will receive another email containing the password.

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>customer.pl?Action=CustomerLostPassword;Token=<OTRS_TOKEN>

If you did not request a new password, please ignore this email.';
delete $Self->{'PreferencesGroups'}->{'SpellDict'};
$Self->{'NotificationBodyLostPassword'} =  'Hi <OTRS_USERFIRSTNAME>,


Here\'s your new OTRS password.

New password: <OTRS_NEWPW>

You can log in via the following URL:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl';
$Self->{'NotificationBodyLostPasswordToken'} =  'Hi <OTRS_USERFIRSTNAME>,

You or someone impersonating you has requested to change your OTRS
password.

If you want to do this, click on the link below. You will receive another email containing the password.

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=LostPassword;Token=<OTRS_TOKEN>

If you did not request a new password, please ignore this email.';
$Self->{'Package::RepositoryList'} =  {
  'https://portal.znuny.com/api/addon_repos/public' => 'Addons - Znuny4OTRS / Public'
};
$Self->{'TimeWorkingHours::Calendar1'} =  {
  'Fri' => [
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16'
  ],
  'Mon' => [
    '9',
    '10',
    '11',
    '15'
  ],
  'Sat' => [],
  'Sun' => [],
  'Thu' => [
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17'
  ],
  'Tue' => [
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17'
  ],
  'Wed' => [
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17'
  ]
};
$Self->{'TimeVacationDaysOneTime::Calendar1'} =  {};
$Self->{'TimeVacationDays::Calendar1'} =  {
  '1' => {
    '1' => 'New Year\'s Day'
  },
  '11' => {
    '1' => 'All Saints\' day',
    '2' => 'All Souls\' day'
  },
  '12' => {
    '24' => 'Christmas Eve',
    '25' => 'First Christmas Day',
    '26' => 'Second Christmas Day',
    '27' => 'Christmas and end of year',
    '28' => 'Christmas and end of year',
    '29' => 'Christmas and end of year',
    '30' => 'Christmas and end of year',
    '31' => 'New Year\'s Eve'
  },
  '3' => {
    '24' => 'Maundy Thursday',
    '25' => 'Good Friday',
    '28' => 'Easter Monday'
  },
  '4' => {
    '22' => 'Store Bededag'
  },
  '5' => {
    '16' => 'Whit Monday',
    '5' => 'Ascension Day',
    '6' => 'Day following Ascension Day',
    '9' => 'Schuman anniversary'
  },
  '6' => {
    '24' => 'Friday following St Hans aften'
  }
};
$Self->{'TimeZone::Calendar1'} =  '+1';
$Self->{'TimeZone::Calendar1Name'} =  'EEA Standard Calendar';
$Self->{'SendmailNotificationEnvelopeFrom'} =  'otrs@helpdesk.eionet.europa.eu';
$Self->{'LogModule::LogFile'} =  '/var/log/otrs.log';
$Self->{'LogModule'} =  'Kernel::System::Log::File';
$Self->{'Frontend::RichTextWidth'} =  '760';
$Self->{'Frontend::ImagePath'} =  '<OTRS_CONFIG_Frontend::WebPath>skins/Agent/eionet/img/';
delete $Self->{'AgentLogo'};
$Self->{'CustomerHeadline'} =  'EIONET Helpdesk';
$Self->{'DefaultTheme::HostBased'} =  {
  'helpdesk\\.eionet\\.europa\\.eu' => 'EIONET'
};
$Self->{'DefaultTheme'} =  'EIONET';
$Self->{'DefaultLanguage'} =  'en_GB';
$Self->{'Organization'} =  'European Environment Agency';
$Self->{'AdminEmail'} =  'sysadm@eionet.europa.eu';
$Self->{'FQDN'} =  'helpdesk.eionet.europa.eu';
$Self->{'SecureMode'} =  '1';
}
1;
