const Discord = require('discord.js');

const db = require('quick.db');

const db1 = require('megadb')

const dbase = new db1.crearDB('database')

const { MessageAttachment } = require('discord.js'); 

const moment = require('moment')

const Canvas = require("canvas");

const { registerFont } = require("canvas");

const path = require("path");

registerFont(path.resolve("./arial.ttf"), { family: "Arial" }); 

module.exports = {

    name: 'stat',

    description: 'sunucu içindeki mesaj ve ses aktivitenizi atar',

    help: 'stat [@kullanıcı]',

    kategori: 'kullanıcı',

    run: async(client, message, args) => {

let cantbeuse = await dbase.get(`kullanilabilir_kanallar_${message.channel.id}`)

if(!cantbeuse) cantbeuse = []

if(cantbeuse.includes(message.channel.id)) return message.channel.send(`${client.config.no}  | ${message.author.username}, bu komut bu kanalda devre dışı!`).then(x => x.delete({timeout: 10000}));

else{

	  const kullanıcı = message.mentions.users.first() || client.users.cache.get(args[0]) || (args.length > 0 ? client.users.cache.filter(e => e.username.toLowerCase().includes(args.join(" ").toLowerCase())).first(): message.author) || message.author;	   let member = message.guild.member(kullanıcı)

                let dataMessage = await db.get(`messageData.${member.id}.channel`) || {};

                let dataVoice = await db.get(`voiceData.${member.id}.channel`) || {};

                let messageData = Object.keys(dataMessage).map(id => {

                    return {

                        channelID: id,

                        totalMessage: dataMessage[id]

                    }

                }).sort((a, b) => b.totalMessage - a.totalMessage);

                let voiceData = Object.keys(dataVoice).map(id => {

                    return {

                        channelID: id,

                        totalTime: dataVoice[id]

                    }

                }).sort((a, b) => b.totalTime - a.totalTime);

                let dataMessage0 = await db.get(`messageData.${message.guild.id}.${member.id}.times`) || [{ time: 0, puan: 0 }, { time: 0, puan: 0 }];

                let dataVoice0 = await db.get(`voiceData.${message.guild.id}.${member.id}.times`) || [{ time: 0, puan: 0 }, { time: 0, puan: 0 }];

              

                let messageData0 = Object.values(dataMessage0).map(id => {

                    console.log(id)

                    return {

                        time: id.time,

                        puan: id.puan

                    };

                })

                let voiceData0 = Object.values(dataVoice0).map(id => {

                    return {

                        time: id.time,

                        puan: id.puan

                    };

                })

	      //let message0 = messageData0.reduce((a, b) => a + b.puan, 0);  

                let message0 = messageData0.filter(data => data.time).reduce((a, b) => a + b.puan, 0);

                let message14 = messageData0.filter(data => (Date.now() - (86400000 * 14)) < data.time).reduce((a, b) => a + b.puan, 0);

                let message7 = messageData0.filter(data => (Date.now() - (86400000 * 7)) < data.time).reduce((a, b) => a + b.puan, 0);

                let message24 = messageData0.filter(data => (Date.now() - 86400000) < data.time).reduce((a, b) => a + b.puan, 0);

	        let ses0 = voiceData0.filter(data => data.time).reduce((a, b) => a + b.puan, 0)

                let ses14 = voiceData0.filter(data => (Date.now() - (86400000 * 14)) < data.time).reduce((a, b) => a + b.puan, 0);

                let ses7 = voiceData0.filter(data => (Date.now() - (86400000 * 7)) < data.time).reduce((a, b) => a + b.puan, 0);

                let ses24 = voiceData0.filter(data => (Date.now() - 86400000) < data.time).reduce((a, b) => a + b.puan, 0);

	   

	    const applyText = (canvas, text) => {

    const ctx = canvas.getContext('2d');

    let fontSize = 70;

    do {

        ctx.font = `${fontSize -= 10}px sans-serif`;

    } while (ctx.measureText(text).width > canvas.width - 300);

    return ctx.font;

};

  

const canvas = Canvas.createCanvas(670, 630);

    const ctx = canvas.getContext('2d');

    const background = await Canvas.loadImage(client.config.canvasstat);  

  ctx.drawImage(background, 0, 0, canvas.width, canvas.height); 

	   

    ctx.strokeStyle = '#ffffff';

    ctx.strokeRect(0, 0, canvas.width, canvas.height);

	    

let yazıqwe = `${member.user.username}`

  if(yazıqwe.length >= 17) {yazıqwe = `İsmin Çok Uzun`}

  ctx.font ='35px bebas neue',

    ctx.fillStyle = '#ffffff';

    ctx.fillText(`\n\n\n${yazıqwe} Sunucu Verileri`, canvas.width / 6.80, canvas.height / 7);

   //////////////////////////total ////////////////////////////////////////////////

  ctx.font ='30px bebas neue',

    ctx.fillStyle = '#ffffff';

    ctx.fillText(`Ses & Yazı İstatistikleri`, canvas.width / 5, canvas.height / 2.40);

  ctx.font ='20px bebas neue',

  ctx.fillStyle = '#ffffff';

  ctx.fillText(`Toplam ${moment.duration(ses0).format("M [Ay], W [Hafta], DD [Gün], HH [Saat], mm [Dakika], ss [Saniye]")} ses & ${message0} mesaj`, canvas.width / 11, canvas.height / 2.16);

   

 //

//////////////bitiş////////////////////////////////////////////////

  //////////////////public odalar////////////////

  ctx.font ='23px bebas neue',

  ctx.fillStyle = '#ffffff';

  ctx.fillText(`Sesli Sohbet İstatistiği

14 Gün: ${moment.duration(ses14).format("M [Ay], W [Hafta], DD [Gün], HH [Saat], mm [Dakika], ss [Saniye]")}\n7 Gün: ${moment.duration(ses7).format("M [Ay], W [Hafta], DD [Gün], HH [Saat], mm [Dakika], ss [Saniye]")}\n24 Saat: ${moment.duration(ses24).format("M [Ay], W [Hafta], DD [Gün], HH [Saat], mm [Dakika], ss [Saniye]")}

Mesaj İstatistiği

14 Gün: ${message14} Mesaj\n7 Gün: ${message7} Mesaj\n24 Saat: ${message24} Mesaj`, canvas.width / 11, canvas.height / 1.85);

    ////////////////bitiş////////////////////////////////////////////////  

      const avatar = await Canvas.loadImage(member.user.displayAvatarURL({ format: 'png' }));

 ctx.save();

    roundedImage(ctx, 250, 20, 150, 150, 25);

    ctx.clip();

  ctx.drawImage(avatar, 250, 20, 150, 150);

  ctx.closePath();

	// Clip off the region you drew on

	ctx.clip();

  function roundedImage(ctx, x, y, width, height, radius) {

  ctx.beginPath();

  ctx.moveTo(x + radius, y);

  ctx.lineTo(x + width - radius, y);

  ctx.quadraticCurveTo(x + width, y, x + width, y + radius);

  ctx.lineTo(x + width, y + height - radius);

  ctx.quadraticCurveTo(x + width, y + height, x + width - radius, y + height);

  ctx.lineTo(x + radius, y + height);

  ctx.quadraticCurveTo(x, y + height, x, y + height - radius);

  ctx.lineTo(x, y + radius);

  ctx.quadraticCurveTo(x, y, x + radius, y);

  ctx.closePath();

	 } 

  const attachment = new MessageAttachment(canvas.toBuffer(), 'devran.png');

    message.channel.send(`[ __${member}__ ] kullanıcısının sunucu veri istatistikleri;`, attachment)

    }}}
