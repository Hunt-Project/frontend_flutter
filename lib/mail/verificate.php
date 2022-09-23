<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        :root{
            --col-primary: #7E1E52;
            --col-secondary: #07283E;
            --col-background: #E2E4FE;
            --col-background60: #E2E4FE60;
            --col-white: #FFFFFF;
        }
        @import url('https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@1,500&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            background-color: var(--col-background60);
        }
        h1{
            font-family: 'DM Sans', sans-serif;
            font-size: 2rem;
            font-weight: 700;
            color: var(--col-primary);
        }
        p{
            font-family: 'DM Sans', sans-serif;
            font-weight: 500;
            font-size: 1rem;
            text-align: center;
        }
        a{
            font-family: 'DM Sans', sans-serif;
            font-weight: 500;
            font-size: 1rem;
        }
        .hero{
            width: 100%;
            height: 160px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .center{
            width: 100vw;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .content{
            background-color: var(--col-white);
        }
        button{
            background-color: var(--col-primary);
            padding: 10px;
            padding-left: 20px;
            padding-right: 20px;
            border-style: none;
            border-radius: 10px;
            color: var(--col-white);
            font-family: 'DM Sans', sans-serif;
            font-size: 1rem;
            font-weight: 700;
            transition: 0.6s ease-in-out;
            cursor: pointer;
        }
        button:hover{
            background-color: var(--col-secondary);
        }
    </style>

    <title>Benvenuto in Hunt</title>
</head>
<body>
    <div class="hero">
        <svg width="161" height="87" viewBox="0 0 161 87" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M116.864 0L109.751 14.2245L106.195 16.0026V6.37331L95.527 21.3367V28.9999L95.527 36.6631L85.3094 57.0983L80.2006 59.6527L75.0918 57.0983L64.8742 36.6631L64.8742 28.9999V21.3367H64.8741L54.2058 6.37331L54.2058 16.0026L50.6497 14.2245L43.5374 0L43.5374 10.6684L43.5374 21.3367L43.5375 21.3367V31.3289L67.9795 80.213L80.2007 86.3236L92.4216 80.2131L116.864 31.3289V21.3367L116.864 21.3367L116.864 10.6684L116.864 0Z" fill="#7E1E52" fill-opacity="0.1"/>
            <path d="M47.304 55.2689V46.2759H39.7973V55.2689H32.5385V29.7888H39.7973V39.6739H47.304V29.7888H54.5274V55.2689H47.304Z" fill="#7E1E52"/>
            <path d="M74.1917 29.7888H81.1672V45.5979C81.1672 49.0714 80.1758 51.6646 78.1929 53.3775C76.2336 55.0667 73.3301 55.9113 69.4823 55.9113C65.847 55.9113 63.0497 54.9834 61.0905 53.1277C59.1312 51.272 58.1515 48.6074 58.1515 45.134V29.7888H65.4811V44.3132C65.4811 45.0507 65.552 45.7287 65.6936 46.3473C65.8352 46.9659 66.0713 47.5012 66.4018 47.9532C66.7323 48.4052 67.1808 48.7621 67.7473 49.0238C68.3138 49.2855 69.0102 49.4163 69.8364 49.4163C70.757 49.4163 71.5006 49.3093 72.0672 49.0952C72.6337 48.8572 73.0704 48.5242 73.3773 48.0959C73.7078 47.6439 73.9202 47.1086 74.0147 46.49C74.1327 45.8715 74.1917 45.1696 74.1917 44.3845V29.7888Z" fill="#7E1E52"/>
            <path d="M100.97 55.2689L90.9846 39.1386V55.2689H84.611V29.7888H94.0298L100.757 41.601V29.7888H107.308V55.2689H100.97Z" fill="#7E1E52"/>
            <path d="M116.73 55.2689V36.3551H109.684V29.7888H131.071V36.3551H124.024V55.2689H116.73Z" fill="#7E1E52"/>
            </svg>
    </div>
        <div class="content">
            <p style="padding: 40px; padding-bottom: 20px;">
                Grazie per esserti registrato a Hunt
                <br>
                Per completare la registrazione clicca sul pulsante sottostante
            </p>
            <div class="center">
                <button>Torna alla app</button>
            </div>
            <div class="center">
                <p style="padding: 40px; padding-bottom: 0px; padding-top: 80px;">
                    Se riscontri problemi con il pulsante copia e incolla il seguente url nel tuo browser
                </p>
            </div>
            <div class="center">
                <a href="http://linkdainserire">http://linkdainserire</a>
            </div>
            <div class="center" style="padding: 40px;">
                <p>
                    Se invece non hai creato tu questo account, 
                    <b>ignora questa email</b>
                </p>
            </div>
        </div>
</body>
</html>
