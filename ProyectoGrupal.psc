// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion = presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos<-0 Hasta lim-1 Hacer
		Escribir menu[pos]
	FinPara
	Escribir '       Elija opción[1..',lim,']' Sin Saltar
	Leer opcion
FinFuncion

// Pide dos numeros y presenta el mayor de los dos
// 1
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir 'Ingrese numero 1'
	Leer num1
	Escribir 'Ingrese numero 2'
	Leer num2
	Si num1>num2 Entonces
		Escribir num1,' Es mayor que ',num2
	SiNo
		Si num1<num2 Entonces
			Escribir num1,' Es menor que ',num2
		SiNo
			Escribir num1,' Es igual a ',num2
		FinSi
	FinSi
FinFuncion

// 2
Funcion Divisionrestas()
	Definir n1,n2,resta Como Real
	Escribir 'Ingrese un número'
	Leer n1
	Escribir 'Ingrese un número más'
	Leer n2
	resta <- n1
	Mientras resta>=n2 Hacer
		resta <- resta-n2
		Escribir (resta+n2),'-',n2,'=',resta
	FinMientras
	Escribir 'La división entre ',n1,' y ',n2,' es = ',n1/n2
FinFuncion

// 3
Funcion Multiplicardosnumerosporsumas ()
	Definir num1,num2 Como Real
	Definir suma,acu Como Entero
	suma <- 0; acu <- 0
	Escribir 'Digite el primer numero'
	Leer num1
	Escribir 'Digite el segundo numero'
	Leer num2
	Mientras acu<num2 Hacer
		suma <- suma+num1
		Escribir (suma-num1),' + ',num1,' es igual a: ',suma
		acu <- acu+1
	FinMientras
	Escribir 'La multiplicación de ',num1,' x ',num2,' es igual a: ',suma
FinFuncion

// 4
Funcion presentarumerosparesymultiplosde5()
	Definir num,pares,mul,lim,cont,i Como Entero
	lim <- 0
	mul <- 1
	pares <- 0
	i <- 0
	Escribir '¿Cuántos números ingresará?'
	Leer lim
	Mientras i<lim Hacer
		Escribir 'Ingrese un numero '
		Leer num
		Si num MOD 2=0 Entonces
			pares <- pares+num
		FinSi
		Si num MOD 5=0 Entonces
			mul <- mul*num
		FinSi
		i <- i+1
	FinMientras
	Escribir 'la suma de los pares es :',pares
	Escribir 'El producto de los numeros multiplos de 5 son : ',mul
FinFuncion

// 5
Funcion Cantidaddedigitosdeunasecuenciadenúmeroshasta0()
	Definir num,contador,r Como Entero
	contador=0
	Escribir "Digite números enteros y escriba 0 para finalizar"
	Leer num
	Mientras num<>0 Hacer
		Mientras num>0 hacer
			r=num mod 10
			num=trunc(num/10)
			contador=contador+1
		FinMientras
		Escribir "Digite números enteros y escriba 0 para finalizar"
		Leer num
	FinMientras
	Escribir "La cantidad total de digitos es: ",contador
FinFuncion

// 6
Funcion Mostrarpreciodescuentoivaypago()
	definir numtraje,conttraje como entero 
	definir iva,preciotraje,desc,resultado como real 
	escribir "¿Cuántos trajes llevará? "
	conttraje=0
	leer numtraje
	Mientras conttraje<numtraje Hacer
		escribir "¿Cuánto cuesta el traje?"
		leer preciotraje
		Si preciotraje>=100 entonces
			desc=preciotraje*0.10
		sino
			desc=preciotraje*0.05
		FinSi
		iva=preciotraje*0.12
		resultado=preciotraje-desc+iva
		Escribir"**** Almacenes SomosMas ****"
		Escribir "El precio del traje es:      $",preciotraje
		Escribir "El descuento es:             $",desc
		Escribir "El I.V.A es:                 $",iva 
		Escribir "El precio total a pagar es : $",resultado
		conttraje=conttraje+1
	FinMientras
FinFuncion

// 7
Funcion Dado3númerosindicarsielsegundoeselmayor()
	Definir num1,num2,num3 Como Real
	Escribir 'ingrese el primer numero'
	Leer num1
	Escribir 'ingrese el segundo numero'
	Leer num2
	Escribir 'ingrese el tercer numero'
	Leer num3
	Si num2>num1 Entonces
		Si num2>num3 Entonces
			Escribir 'el segundo numero (',num2,') si es el mayor entre todos los numeros'
		SiNo
			Escribir 'el segundo numero no es el mayor entre los ingresados, el numero mayor entre todos seria el tercer numero: ",num3
		FinSi
	SiNo
		Si num1>num3 Entonces
			Escribir 'el segundo numero no es el mayor entre todos, el numero mayor entre todos seria el primer numero: ',num1
		SiNo
			Escribir 'el segundo numero no es el mayor entre todos, el numero mayor entre todos seria el tercer numero: ",num3
		FinSi
	FinSi
FinFuncion

// 8
Funcion Presentarelpromediodesecuenciadenúmeros()
	Definir num,sum,pro Como Real
	Definir cont Como Entero
	sum <- 0
	num <- 0
	cont <- 0
	Mientras num>=0 Hacer
		Escribir 'ingrese numero a promediar'
		Leer num
		Si num>=0 Entonces
			sum <- sum+num
			cont <- cont+1
		FinSi
	FinMientras
	pro <- sum/cont
	Escribir "el promedio de los numeros ingresados es: ",pro
	
FinFuncion

// 9
Funcion numerosamigos()
	Definir num1,num2,suma1,suma2,residuo,cont Como Entero
	suma1=0;suma2=0
	Escribir "Digite el primer número"
	Leer num1
	Escribir "Digite el segundo número"
	Leer num2
	Para cont=1 hasta num1-1
		residuo=num1 mod cont
		Si residuo=0 Entonces
			suma1=suma1+cont
		FinSi
	FinPara
	Para cont=1 hasta num2-1
		residuo=num2 mod cont
		si residuo=0 Entonces
			suma2=suma2+cont
		FinSi
	FinPara
	Si suma1=suma2 Entonces
		Escribir "Los números digitados son amigos"
	Sino
		Escribir "Los números digitados no son amigos"
	FinSi
FinFuncion

// 10
Funcion Primosgemelos()
	Definir n1,n2,c1,i,c2 Como Entero
	Escribir ' Escriba un número '
	Leer n1
	Escribir 'Escriba otro número'
	Leer n2
	c1 <- 0; c2 <- 0
	Para i<-1 Hasta n1 Hacer
		Si n1 MOD i=0 Entonces
			c1 <- c1+1
		FinSi
	FinPara
	Si c1=2 Entonces
		Para i<-1 Hasta n2 Hacer
			Si n2 MOD i=0 Entonces
				c2 <- c2+1
				Si c2=2 Entonces
					Escribir 'Los números son primos gemelos'
				FinSi
			FinSi
		FinPara
	SiNo
		Escribir 'Los números no son primos gemelos'
	FinSi
FinFuncion

// Ejercicios con cadenas
// 1
Funcion Nombrecaracterporcaracter()
	Definir nombre,letra Como Caracter
	Definir long,i como entero
	Escribir "Escriba un nombre"
	Leer nombre
	long=longitud(nombre)
	Dimension letra[long]
	Para i=0 hasta long-1 Con Paso 1 Hacer
		letra[i]=subcadena(nombre,i,i)
		Escribir " " letra(i)
	FinPara
	
FinFuncion

// 2
funcion Primermedioyultimocaracter()
	Definir frase,letra Como Caracter
	Definir long,i,medio como entero
	Escribir "Escriba una frase"
	Leer frase
	long=longitud(frase)-1
	Dimension letra[long]
	Para i=0 hasta long-1 con Paso 1 Hacer
		letra[i]=subcadena(frase,i,i)
	FinPara
	medio=trunc(long/2)
	Escribir "El primer caracter es: ",letra(0)
	Escribir "El caracter de la mitad es: ",letra(medio)
	Escribir "El último caracter es: ",subcadena(frase,long-0,long-0)
FinFuncion
// 3
Funcion Dadodosnombresindicarsisoniguales()
	definir nom1,nom2 como caracter 
	escribir"Ingrese el primer nombre"
	leer nom1 
	escribir "Ingrese el segundo nombre"
	leer nom2
	Si nom1=nom2 Entonces
		escribir "Los nombres son iguales"
	SiNo
		escribir "Los nombres no son iguales"
	Fin Si
	
FinFuncion
// 4
Funcion Frasedemayorlongitud()
	Definir long1,long2 Como Entero
	Definir frase1,frase2 Como Caracter
	Escribir 'ingrese la primera frase '
	Leer frase1
	Escribir 'ingrese la segunda frase '
	Leer frase2
	long1 <- longitud(frase1)
	long2 <- longitud(frase2)
	Si long1>long2 Entonces
		Escribir 'la primera frase es mas larga que la segunda '
	SiNo
		Si long1<long2 Entonces
			Escribir 'La segunda frase es mas larga que la primera'
		SiNo
			Si long1=long2 Entonces
				Escribir 'Ambas frases son iguales en longitud'
			FinSi
		FinSi
	FinSi
FinFuncion
//5
Funcion Verificarcomaspuntopuntocomadospuntos()
	Definir frase,cadena Como Caracter
	Definir long,i,coma,punto,puntocoma,dospuntos como entero
	coma=0;punto=0;puntocoma=0;dospuntos=0
	Escribir "Escriba una frase"
	Leer frase
	long=longitud(frase)
	cadena=subcadena(frase,1,long)
	Dimension e[long]
	Para i=0 hasta long-1 con Paso 1 Hacer
		Si subcadena(frase,i,i)="," Entonces
			coma=coma+1
		FinSi
		Si subcadena(frase,i,i)="." Entonces
			punto=punto+1
		FinSi
		Si subcadena(frase,i,i)=";" Entonces
			puntocoma=puntocoma+1
		FinSi
		Si subcadena(frase,i,i)=":" Entonces
			dospuntos=dospuntos+1
		FinSi
	FinPara
	Si coma=0 Entonces
		Escribir "En la frase no hay ninguna ,"
	SiNo
		Si coma=1 entonces
			escribir "En la frase hay 1 ,"
		SiNo
			Si coma>1 Entonces
				Escribir "En la frase hay ",coma," ,"
			FinSi
		FinSi
	FinSi
	Si punto=0 Entonces
		Escribir "En la frase no hay ningún ."
	SiNo
		Si punto=1 entonces
			escribir "En la frase hay 1 ."
		SiNo
			Si punto>1 Entonces
				Escribir "En la frase hay ",punto," ."
			FinSi
		FinSi
	FinSi
	Si puntocoma=0 Entonces
		Escribir "En la frase no hay ningún ;"
	SiNo
		Si puntocoma=1 entonces
			escribir "En la frase hay 1 ;"
		SiNo
			Si puntocoma>1 Entonces
				Escribir "En la frase hay ",puntocoma," ;"
			FinSi
		FinSi
	FinSi
	Si dospuntos=0 Entonces
		Escribir "En la frase no hay ningún :"
	SiNo
		Si dospuntos=1 entonces
			escribir "En la frase hay 1 :"
		SiNo
			Si dospuntos>1 Entonces
				Escribir "En la frase hay ",coma," :"
			FinSi
		FinSi
	FinSi
FinFuncion

//6
Funcion Indicarcuantasvocalesconsonantesydigitoshay()
	definir frase, letra Como Caracter
	definir cv,cc,ca,i,long Como Entero
	escribir "Ingrese una frase"
	leer frase
	cv=0
	cc=0
	ca=0
	long=Longitud(frase)-1
	Dimension letra[long]
	Para i<-0 Hasta long Con Paso 1 Hacer
		Segun Subcadena(frase,i,i) Hacer
			"a","A","e","E","i","I","o","O","u","U":
				cv=cv+1
			"b","B","c","C","d","D","f","F","g","G","h","H","j","J","k","K","l","L","m","M","n","N","p","P","q","Q","r","R","s","S","t","T","v","V","W","w","x","X","Y","y","z","Z":
				cc=cc+1
			"0","1","2","3","4","5","6","7","8","9":
				ca=ca+1
		Fin Segun
	Fin Para
	Escribir "la cantidad de vocales de la frase ingresada es: ",cv
	Escribir "la cantidad de consonantes de la frase ingresada es: ",cc
	Escribir "la cantidad de caractares de la frase ingresada es: ",ca
FinFuncion
//7
Funcion Indicarcuantaspalabrashay()
Definir frase como caracter
Definir i,palabras,long Como Entero
palabras=0
Escribir "Escriba una frase"
Leer frase
long=longitud(frase)
Para i=0 hasta long-1 con paso 1 Hacer
	Si subcadena(frase,i,i)=" " y subcadena(frase,i-1,i-1)<>" " entonces
		palabras=palabras+1
	FinSi
FinPara
Escribir "La frase tiene ",palabras+1," palabras "
FinFuncion

//8
Funcion cedulaysuma()
	Definir num,sum,div,long Como Entero
	Definir cantidad Como Caracter
	Escribir 'ingrese numero de cedula'
	Leer num
	sum <- 0
	Mientras num>0 Hacer
		div <- num MOD 10
		sum <- sum+div
		num <- trunc(num/10)
	FinMientras
	Escribir 'la suma de su cedula es:',sum
FinFuncion

//9
Funcion Palindroma()
	definir inicio,long,cont como entero 
	Definir palabra Como Caracter
	Escribir "ingrese palabra"
	leer palabra 
	long=Longitud(palabra)-1
	inicio=0
	cont=0
	mientras inicio<long Hacer
		si Subcadena(palabra,inicio,inicio)<>Subcadena(palabra,long,long) Entonces
			cont=cont+1
		FinSi
		inicio=inicio+1
		long=long-1
	FinMientras
	si cont=0 Entonces
		Escribir "si es palindroma"
	SiNo
		Escribir "no es palindroma"
	FinSi
FinFuncion

//10
Funcion Indicarposiciondecaracter()
	Definir frase,buscado,ctr Como Caracter
	Definir long,i Como Entero
	Escribir "Ingrese una frase"
	Leer frase
	Escribir "Ingrese el caracter del que desea saber su posicion"
	Leer buscado
	long=Longitud(frase)
	Dimension ctr[long]
	Para i=1 hasta long-1 Hacer
		ctr[i]=subcadena(frase,i,i)
		Si ctr(i)=buscado Entonces
			Escribir "La posicion del caracter buscado es:",i+1
		FinSi
	FinPara	
FinFuncion

//MenuArreglos
//1
Funcion IngresaryPresentararreglo()
	Definir n,inicio,num,arreglo Como Entero
	Escribir "Ingrese la cantidad deseada para la dimension"
	Leer n
	Dimension arreglo[n]
	Para inicio=0 hasta n-1 con paso 1 Hacer
		Escribir "Digite numeros"
		Leer num
		arreglo[inicio]=num
	FinPara
	Para inicio=0 hasta n-1 con paso 1 Hacer
		Escribir arreglo(inicio)
	FinPara
FinFuncion

//2
funcion Presentarnumerosparesdearreglo()
	Definir long,inicio,num,arreglo,cant Como Entero
	Escribir "Ingrese la cantidad deseada para la dimension"
	Leer long
	Dimension arreglo[long]
	cant=long
	Para inicio=0 hasta long-1 Hacer
		Escribir "Digite ",cant," numeros"
		Leer num
		arreglo[inicio]=num
		cant=cant-1
	FinPara
	Escribir "Los numeros pares ingresados en el arreglo son: "
	Para inicio=0 hasta long-1 hacer
		Si arreglo[inicio] mod 2=0 y arreglo[inicio]>0 Entonces
			Escribir arreglo[inicio]
		FinSi
	FinPara
FinFuncion

//3
funcion Guardarypresentarnegativos()
	Definir num,i,long,negativos Como Entero
	Escribir "¿Cuantos numeros ingresará?"
	Leer long
	Dimension negativos(long)
	Para i=0 hasta long-1 con paso 1 Hacer
		Escribir "Digite numeros"
		Leer num
		Si num<0 entonces
			negativos[i]=num
		sino
			negativos[i]=0
		FinSi
	FinPara
	Escribir "Los numeros negativos" 
	Para i=0 hasta long-1 con paso 1 Hacer
		si negativos[i]<>0 Entonces
			escribir negativos[i]
		FinSi
	FinPara
FinFuncion
//4
Funcion Primeraletradenombre()
	Definir inicio,numnom,contador,contx Como Entero
	definir nombres Como Caracter
	inicio=0;contador=0;contx=1
	Escribir "Ingrese la cantidad de nombres a recibir"
	leer numnom
	Dimension nombres[numnom+1]
	para inicio=0 Hasta numnom-1 Con Paso 1 Hacer
		Escribir "Ingrese nombres"
		Leer nombres[inicio]
	FinPara
	Para inicio= 0 Hasta numnom-1  Con Paso 1 Hacer
		contador=contador+1
		Escribir "La primera letra del nombre N°",contx, " es: ",subcadena(nombres[inicio],0,0)
		contx=contx+1
	FinPara
FinFuncion
//5
Funcion totalcantidadypromedio()
	definir i,n,v,j,acu,prom,total,arreglo como real 
	acu=0
	escribir" ¿Cuantos numeros desea ingresar? "
	leer n
	dimension arreglo[n]
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		escribir "Digite un valor"
		leer v 
		arreglo[i] =v
	Fin Para
	Para j<-0 Hasta n-1 Con Paso 1 Hacer
		acu=acu+arreglo[j]
	Fin Para
	total=acu
	prom=acu/n
	escribir "el total es : ",total 
	escribir "la cantidad de numeros ingresados es : ",n
	escribir "el promedio es : ",prom
FinFuncion
//6
Funcion multiplosde5alreves()
	Definir num,i,long,mul,max,finn Como Entero
	Escribir "Cuántos numeros llevará su arreglo?"
	Leer long
	Dimension mul(long)
	Para i=0 hasta long-1 con paso 1 Hacer
		Escribir "Digite numeros"
		Leer num
		mul[i]=num
	FinPara
	long=long-1;finn=0
	Para max=long hasta finn con paso-1 Hacer
		Si mul[max] mod 5=0 entonces
			Escribir mul[max]
		FinSi
	FinPara
FinFuncion
//7
Funcion primeromedioyfinalnumero()
	Definir long,i,medio,num,numer,n como entero
	Escribir "Cuantos numeros digitara"
	Leer long
	Dimension numer[long]
	Para i=0 hasta long-1 con Paso 1 Hacer
		Escribir "Digite numeros"
		Leer n
		numer[i]=n
	FinPara
	medio=trunc((long-1)/2)
	Escribir "El primer numero es: ",numer[0]
	Escribir "El número  de la mitad es: ",numer[medio]
	Escribir "El último número  es: ",numer[long-1]
FinFuncion
//8
Funcion guardararreglo1enarreglo2()
	Definir n,i,arr1,arr2,long Como Entero
	Escribir "Cuantos números va a digitar"
	Leer long
	Dimension arr1(long)
	Para i=0 hasta long-1 con paso 1 Hacer
		Escribir "Digite numeros"
		Leer n
		arr1[i]=n
	FinPara
	Dimension arr2(long)
	Para i=0 hasta long-1 con paso 1 Hacer
		arr2[i]=arr1[i]
	FinPara
	Para i=0 hasta long-1 con paso 1 Hacer
		Escribir arr2[i]
	FinPara
FinFuncion
//9
Funcion sumarelementosdedosarreglos()
	definir cc,i,a1,a2,a3 Como Entero
	Escribir "ingrese la cantidad de cifras que quiere que tenga cada arreglo"
	leer cc
	Dimension a1(cc)
	Dimension a2(cc)
	Dimension a3(cc)
	Para i=0 Hasta cc-1 Con Paso 1 Hacer
		Escribir "introduce el valor del primer arreglo en la posicion ",i+1
		leer a1(i)
		Escribir "introduce el valor del segundo arreglo en la posicion ",i+1
		leer a2(i)
		a3(i)=a1(i)+a2(i)
	Fin Para
	Para i=0 Hasta cc-1 Con Paso 1 Hacer
		Escribir a1(i)," + ",a2(i)," = ",a3(i)
	Fin Para
FinFuncion
//10
Funcion arreglodefactoriales()
	Definir i,ifact,f,num,long,fact Como Entero
	Escribir "Cuantos numeros ingresará?"
	Leer long
	Dimension fact(long)
	Para i=0 hasta long-1 con paso 1 Hacer
		Escribir "Digite numeros"
		Leer num
		f=1
		Para ifact=1 hasta num con paso 1 Hacer
			f=f*ifact
		FinPara
		fact[i]=f
	FinPara
	Escribir "Los factoriales del numero o numeros ingresados es:"
	Para i=0 hasta long-1 con paso 1 Hacer
		Escribir fact[i]
	FinPara
FinFuncion

// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] <- '  1) Ejercicios con Numeros'
	menuPrincipal[1] <- '  2) Ejercicios con Cadenas'
	menuPrincipal[2] <- '  3) Ejercicios con Arreglos'
	menuPrincipal[3] <- '  4) Salir'
	// arreglo submenu numeros
	menuNumeros[0] <- '  1) Mayor de 2 Numeros'
	menuNumeros[1] <- '  2) Dividir dos numeros por restas'
	menuNumeros[2] <- '  3) Multiplicar dos numeros por sumas'
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] <- '  4) Suma Pares y Productos multiplos de 5 de una secuencia de numeros'
	// 2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] <- '  5) Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0'
	// El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	// precio superior a 100, se les aplicará un descuento del 10 MOD   y a los demas
	// el 5 MOD . presentar el valor de cada traje con su respectivo valor, descuento y pago
	// considerando el iva del 12 MOD . Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] <- '  6) Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas'
	menuNumeros[6] <- '  7) Dado tres numeros indicar si el segundo es el mayor'
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] <- '  8) Dado una secuencia de numeros presentar su promedio'
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] <- '  9) Numeros amigos'
	// dos numeros son primos gemelos si ambos son primos
	// n1=5  n2=7
	menuNumeros[9] <- '  10) Primos gemelos'
	menuNumeros[10] <- '  11) Salir'
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] <- '  1) Presentar un nombre caracter por caracter'
	// frase="hola que tal"    hql
	menuCadenas[1] <- '  2) Presentar el primero, el medio y el ultimo caracter de una frase'
	// nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] <- '  3) Dado dos nombres indicar si son iguales'
	// f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] <- '  4) Dadas dos frase indicar la de mayor longitud'
	// frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] <- '  5) Indicar cuantas ,.;: hay en una cadena'
	// frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] <- '  6) Dado una cadena indicar cuantas vocales, consonantes y digitos hay'
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] <- '  7) Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras'
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] <- '  8) Presentar la suma de los digitos de una cedula'
	// palabra="ana"
	menuCadenas[8] <- '  9) Indicar si una palabra es palindroma'
	// cadena="hola que tal"
	// 01234567891011
	// caracter="qui"  resp=-1
	// caracter="que"  resp=5
	menuCadenas[9] <- '  10) Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena'
	menuCadenas[10] <- '  11) Salir'
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0] <- '1) Dado un arreglo cualquiera ingresarlo y presentarlo'
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1] <- '2) Presentar los numeros pares de un arreglo'
	// n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2] <- '3) Dado una serie de numeros guardar en un arreglo solo los numeros negativos'
	// n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3] <- '4) Dado un arreglo de nombres presentar el primer caracter de cada nombre'
	// n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4] <- '5) Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo'
	// n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5] <- '6) Dado un arreglo presentarlo al revez solo los numeros multiplos de 5'
	// n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6] <- '7) Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo'
	// n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7] <- '8) Dado un arreglo copiarlo en otro y presentarlo'
	// n=5  arreglo1=[8,20,7,5,4]
	// arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8] <- '9) Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos'
	// n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9] <- '10) Dado una serie de numeros guarda en un arreglo los factoriales'
	menuArreglos[10] <- '11) Salir'
	opc <- ''
	Mientras opc<>'4' Hacer
		opc <- presentarMenu('Menu Principal',menuPrincipal,4)
		Segun opc  Hacer
			'1':
				opcn <- ''
				Mientras opcn<>'11' Hacer
					opcn <- presentarMenu('Menu Numeros',menuNumeros,11)
					Segun opcn  Hacer
						'1':
							Escribir 'Mayor de 2 Numeros'
							mayorDosNumeros()
							Esperar 3 Segundos
						'2':
							Escribir 'Dividir dos numeros por restas'
							Divisionrestas()
							Esperar 3 Segundos
						'3':
							Escribir 'Multiplicar dos numeros por sumas'
							Multiplicardosnumerosporsumas()
							Esperar 3 Segundos
						'4':
							Escribir 'Suma Pares y Productos multiplos de 5 de una secuencia de numeros'
							presentarumerosparesymultiplosde5()
							Esperar 3 Segundos
						'5':
							Escribir 'Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0'
							Cantidaddedigitosdeunasecuenciadenúmeroshasta0()
							Esperar 3 Segundos
						'6':
							Escribir 'Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas'
							Mostrarpreciodescuentoivaypago()
							Esperar 3 Segundos
						'7':
							Escribir 'Dado tres numeros indicar si el segundo es el mayor'
							Dado3númerosindicarsielsegundoeselmayor()
							Esperar 3 Segundos
						'8':
							Escribir 'Dado una secuencia de numeros presentar su promedio'
							Presentarelpromediodesecuenciadenúmeros()
							Esperar 3 Segundos
						'9':
							Escribir 'Numeros amigos'
							numerosamigos()
							Esperar 3 Segundos
						'10':
							Escribir 'Primos gemelos'
							Primosgemelos()
							Esperar 3 Segundos
						'11':
							Escribir 'Regresando al Menu Principal...'
							Esperar 3 Segundos
						De Otro Modo:
							Escribir 'Opcion invalida...'
							Esperar 3 Segundos
					FinSegun
				FinMientras
			'2':
				opcn <- ''
				Mientras opcn<>'11' Hacer
					opcn <- presentarMenu('Menu Cadenas',menuCadenas,11)
					Segun opcn  Hacer
						'1':
							Escribir 'Presentar un nombre caracter por caracter'
							Nombrecaracterporcaracter()
							Esperar 3 Segundos
						'2':
							Escribir 'Presentar el primero, el medio y el ultimo caracter de una frase'
							Primermedioyultimocaracter()
							Esperar 3 Segundos
						'3':
							Escribir 'Dado dos nombres indicar si son iguales'
							Dadodosnombresindicarsisoniguales()
							Esperar 3 Segundos
						'4':
							Escribir 'Dadas dos frase indicar la de mayor longitud'
							Frasedemayorlongitud()
							Esperar 3 Segundos
						'5':
							Escribir 'Indicar cuantas ,.;: hay en una cadena'
							Verificarcomaspuntopuntocomadospuntos()
							Esperar 3 Segundos
						'6':
							Escribir 'Dado una cadena indicar cuantas vocales, consonantes y digitos hay'
							Indicarcuantasvocalesconsonantesydigitoshay()
							Esperar 3 Segundos
						'7':
							Escribir 'Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras'
							Indicarcuantaspalabrashay()
							Esperar 3 Segundos
						'8':
							Escribir 'Presentar la suma de los digitos de una cedula'
							cedulaysuma()
							Esperar 3 Segundos
						'9':
							Escribir 'Indicar si una palabra es palindroma'
							Palindroma()
							Esperar 3 Segundos
						'10':
							Escribir 'Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena'
							Indicarposiciondecaracter()
							Esperar 3 Segundos
						'11':
							Escribir 'Regresando al Menu Principal...'
							Esperar 3 Segundos
						De Otro Modo:
							Escribir 'Opcion invalida...'
							Esperar 3 Segundos
					FinSegun
				FinMientras
			'3':
				opcn <- ''
				Mientras opcn<>'11' Hacer
					opcn <- presentarMenu('Menu Arreglos',menuArreglos,11)
					Segun opcn  Hacer
						'1':
							Escribir 'Dado un arreglo cualquiera ingresarlo y presentarlo'
							IngresaryPresentararreglo()
							Esperar 3 Segundos
						'2':
							Escribir 'Presentar los numeros pares de un arreglo'
							Presentarnumerosparesdearreglo()
							Esperar 3 Segundos
						'3':
							Escribir 'Dado una serie de numeros guardar en un arreglo solo los numeros negativos'
							Guardarypresentarnegativos()
							Esperar 3 Segundos
						'4':
							Escribir 'Dado un arreglo de nombres presentar el primer caracter de cada nombre'
							Primeraletradenombre()
							Esperar 3 Segundos
						'5':
							Escribir 'Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo'
							totalcantidadypromedio()
							Esperar 3 Segundos
						'6':
							Escribir 'Dado un arreglo presentarlo al revez solo los numeros multiplos de 5'
							multiplosde5alreves()
							Esperar 3 Segundos
						'7':
							Escribir 'Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo'
							primeromedioyfinalnumero()
							Esperar 3 Segundos
						'8':
							Escribir 'Dado un arreglo copiarlo en otro y presentarlo'
							guardararreglo1enarreglo2()
							Esperar 3 Segundos
						'9':
							Escribir 'Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos'
							sumarelementosdedosarreglos()
							Esperar 3 Segundos
						'10':
							Escribir 'Dado una serie de numeros guarda en un arreglo los factoriales'
							arreglodefactoriales()
							Esperar 3 Segundos
						'11':
							Escribir 'Regresando al Menu Principal...'
							Esperar 3 Segundos
						De Otro Modo:
							Escribir 'Opcion invalida...'
							Esperar 3 Segundos
					FinSegun
				FinMientras
			'4':
				Escribir 'Gracias por usar el Sistema =)'
				Esperar 3 Segundos
		FinSegun
	FinMientras
FinAlgoritmo
