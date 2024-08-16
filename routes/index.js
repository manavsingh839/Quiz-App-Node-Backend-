var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'Your Gmail Id',
    pass: 'Your Gmail App Password'
  }
});


const alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

const generatePassword = (length) => {
  let password = "";
  for (let i = 0; i < length; i++) {
      password += alpha.charAt(Math.floor(Math.random() * alpha.length));
  }
  return password;
};

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "your Database Name"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

router.get('/questions', function(req, res, next) { 
  // console.log(req);
  var language=req.query.language;
  var type=req.query.type;
  if(type == "")
  {
    var sqlquery = `SELECT * FROM questions where language="${language}"`;
  }else{
    var sqlquery = `SELECT * FROM questions where language="${language}" AND type="${type}"`;
  }
  con.query(sqlquery, function (err, result, fields) {
    if (err) throw err;
    res.status(200).json(
      {
          'result' : result
      }
    );
  });
});
router.get('/getuser', function(req, res, next) {
  // console.log(req.query.user);
  var userid = req.query.user;
  con.query(`Select * from users where id = ${userid}`, function (err, result, fields) {
    if (err) throw err;
    res.status(200).json( 
      {
          'result' : result 
      }
    );
  });
});

router.get('/login',function(req,res,next){
  var email= req.query.email; 
   var password = req.query.password;
  //  console.log(req.query);
   con.query(`Select * from users where email = "${email}" AND password = "${password}"`,function(err,result,fields) {
       if(err) throw err;
if(result.length > 0)
{
       res.status(200).json(
        {
         'result' : result,
         'success' : "Login Successfully"
        }
      );
}else{
  res.status(200).json(
   {
    'success' : "Email & Password are Incorrect"
   }
 );
 }
});
});

router.get('/signup', function(req, res, next) {
  // console.log(req.query.user);
  var name = req.query.name;
  var email = req.query.email;
  var password = req.query.password;
  con.query(`Select * from users WHERE email = "${email}"`,function(err,result,fields) {
    if(err) throw err;
if(result.length > 0)
  {
    res.status(200).json(
     {
       'success' : "Email Already Exists"
     }
   );
}else{
  var sql = `INSERT INTO users (name,email,password) VALUES ('${name}','${email}','${password}')`;
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.status(200).json(
      {
        'success' : "1 record inserted"
      }
      );
  });
}
}); 
});
router.get('/forgot_pass',function(req,res,next){
  var email = req.query.email; 
  con.query(`Select * from users WHERE email = "${email}"`,function(err,result,fields){
      if(err) throw err;
    if(result.length > 0)
      {
        var newpass = generatePassword(5);
        
var mailOptions = {
  from: 'tester@gmail.com',
  to: email,
  subject: 'Quiz App Password',
  text: `Your New Login Password id : ${newpass}`
};

transporter.sendMail(mailOptions, function(error, info){
  if (error) {       
    res.status(200).json(
      {
       'success' : error
      }
      ); 
    // console.log(error);
  } else {

        var sql=`UPDATE users SET password ="${newpass}" WHERE email = "${email}"`;
        con.query(sql, function (err, result) {
          if (err) throw err;
          if(result.affectedRows > 0)
          {
            res.status(200).json(
               {
                'success' : "New password sent on your email"
               }
               ); 

          }else{            
        res.status(200).json(
          {
           'success' : "Try Again..."
          }
          ); 
          }
        });
        
    // console.log('Email sent: ' + info.response);
  }
});
       }
    else{
         res.status(200).json(
           {
            'success':'Incorrect email'
           }
         )
     }  
   });
 });  
 router.get('/update_profile',function(req,res,next){
  var newname =req.query.name;
  var newemail= req.query.email; 
  var newpass = req.query.password;
  var userid = req.query.id;
  //  console.log(req.query);
  if(newpass == ""){
    var sql=`UPDATE users SET email="${newemail}", name="${newname}" WHERE id = "${userid}"`;
  }else{
  var sql=`UPDATE users SET password ="${newpass}", email="${newemail}", name="${newname}" WHERE id = "${userid}"`;
  }
  con.query(sql,function(err,result,fields){
    if (err) throw err;
    if(result.affectedRows > 0){
    res.status(200).json( 
      {
          'result' : "Profile Updated..."
      }
    );
    }else{
      res.status(200).json( 
        {
            'result' : "Try Again..."
        }
      );

    }
  })
});
 router.get('/result', function(req, res, next) {
  // console.log(req.query.user);
  var userid = req.query.user;
  var quiz_name = req.query.quiz_name;
  var student_name = req.query.student_name;
  var attempted = req.query.attempted;
  var not_attempted = req.query.not_attempted;
  var correct_answers = req.query.correct_answers;
  var sql = `INSERT INTO results(user_id,quiz_name,student_name,attempted,not_attempted,correct_answers) VALUES ('${userid}','${quiz_name}','${student_name}','${attempted}','${not_attempted}','${correct_answers}')`;
  con.query(sql,function(err,result,fields){
    if (err) throw err;
    res.status(200).json( 
      {
          'result' : result.affectedRows
      }
    );
  });
});
module.exports = router;
