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
$Self->{'Frontend::Module'}->{'AgentTicketSearch'} =  {
  'Description' => 'Search Ticket',
  'Loader' => {
    'JavaScript' => [
      'Core.UI.AllocationList.js',
      'Core.Agent.TableFilters.js'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => 's',
      'Block' => '',
      'Description' => 'Search Tickets',
      'Link' => 'Action=AgentTicketSearch',
      'LinkOption' => 'onclick="window.setTimeout(function(){Core.Agent.Search.OpenSearchDialog(\'AgentTicketSearch\');}, 0); return false;"',
      'Name' => 'Search',
      'NavBar' => 'Ticket',
      'Prio' => '130',
      'Type' => ''
    }
  ],
  'NavBarName' => 'Ticket',
  'Title' => 'Search'
};
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
      'Description' => 'BDR ODS',
      'Group' => [
        'bdr_ods_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;CustomerTicketCounterCcCustomer=1;CcCustomerTicketText_1=ods%40eea.europa.eu;Dest=12%7C%7CBDR+requests%3A%3AODS+for+ETC',
      'LinkOption' => '',
      'Name' => 'New empty email [ODS]',
      'NavBar' => 'Ticket',
      'Prio' => '232',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=General+QC+issue;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3E%5BINSERT+ISSUE%5D%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C%26nbsp%3B+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => 'New general QC issue [FGas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=6A+next+to+3A;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EFor+some+gases+you+report+on+own+imports+%282A%29%2C+own+exports+%283A%29+and+own+imports+supplied+to+other+companies+for+exports+%286A%29%3C%2Fli%3E%0D%0A%09%3Cli%3EWe+wonder+if+this+may+be+an+error.%3C%2Fli%3E%0D%0A%09%3Cli%3EYour+activities+in+2016+as+reported+would+look+like+this%3A+You+imported+gas+and+supplied+a+part+of+those+gases+to+another+company+for+export.+Furthermore+you+purchased+gases+from+other+companies+within+the+EU+and+exported+those+amounts+yourselves.+In+case+this+story+reflects+your+activities+in+2016%2C+your+report+is+fine.%3C%2Fli%3E%0D%0A%09%3Cli%3EHowever%2C+in+case+you+actually+imported+gases+and+re-exported+parts+of+those+amounts%2C+you+should+report+differently%3A%0D%0A%09%3Cul+style%3D%22list-style-type%3Acircle%22%3E%0D%0A%09%09%3Cli%3Edelete+the+amounts+reported+in+6A%3C%2Fli%3E%0D%0A%09%09%3Cli%3Einsert+the+same+amounts+in+3B%2C+instead%3C%2Fli%3E%0D%0A%09%3C%2Ful%3E%0D%0A%09%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0ASpecifically+on+6A%3A+you+should+report+here%2C+if+you+imported+F-gases%2C+supplied+those+gases+to+another+company+which%2C+according+to+your+knowledge+was+going+to+export+those+amount+as+bulk+gases.+In+case+your+customer+used+the+F-gases+for+charging+products%2Fequipment+which+are+then+exported%2C+please+report+as+intended+application+according+to+the+type+of+product%2Fequipment%2C+e.g.+6D+Refrigeration+%26amp%3B+air-conditioning.%3Cbr+%2F%3E%0D%0APlease+do+not+report+on+your+own+exports+in+6A.+For+your+own+exports+please+only+use+3A+%28and%2C+in+case+applicable+for+your+situation%2C+3B%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => '6A next to 3A [FGas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Feedstock+use+7A+%28for+incorrectly+reported+feedstock+use%2C+no+other+activities%29;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+section+7A+you+reported+on+feedstock+use+for+gases+which+are+uncommon+for+feedstock+use.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AAs+defined+by+the+F-Gas+Regulation+517%2F2014%2C+%E2%80%9Ca+feedstock+is+any+substance+that+undergoes+chemical+transformation+in+a+process+by+which+the+chemical+is+entirely+converted+from+its+original+composition+and+whose+emissions+are+insignificant%E2%80%9D.+Please+note+that+foam+blowing+is+not+considered+feedstock+use+as+there+is+no+chemical+conversion.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease+provide+a+short+explanation+what+specifically+your+feedstock+use+is.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+conclude+that+your+activities+are+not+feedstock+use+under+Regulation+517%2F2014+you+should+not+report+in+section+7A+at+all.%3Cbr+%2F%3E%0D%0AAs+this+use+was+your+single+reported+activity%2C+you+are+requested+to+submit+a+NIL+Report+in+that+case.%3Cbr+%2F%3E%0D%0AFor+that+purpose+please%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ELog+into+the+BDR+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2F%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2F%3C%2Fa%3E+using+your+EU+Login+credentials+for+the+F-gases+portal%2FHFC+Registry+and+access+your+company+folder.%3C%2Fli%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+and+open+it%3C%2Fli%3E%0D%0A%09%3Cli%3EClick%3A+%E2%80%9C%3Cu%3EActivate+task%3A+Draft%E2%80%9D%3C%2Fu%3E%3C%2Fli%3E%0D%0A%09%3Cli%3EClick%3A+%E2%80%9CAdd+and+edit+a+%3Cu%3EFluorinated+gases+%28F-gases%29+reporting%3C%2Fu%3E+questionnaire%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EConfirm+your+company+contact+data%3C%2Fli%3E%0D%0A%09%3Cli%3EClick%3A+%E2%80%9CI+do+not+wish+to+report+on+company+affiliations%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3ETick+the+box+%E2%80%98Not+obliged+to+report+%28NIL+report%29%E2%80%99+in+the+activity+selection%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => 'Feedstock use 7A (for incorrectly reported feedstock use, no other activities) [FGas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Text+on+Feedstock+use+7A+%28if+also+other+activities%29;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+section+7A+you+reported+on+feedstock+use+for+gases+which+are+uncommon+for+feedstock+use.+Please+provide+a+short+explanation+what+specifically+your+feedstock+use+is.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AAs+defined+by+the+F-Gas+Regulation+517%2F2014%2C+%E2%80%9Ca+feedstock+is+any+substance+that+undergoes+chemical+transformation+in+a+process+by+which+the+chemical+is+entirely+converted+from+its+original+composition+and+whose+emissions+are+insignificant%E2%80%9D.+%3Cstrong%3EPlease+note+in+particular+that+foam+blowing+is+not+considered+feedstock+use%3C%2Fstrong%3E.+In+case+you+conclude+that+your+activities+are+no+feedstock+use+under+Regulation+517%2F2014+you+should+not+report+in+section+7A+at+all.%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+submit+a+revised+report+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => 'Feedstock use 7A (if also other activities) [FGas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=2A+equalling+sum+of+11;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+the+same+amounts+as+bulk+imports+in+section+2A+and+as+import+within+equipment+in+section+11.We+suspect+this+may+have+been+a+misunderstanding.+As+an+importer+of+products%2Fequipment+containing+F-gases+you+should+only+report+in+section+11%2C+not+in+section+2.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+revise+your+report+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => '2A equalling sum of 11 [Fgas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=QC+issue+11Q+product+category+instead+of+RACHP;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+equipment%2Fproduct+imports+in+section+11P+%E2%80%9COther+products+and+equipment%E2%80%A6%E2%80%9C%3C%2Fli%3E%0D%0A%09%3Cli%3E%5Bspecify+more%5D%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+revise+your+report+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => '11Q product category instead of RACHP [FGas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=11Q+product+category+instead+of+RACHP%2C+dehumidifiers;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+dehumidifiers+in+section+11P+%E2%80%9COther+products+and+equipment%E2%80%A6%E2%80%9C%3C%2Fli%3E%0D%0A%09%3Cli%3EHowever%2C+dehumidifiers+are+considered+%E2%80%98refrigeration%2C+air+conditioning+and+heat+pump+equipment%E2%80%99+and+should+be+reported+in+section+11D.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+submit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => '11Q product category instead of RACHP, dehumidifiers [FGas]',
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
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Non+reporting+on+1G+EU+blending;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+import+of+single+HFCs+in+section+2A.+However+you+do+not+report+on+placing+on+the+market+of+mixtures+in+section+1F.+We+wonder+whether+this+part+of+the+reporting+form+may+have+slipped+your+attention.%3C%2Fli%3E%0D%0A%09%3Cli%3EPlease+check+question+4.3+%E2%80%9CHow+to+report+mixtures+blended+by+my+company+within+the+EU%3F%E2%80%9D+of+the+FAQ+document+%28see+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%29+for+more+guidance.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease+confirm+you+did+not+blend+F-gases+into+mixtures+by+replying+to+this+email%3Cbr+%2F%3E%0D%0AOR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => 'Non reporting on 1G EU blending [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '226',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Verification%20of%20the%20full%20report;Body=Dear+%5B+%5D%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+inquiry.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0ACompanies+that+place+on+the+market+10kt+CO2e+or+more+of+HFCs+during+the+preceding+calendar+year%2C%3Cbr+%2F%3E%0D%0Aare+required+to+have+the+accuracy+of+the+reported+data+verified+by+an+independent+auditor+by+30+June+%28Article+19+%286%29+of%26nbsp%3B%3Ca+href%3D%22http%3A%2F%2Feur-lex.europa.eu%2Flegal-content%2FEN%2FTXT%2F%3Furi%3Duriserv%3AOJ.L_.2014.150.01.0195.01.ENG%22%3ERegulation+%28EU%29+No+517%2F2014%3C%2Fa%3E%29.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+amount+of+the+amount+of+HFCs+placed+on+the+market+is+automatically+calculated+in+sheet+IV%2C+Reporting+Section+9C.+Reporters+exceeding+the10kt+CO2e+threshold+are+required+to+acknowledge+this+verification+requirement+by+ticking+a+box+on+sheet+IV.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+company+must+keep+the+verification+report+for+at+least+five+years+and+the+verification+report+is+to+be+made+available%2C+on+request%2C+to+the+competent+authority+of+the+Member+State+concerned+and+to+the+Commission.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AFurthermore+you+have+the+option+%E2%80%93+not+the+obligation+%E2%80%93+to+directly+upload+such+a+verification+document+if+it+is+available+at+the+time+of+reporting.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0ASee+also+the+F-gas+reporting+FAQ%2C+question+-+3.8.+Do+I+need+to+submit+the+verification+of+the+report%2C+available+at%3A%26nbsp%3B%3Ca+href%3D%22http%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocumentation_en.htm%22%3Ehttp%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocumentation_en.htm%3C%2Fa%3E.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AFor+a+clarification+on+how+and+by+whom+the+verification+is+to+be+performed%2C+please+consult+the+verification+guidance+document+at+%3Ca+href%3D%22http%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocs%2Fguidance_to_verifiers_en.pdf%22%3Ehttp%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocs%2Fguidance_to_verifiers_en.pdf%3C%2Fa%3E+or+contact+the+European+Commission+at%26nbsp%3B%3Ca+href%3D%22mailto%3ACLIMA-HFC-REGISTRY%40ec.europa.eu%22%3ECLIMA-HFC-REGISTRY%40ec.europa.eu%3C%2Fa%3E%26nbsp%3Bor+your+competent+national+authority+as+listed+in%26nbsp%3B%3Ca+href%3D%22http%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocs%2Fcontact_list_en.pdf%22%3Ehttp%3A%2F%2Fec.europa.eu%2Fclima%2Fpolicies%2Ff-gas%2Fdocs%2Fcontact_list_en.pdf%3C%2Fa%3E.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AKind+regards%2C',
      'LinkOption' => '',
      'Name' => 'Verification of the full report [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '227',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=9G+bulk+imports%2FPOM+without+any+quota;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+bulk+import+of+HFCs+in+section+2A+resulting+in+a+physical+placing+on+the+market+calculated+in+section+4M+and+consequently+a+demand+of+HFC+quota+calculated+in+section+9F.%3C%2Fli%3E%0D%0A%09%3Cli%3EHowever%2C+you+do+not+hold+any+quota+%28section+9G%29%3C%2Fli%3E%0D%0A%09%3Cli%3EWe+wonder+whether+your+2A+reporting+may+have+been+erroneous%3A+In+case+the+HFCs+you+imported+were+contained+in+products+or+equipment%2C+those+amounts+should+be+reported+in+section+11+instead+of+2A.+In+order+to+report+in+section+11%2C+you+need+to+tick+%E2%80%9CImporter+of+products%2Fequipment+containing+F-gases%E2%80%9D+in+the+activity+selection.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0APlease%2C+confirm+your+data+reported+so+far%2C+or+submit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+modify+the+activity+selection+and+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AKind+regards%2C',
      'LinkOption' => '',
      'Name' => '9G bulk imports/POM w/o any quota [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '228',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=4C+stocks+resulting+in+quota+demand;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5Binsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EIn+your+report+your+stocks+of+1.Jan+2016+in+section+4C+equal+the+4B+stocks.+The+same+goes+for+31st+December+2016+stocks+in+section+4H+and+4G.%3Cbr+%2F%3E%0D%0A%09This+would+mean+that%3Cstrong%3E+all+%3C%2Fstrong%3Eyour+4B+1st+January+stocks+from+own+import+were+not+yet+placed+on+the+market+%3D%3Cstrong%3E+not+%3C%2Fstrong%3Eyet+cleared+by+customs+for+free+circulation+in+the+EU.%3Cbr+%2F%3E%0D%0A%09I+guess+this+may+be+an+error.+In+case+all+your+2015+imports+were+released+by+customs+for+free+circulation+already+in+2015%2C+you+should+report+a+zero+in+4C+%28and+probably+also+a+zero+in+4H%29+In+4C+you+would+need+to+add+a+comment+to+explain+the+deviation+from+your+report+on+2015+%28%27error+in+2015+report%27%29.%3C%2Fli%3E%0D%0A%09%3Cli%3E%3Cstrong%3EThis+would+change+the+initial+quota+assessment+for+2016+which+presently+concludes+in+a+need+of+HFC+quota+for+your+company.%3C%2Fstrong%3E%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0APlease%2C+confirm+your+data+reported+so+far%2C+or+submit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+modify+the+activity+selection+and+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22+target%3D%22_blank%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AKind+regards%2C',
      'LinkOption' => '',
      'Name' => '4C stocks resulting in quota demand [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '229',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Section+10+data+missing;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A+%3Cbr+%2F%3E%0D%0A%5BURL%5D%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EIn+section+10+%28sheet+V%29+you+did%3Cstrong%3E+NOT+%3C%2Fstrong%3Ereport+on+physical+supplies+of+HFCs+related+to+the+authorisations+you+reported+in+section+9+%28sheet+IV%29%3C%2Fli%3E%0D%0A%09%3Cli%3EWe+wonder+whether+you+may+have+forgotten+to+fill+this+section+of+the+reporting+questionnaire%3F%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0APlease+note+that+as+a+%E2%80%98new+entrant%E2%80%99%2C+you+must+have+made+a+physical+supply+of+HFCs+related+to+the+authorisation+given.+Otherwise+the+authorisation+would+not+be+valid.%3Cbr+%2F%3E%0D%0AThus+you+should+identify+the+traded+gas+and+report+the+amounts+supplied.%3Cbr+%2F%3E%0D%0AThe+physical+supply+of+HFCs+does+not+necessarily+need+to+be+made+to+the+recipient+of+the+authorisation.+In+case+another+company+%28e.g.+non-EU+equipment+manufacturer%29+was+the+recipient+of+the+physical+supply%2C+please+identify%3Cem%3Ethat%3C%2Fem%3Ecompany+in+section+10+and+report+the+supply+in+their+respective+row.+A+recipient+added+in+section+10+does+not+necessarily+need+to+be+registered+in+the+HFC+registry.%3Cbr+%2F%3E%0D%0ANote+that+you+will+need+to+upload+some+kind+of+proof+%28like+invoice%29+for+the+supply+in+section+10.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated%3Cstrong%3E+BDR+User+Manual+%3C%2Fstrong%3Eavailable+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22+target%3D%22_blank%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AKind+regards%2C',
      'LinkOption' => '',
      'Name' => 'Section 10 data missing [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '230',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR ODS',
      'Group' => [
        'bdr_ods_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;CustomerTicketCounterCcCustomer=1;CcCustomerTicketText_1=ods%40eea.europa.eu;Dest=12%7C%7CBDR+requests%3A%3AODS+for+ETC;Subject=QA2;Body=Dear%20%2C%3Cbr%20%2F%3E%0A%3Cbr%20%2F%3E%0Athank%20you%20for%20submitting%20an%20ODS%20report%20for%202015.%20During%20our%20manual%20quality%20checks%20we%20noticed%20an%20inconsistency%20concerning%20trade%20with%20other%20EU%20undertakings.%3Cbr%20%2F%3E%0A%26nbsp%3B%3Cbr%20%2F%3E%0AAmounts%20reported%20by%20you%20in%20Table%206%20or%20Table%2010%26nbsp%3Bdo%20not%20align%20with%20what%20%5Bother%20company%20name%5D%20reported.%3Cbr%20%2F%3E%0A%26nbsp%3B%3Cbr%20%2F%3E%0APlease%20comment%20on%20this%20circumstance%20and%26nbsp%3Bget%20in%20touch%20with%20%5Bother%20company%20name%5D%20to%20align%20both%20of%20your%20reports.%3Cbr%20%2F%3E%0A%26nbsp%3B%3Cbr%20%2F%3E%0APlease%20follow%20these%20helpful%20hints%20for%20re-submission%20of%20your%20ODS%20report%3A%0A%3Cul%3E%0A%09%3Cli%3ERe-submission%20process%20step%201%3A%20Create%20a%20new%20envelope%20and%20make%20sure%20that%20you%20indicate%20in%20the%20title%20and%20the%20description%20of%20your%20envelope%20that%20this%20is%20a%20new%20version.%3C%2Fli%3E%0A%09%3Cli%3ERe-submission%20process%20step%202%3A%20Browse%20into%20the%20newly%20created%20envelope%2C%20activate%20the%20Draft%20task%20and%20click%26nbsp%3Bon%20the%20%E2%80%9CCopy%20previous%20delivery%E2%80%9D%20button%20in%20the%20top%20right%20corner.%3C%2Fli%3E%0A%3C%2Ful%3E%0APlease%20do%20not%20hesitate%20to%20contact%20us%20should%20you%20have%20any%20further%20questions.%3Cbr%20%2F%3E%0A%26nbsp%3B%3Cbr%20%2F%3E%0AKind%20regards%2C%3Cbr%20%2F%3E%0A%26nbsp%3B',
      'LinkOption' => '',
      'Name' => 'QA2 [ODS]',
      'NavBar' => 'Ticket',
      'Prio' => '231',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=6A+equalling+3A%2F3C+%28INTENDED+APPLICATION%3A+EXPORT+%3D+Export%29;Body=Dear+Sir%2F+Madam%3Cbr+%2F%3E%0D%0Athank+you+for+your+revised+report+submitted+at%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5Binsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+in+section+6A+as+intended+application+%22Export%22+the+same+amounts+which+you+report+in+section+3A+%28Exports%29+%26amp%3B+3C+%28Exports+of+amounts+purchased+within+the+EU%29.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0AThis+does+not+appear+plausible%3A%0D%0A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EReporting+in+section+6+A+would+be+expected+if+you+supply+the+F-gases+imported%2Fproduced+by+yourselves+to+a+third+party+which+would+export+these+quantities.+If+this+is+not+the+case+you+should+report+100%25+of+the+amounts+calculated+in+line+6X+for+%22your%22+intended+application%3Cbr+%2F%3E%0D%0A%09%3Cbr+%2F%3E%0D%0A%09%5Binsert+IA%3A+6D+Refrigeration%5D%3C%2Fli%3E%0D%0A%09%3Cli%3EYour+reporting+in+section+3+is+correct+in+case+your+exports+were+actually+purchased+on+the+EU+market%3C%2Fli%3E%0D%0A%09%3Cli%3EIn+case+your+exports+were+in+fact+re-exports+of+parts+of+your+own+imports+you+should+report+the+same+amounts+in+3B%2C+as+well.+Note+that+this+would+alter+the+values+calculated+in+section+6X%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0APlease%2C+confirm+the+data+reported+so+far+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+modify+the+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2+%29%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => '6A equalling 3A/3C (IA: EXPORT=Export) [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '232',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Wrong+transaction+year+2015+instead+2016;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AWe+took+note+that+you+selected+2015+as+the+transaction+year.+However+we+would+have+expected+your+report+for+2016+instead.%3Cbr+%2F%3E%0D%0ADid+you+really+want+to+update%2Frevise+your+report+for+2015%3F%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+do+so+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+modify+the+transaction+year%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => 'Wrong transaction year 2015 instead 2016 [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '233',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'BDR FGas',
      'Group' => [
        'bdr_fgas_agents'
      ],
      'Link' => 'Action=AgentTicketEmail;Subaction=StoreNew;ExpandCustomerName=2;Dest=11%7C%7CBDR+requests%3A%3AF-GAS+for+ETC;Subject=Stationary+%E2%80%9Cmoveables%E2%80%9D+as+11F9+mobile+equipment;Body=Dear+Sir+or+Madam%2C%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThank+you+for+your+report+submitted+at%3A%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0A%5BInsert+URL%5D%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIn+our+quality+checks+we+found+the+following+issue%28s%29+which+don%E2%80%99t+appear+plausible%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3EYou+report+on+equipment%2Fproduct+imports+in+section+11F9+%E2%80%9CAny+other+mobile+air+conditioning+equipment%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EPlease+note+that+%E2%80%98mobile%E2%80%99+equipment+to+be+reported+in+section+11E+and+11F+refers+to+equipment+in+vehicles.+Moveable+equipment%2C+which+is+however+not+designed+to+be+moved+during+operation%2C+should+be+reported+as+%E2%80%98stationary%E2%80%99+equipment%2C+for+example%0D%0A%09%3Cul%3E%0D%0A%09%09%3Cli%3E11A1+%E2%80%9CStationary+equipment+for+comfort+cooling%2Fheating%2C+direct+design%3A+Standalone%2Fmonobloc+units+of+moveable+type%E2%80%9D%3C%2Fli%3E%0D%0A%09%09%3Cli%3E11D+%28Dehumidifiers%29%3C%2Fli%3E%0D%0A%09%3C%2Ful%3E%0D%0A%09%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cbr+%2F%3E%0D%0APlease%2C+confirm+the+data+reported+by+replying+to+this+email+OR%3Cbr+%2F%3E%0D%0Asubmit+a+revised+report+as+soon+as+possible.%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AThe+easiest+way+to+revise+your+report+would+be+to%3A%0D%0A%3Cul%3E%0D%0A%09%3Cli%3ECreate+a+new+envelope+in+the+BDR%3C%2Fli%3E%0D%0A%09%3Cli%3EBrowse+in+that+new+envelope+and+activate+task%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98copy+previous+delivery%E2%80%99%2C+browse+to+and+select+your+previous+submission+to+be+copied%3C%2Fli%3E%0D%0A%09%3Cli%3EOpen+the+questionnaire+and+change+activity+selection+%28Feedstock+use%29+and%2For+the+reported+numbers%3C%2Fli%3E%0D%0A%09%3Cli%3EActivate+the+%E2%80%9CFinish%E2%80%9D+tab+and+click%3A+%E2%80%9CClose+report+and+proceed+to+BDR%E2%80%9D%3C%2Fli%3E%0D%0A%09%3Cli%3EClick+%E2%80%98submit+to+DG+CLIMA%2FEEA%E2%80%99%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%28cf.+detailed+description+in+the+recently+updated+BDR+User+manual+available+at+%3Ca+href%3D%22https%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%22%3Ehttps%3A%2F%2Fbdr.eionet.europa.eu%2Fhelp%2Ffgases%3C%2Fa%3E%2C+see+activity+A5-2%29%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%0D%0AIf+you+have+any+further+questions%2C+please+don%E2%80%99t+hesitate+to+contact+us.%3Cbr+%2F%3E%0D%0AKind+regards',
      'LinkOption' => '',
      'Name' => 'Stationary “moveables” as 11F9 mobile equipment [FGas]',
      'NavBar' => 'Ticket',
      'Prio' => '234',
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
$Self->{'Ticket::Frontend::OverviewSmall'}->{'ColumnHeader'} =  'TicketTitle';
$Self->{'ArticleDir'} =  '/article';
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
$Self->{'Customer::AuthModule::LDAP::Host'} =  'ldaps://ldap_host';
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
$Self->{'SessionCheckRemoteIP'} =  '0';
$Self->{'SendmailNotificationEnvelopeFrom'} =  'otrs@helpdesk.eionet.europa.eu';
$Self->{'SendmailModule::Host'} =  'mtp_relay';
$Self->{'SendmailModule'} =  'Kernel::System::Email::SMTP';
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
