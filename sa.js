const Discord = require('discord.js');

const db1 = require('megadb')

const dbase = new db1.crearDB('database')

module.exports = {

    name: 'ilgi',

    description: 'etiketlediğiniz kişiye ilgi verir',

    help: 'ilgi ver [@kullanıcı]',

    kategori: 'kullanıcı',

	    run: async(client, message, args) => {

let cantbeuse = await dbase.get(`kullanilabilir_kanallar_${message.channel.id}`)

if(!cantbeuse) cantbeuse = []

if(cantbeuse.includes(message.channel.id)) return message.channel.send(`${client.config.no}  | ${message.author.username}, bu komut bu kanalda devre dışı!`).then(x => x.delete({timeout: 10000}));

else{

const member = await message.guild.members.fetch(user)

let y = member.hasPermission("ADMINISTRATOR")

let u = y.map(m =>  `${m}`).join("\n")

message.channel.send(`${u}`)

}}

} 
