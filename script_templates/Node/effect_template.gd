# meta-name: Effect
# meta-description: Create an effect which can be applied to a target.
class_name EffectTemplate
extends Effect

var member_var := 0

func execute(targets: Array[Node]) -> void:
	print("It does %s something to % targets" % member_var, targets)
