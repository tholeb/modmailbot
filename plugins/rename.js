module.exports = function ({ bot, commands }) {
	commands.addInboxThreadCommand('rename', [{ name: "channel", type: "string", required: true }], (msg, args, thread) => {
		bot.editChannel(thread.channel_id, { name: args.channel })
		thread.postSystemMessage(`Le nom du salon a été changé en \`${args.channel}\``);
	});
}
