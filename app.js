var express = require('express');
var app = express();
var mysql      = require('mysql');
var bodyParser = require('body-parser')

 
// parse application/x-www-form-urlencoded 
app.use(bodyParser.urlencoded({ extended: false }));
// parse application/json 
app.use(bodyParser.json());

var DBconfig = {
  host     : 'localhost',
  user     : 'root',
  password : '14110071',
  database : 'mediaplayer'
};

var connection;
function handelDisconnect(){
    console.log("connecting db....");
    connection = mysql.createPool(DBconfig);
    connection.on('release', (connect)=>{
        console.log('Release connect %d', connect.threadId);
    });
    connection.on('enqueue', ()=>{
        console.log('enqueue connect'); 
    })
    connection.on('error',(err)=>{
        if(err.code === 'PROTOCOL_CONNECTION_LOST')
            handelDisconnect();
        else
            throw err;
    })
}
handelDisconnect();

app.get('/getuser', (req, res)=>{
    connection.query('select* from users where username=? limit 1',[req.query.username,
    req.query.pass], function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.get('/getplaylist', (req, res)=>{
    connection.query('select* from playlist where id_users=?',[req.query.id_users,
    ], function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.get('/getsongfavourite', (req, res)=>{
    connection.query('select* from songs inner join favourite on songs.id=favourite.song_id'+
    ' where user_id=? limit 30',[req.query.user_id], function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.get('/getsongbycountry', (req, res)=>{
    connection.query('select* from songs where id_country=? limit 30',[req.query.id_country,], function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.get('/getsongplaylist', (req, res)=>{
    connection.query('select* from songs inner join playlist_song on songs.id=playlist_song.id_song'+
    ' where playlist_song.id_playlist=? limit 30',[req.query.id_playlist], function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.get('/getallsong', (req, res)=>{
    connection.query('select* from songs', function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.get('/getallsong', (req, res)=>{
    connection.query('select* from songs where id>=page*30 and id<(page*30+30)',  [req.params.page],function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

app.post('/insertmusictoplaylist',(req,res)=>{
    connection.query('insert into playlist_song(id_playlist,id_song) values(?,?)',
    [req.body.id_playlist,req.body.id_song], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Insert song to playlist successful!"});
    });
});

app.post('/deletemusictfromplaylist',(req,res)=>{
    connection.query('delete from playlist_song where id_playlist=? and id_song=?',
    [req.body.id_playlist,req.body.id_song], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Delete song from playlist successful!"});
    });
});

app.post('/insertplaylist',(req,res)=>{
    connection.query('insert into playlist(name,id_users) values(?,?)',
    [req.body.name,req.body.id_users], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Insert playlist successful!"});
    });
});

app.post('/insertfavourite',(req,res)=>{
    connection.query('insert into favourite(song_id,user_id) values(?,?)',
    [req.body.song_id,req.body.user_id], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Insert favourite successful!"});
    });
});

app.post('/deletefavourite',(req,res)=>{
    connection.query('delete from favourite where song_id=? and user_id=?',
    [req.body.song_id,req.body.user_id], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Delete favourite successful!"});
    });
});


app.get('/getitemwhat', (req,res)=>{
    var query = 'select* from itemwhat where categoryid = coalesce(?, categoryid) and typeid = coalesce(?, typeid)'+
     'and districtid = coalesce(?,districtid) and cityid = coalesce(?,cityid) ORDER BY id DESC limit 40 ';
    var districtid = req.query.districtid,
        categoryid = req.query.categoryid,
        cityid=req.query.cityid,
        typeid = req.query.typeid;
        if(typeid===undefined||typeid<0)
            typeid=null;
        if(categoryid===undefined||categoryid<0)
            categoryid=null;
        if(districtid===undefined||districtid<0)
            districtid=null;
        if(cityid===undefined||cityid<0)
            cityid=null;
    connection.query(query,[categoryid,typeid,districtid,cityid], function(error,results){
        if(error) throw error;
        res.json(results);
    });
    console.log(typeid);
});

app.post('/insertitemwhat',(req,res)=>{
    var imgName =GetFilenameImage();
    console.log("Ngay tao "+GetDateCreated());
    saveIMG(imgName,req.body.img);
    connection.query('insert into itemwhat(address,name,foodname,img,districtid,categoryid,typeid,username,useravatar,datecreated,cityid,userid) values(?,?,?,?,?,?,?,?,?,?,?,?)',
    [req.body.address,req.body.name,req.body.foodname,imgName,req.body.districtid,1,req.body.typeid,
    req.body.username,req.body.useravatar,GetDateCreated(),req.body.cityid,req.body.userid], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Insert itemwhat successful!"});
    });
});



app.post('/updatetuser',(req,res)=>{
    connection.query('update user set username=?,name=?,lastname=?,status=?,sex=?,birthday=? where mail=?',
    [req.body.username,req.body.name,req.body.lastname,req.body.status,req.body.sex,
    req.body.birthday,req.body.mail], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Update user successful!"});
    });
});

app.post('/updatetimguser',(req,res)=>{
    var imgName =GetFilenameImageAvatar();
    saveIMG(imgName,req.body.img);
    console.log(imgName);
    connection.query('update user set img=? where mail=?',
    [imgName,req.body.mail], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Update user successful!"});
    });
});

app.post('/updatetpassuser',(req,res)=>{
    connection.query('update user set pass=? where mail=?',
    [req.body.pass,req.body.mail], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Update user successful!"});
    });
});

app.post('/insertuser',(req,res)=>{
    connection.query('insert into user(mail,username,pass,dateparticipation) values(?,?,?,?)',
    [req.body.mail,req.body.username,req.body.pass,GetDateCreated()], (err, rows)=>{
        if(err)
            res.json(err);
        else
            res.json({message:"Insert itemwhat successful!"});
    });
});

function GetDateCreated(){ 	
    var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	month = (month < 10 ? "0" : "") + month;
	var day  = date.getDate();
	day = (day < 10 ? "0" : "") + day;
	return  day +"-"+ month + "-"+year;
};

function GetFilenameImage(){
   var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	month = (month < 10 ? "0" : "") + month;
	var day  = date.getDate();
	day = (day < 10 ? "0" : "") + day;

	var hour = date.getHours();
	hour = (hour < 10 ? "0" : "") + hour;

	var min  = date.getMinutes();
	min = (min < 10 ? "0" : "") + min;
	var sec  = date.getSeconds();
	sec = (sec < 10 ? "0" : "") + sec;

	var fname ="imgupload"+"_"+sec+min+hour+day+month+year ;
	return fname;
};

function GetFilenameImageAvatar(){
   var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	month = (month < 10 ? "0" : "") + month;
	var day  = date.getDate();
	day = (day < 10 ? "0" : "") + day;

	var hour = date.getHours();
	hour = (hour < 10 ? "0" : "") + hour;

	var min  = date.getMinutes();
	min = (min < 10 ? "0" : "") + min;
	var sec  = date.getSeconds();
	sec = (sec < 10 ? "0" : "") + sec;

	var fname ="avaupload"+"_"+sec+min+hour+day+month+year ;
	return fname;
};

function saveIMG(GetFilenameImage,img) {
	console.log("SERVER SAVED A NEW IMAGE");
	filenameIMG = "images/"+GetFilenameImage + ".png";
	arrayImage.push(filenameIMG);
	fs.writeFile(filenameIMG, new Buffer(img, 'base64'));
};


// localhost:8000/
app.get('/', function(req, res){
    res.json({meg: 'Hello'});
});
app.get('/getimg/', (req, res)=>{
    res.sendFile(__dirname+"/images/"+req.query.nameimg);
})

app.get('/getmp3/', (req, res)=>{
    res.sendFile(__dirname+"/mp3s/"+req.query.namemp3);
})

app.listen(process.env.PORT || 8000);
