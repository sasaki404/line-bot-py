# line-bot-py  
## Herokuへデプロイする際の流れ
``` heroku login ```    
``` heroku container:login ```    
``` heroku create ```  
``` heroku config:set YOUR_ACCESS_TOKEN="好きなラインボットのアクセストークン" --app [appname] ```  
``` heroku config:set YOUR_CHANNEL_SECRET="好きなラインボットのチャンネルシークレット" --app [appname] ```  
``` heroku container:push web --app [appname] ```  
``` heroku container:release web --app [appname] ```  
``` heroku open --app [appname] ```  
