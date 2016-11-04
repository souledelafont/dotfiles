chgprompt () {
	BULLETTRAIN_PROMPT_CHAR=`python -c 'import random; print(random.choice(\
	["👍 ", \
	"🌀 ", "🍀 ", "🔥 ", "💎 ", "🌍 ", \
	"🐯 ", "🐙 ", "🐔 ", "🐤 ", "🐭 ", \
	"🍄 ", "🍟 ", \
	"🍋 ", \
	"🚚 ", "🚕 ", \
	"🔑 ", "💡 ", "🎃 ", \
	"☀️ ", "♻️ ", "➡️ "]\
	))'`
}
