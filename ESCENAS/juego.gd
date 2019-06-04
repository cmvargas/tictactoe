extends Node
const x = preload("res://SPRITE/x.png")
const o = preload("res://SPRITE/o.png")
const ganadorx = preload("res://SPRITE/jugadorx.png")
const ganadoro = preload("res://SPRITE/jugadoro.png")
const turnox = preload("res://SPRITE/turno.png")
const turnoo = preload("res://SPRITE/turnoo.png")
const empate = preload("res://SPRITE/empate.png")
var inicio = x
var posicion=[0,0,0,0,0,0,0,0,0]
var turno=1
var seguir
var xo=1
var turnosig = turnox 
func _ready():
	pass # Replace with function body.

func _on_b1_pressed():
	colocar_casilla(1)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b2_pressed():
	colocar_casilla(2)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b3_pressed():
	colocar_casilla(3)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b4_pressed():
	colocar_casilla(4)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b5_pressed():
	colocar_casilla(5)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b6_pressed():
	colocar_casilla(6)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b7_pressed():
	colocar_casilla(7)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b8_pressed():
	colocar_casilla(8)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func _on_b9_pressed():
	colocar_casilla(9)
	seguir=verificar()
	if seguir==1 or seguir==2 or seguir==3:
		finalizarJuego(seguir)	
func colocar_casilla(casilla):
	if casilla==1:
		$b1.texture_normal=inicio
		posicion[0]=xo
		imprimir()
		$b1.disabled=true
	if casilla==2:
		$b2.texture_normal=inicio
		posicion[1]=xo
		imprimir()
		$b2.disabled=true
	if casilla==3:
		$b3.texture_normal=inicio
		posicion[2]=xo
		imprimir()
		$b3.disabled=true
	if casilla==4:
		$b4.texture_normal=inicio
		posicion[3]=xo
		imprimir()
		$b4.disabled=true
	if casilla==5:
		$b5.texture_normal=inicio
		posicion[4]=xo
		imprimir()
		$b5.disabled=true
	if casilla==6:
		$b6.texture_normal=inicio
		posicion[5]=xo
		imprimir()
		$b6.disabled=true
	if casilla==7:
		$b7.texture_normal=inicio
		posicion[6]=xo
		imprimir()
		$b7.disabled=true
	if casilla==8:
		$b8.texture_normal=inicio
		posicion[7]=xo
		imprimir()
		$b8.disabled=true
	if casilla==9:
		$b9.texture_normal=inicio
		posicion[8]=xo
		imprimir()
		$b9.disabled=true
	if turno%2==0:
		inicio=x
		xo=1
		turnosig=turnox
		$turno.texture=turnosig
	else:
		inicio=o
		xo=2
		turnosig=turnoo
		$turno.texture=turnosig
	turno=turno+1
func verificar():
	var contador=1
	var contador2=0
	var devolver=0
	while(contador<3):
		if posicion[0]==contador and posicion[1]==contador and posicion[2]==contador:
			devolver=contador
		elif posicion[3]==contador and posicion[4]==contador and posicion[5]==contador:
			devolver=contador
		elif posicion[6]==contador and posicion[7]==contador and posicion[8]==contador:
			devolver=contador
		elif posicion[0]==contador and posicion[3]==contador and posicion[6]==contador:
			devolver=contador
		elif posicion[1]==contador and posicion[4]==contador and posicion[7]==contador:
			devolver=contador
		elif posicion[2]==contador and posicion[5]==contador and posicion[8]==contador:
			devolver=contador
		elif posicion[0]==contador and posicion[4]==contador and posicion[8]==contador:
			devolver=contador
		elif posicion[2]==contador and posicion[4]==contador and posicion[6]==contador:
			devolver=contador
		contador=contador+1
	if devolver==0:
		contador=0
		while(contador<9):
			if posicion[contador]!=0:
				contador2=contador2+1
			contador=contador+1
	if contador2==9:
		devolver=3
	return devolver
func finalizarJuego(ganador):
	$b1.disabled=true
	$b2.disabled=true
	$b3.disabled=true
	$b4.disabled=true
	$b5.disabled=true
	$b6.disabled=true
	$b7.disabled=true
	$b8.disabled=true
	$b9.disabled=true
	if ganador==1:
		print("Ganador x")
		$fondoFinal.show()
		$ganador.texture=ganadorx
		$ganador.show()
		$volver.show()
		$menu.show()
	elif ganador==2:
		print("Ganador o")
		$fondoFinal.show()
		$ganador.texture=ganadoro
		$ganador.show()
		$volver.show()
		$menu.show()
	elif ganador==3:
		print("Empate")
		$fondoFinal.show()
		$ganador.texture=empate
		$ganador.show()
		$volver.show()
		$menu.show()
func imprimir():
	var contador3=0
	while(contador3<9):
		print(str(posicion[contador3])+" ")
		contador3=contador3+1
	print("\n")
	print("\n")
	print("\n")

func _on_menu_pressed():
	get_tree().change_scene("res://ESCENAS/menu.tscn")


func _on_volver_pressed():
	get_tree().change_scene("res://ESCENAS/juego.tscn")
