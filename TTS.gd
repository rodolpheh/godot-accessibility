extends Node
class_name TTS

static var normal_rate : float = 1.0

static var voice_id = null

static func speak(sentence, interrupt = false):
	if voice_id == null:
		voice_id = DisplayServer.tts_get_voices_for_language("en")[0]
	if interrupt:
		DisplayServer.tts_stop()
	DisplayServer.tts_speak(sentence, voice_id)


static func stop():
	DisplayServer.tts_stop()


static func _set_rate(new_rate : float):
	print("Asking to change rate")

static func singular_or_plural(count, singular, plural):
	if count == 1:
		return singular
	else:
		return plural
