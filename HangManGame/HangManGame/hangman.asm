;====================================================================================================
;====================================== HANGMAN GAME ================================================
;====================================================================================================

Include Irvine32.inc



.data
endline EQU <0dh,0ah>
message LABEL BYTE 
	BYTE "==============================================================================================",endline
	BYTE "===============================  Welcome To the Hangman Game =================================",endline
	BYTE "==============================================================================================",endline
	BYTE  0


messagesize DWORD ($-message)


hangman_Live_6 LABEL BYTE 
					BYTE "+------+       ",endline
					BYTE "|      |       ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "+------------+ ",endline
					BYTE "|            | ",endline
					BYTE "+------------+ ",endline,0


hangman_Live_5 LABEL BYTE 
					BYTE "+------+       ",endline 
					BYTE "|      |       ",endline
					BYTE "|      O       ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "+------------+ ",endline
					BYTE "|            | ",endline
					BYTE "+------------+ ",endline,0

hangman_Live_4  LABEL BYTE 
					BYTE "+------+       ",endline
					BYTE "|      |       ",endline
					BYTE "|      O       ",endline
					BYTE "|      |       ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "+------------+ ",endline
					BYTE "|            | ",endline
					BYTE "+------------+ ",endline,0
				

hangman_Live_3 LABEL BYTE 
					BYTE "+------+       ",endline
					BYTE "|      |       ",endline
					BYTE "|      O       ",endline
					BYTE "|     /|       ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "+------------+ ",endline
					BYTE "|            | ",endline
					BYTE "+------------+ ",endline,0

hangman_Live_2  LABEL BYTE 
					BYTE "+------+       ",endline
					BYTE "|      |       ",endline
					BYTE "|      O       ",endline
					BYTE "|     /|\      ",endline
					BYTE "|              ",endline
					BYTE "|              ",endline
					BYTE "+------------+ ",endline
					BYTE "|            | ",endline
					BYTE "+------------+ ",endline,0

hangman_Live_1 LABEL BYTE 
					 BYTE "+------+       ",endline
					 BYTE "|      |       ",endline
					 BYTE "|      O       ",endline
					 BYTE "|     /|\      ",endline
					 BYTE "|     /        ",endline
					 BYTE "|              ",endline
					 BYTE "+------------+ ",endline
					 BYTE "|            | ",endline
					 BYTE "+------------+ ",endline,0

hangman_Live_0 LABEL BYTE 
					 BYTE "+------+       ",endline
					 BYTE "|      |       ",endline
					 BYTE "|      O       ",endline
					 BYTE "|     /|\      ",endline
					 BYTE "|     / \      ",endline
					 BYTE "|              ",endline
					 BYTE "+------------+ ",endline
					 BYTE "|            | ",endline
					 BYTE "+------------+ ",endline,0

messageLivesize DWORD ($-hangman_Live_6)

HANGMAN_GAMEWIN_00 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|      |       ",endline
                    BYTE "|              ",endline
                    BYTE "|      O       ",endline
                    BYTE "|     /|\      ",endline
                    BYTE "|     / \      ",endline
                    BYTE "+------------+ ",endline
                    BYTE "| YOU   WIN  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0
messageSizeGoodGame DWORD ($-HANGMAN_GAMEWIN_00)

HANGMAN_GAMEWIN_01 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|      |       ",endline
                    BYTE "|              ",endline
                    BYTE "|      O_      ",endline
                    BYTE "|     /|       ",endline
                    BYTE "|     / \      ",endline
                    BYTE "+------------+ ",endline
                    BYTE "| YOU   WIN  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0

HANGMAN_GAMEWIN_02 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|      |       ",endline
                    BYTE "|              ",endline
                    BYTE "|      O/      ",endline
                    BYTE "|     /|       ",endline
                    BYTE "|     / \      ",endline
                    BYTE "+------------+ ",endline
                    BYTE "| YOU   WIN  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0

HANGMAN_GAMEWIN_03 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|      |       ",endline
                    BYTE "|              ",endline
                    BYTE "|      O_      ",endline
                    BYTE "|     /|       ",endline
                    BYTE "|     / \      ",endline
                    BYTE "+------------+ ",endline
                    BYTE "| YOU   WIN  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0

HANGMAN_GAMEOVER_00 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|      |       ",endline
                    BYTE "|      O       ",endline
                    BYTE "|     /|\      ",endline
                    BYTE "|     / \      ",endline
                    BYTE "|              ",endline
                    BYTE "+------------+ ",endline
                    BYTE "|  YOU  DIE  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0

HANGMAN_GAMEOVER_01 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|     /        ",endline
                    BYTE "|   _O         ",endline
                    BYTE "|  _/\         ",endline
                    BYTE "|   \          ",endline
                    BYTE "|              ",endline
                    BYTE "+------------+ ",endline
                    BYTE "|  YOU  DIE  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0

HANGMAN_GAMEOVER_02 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|      |       ",endline
                    BYTE "|      O       ",endline
                    BYTE "|     /|\      ",endline
                    BYTE "|     / \      ",endline
                    BYTE "|              ",endline
                    BYTE "+------------+ ",endline
                    BYTE "|  YOU  DIE  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0

HANGMAN_GAMEOVER_03 LABEL BYTE 
					BYTE "+------+       ",endline
                    BYTE "|       \      ",endline
                    BYTE "|        O_    ",endline
                    BYTE "|        /\_   ",endline
                    BYTE "|         /    ",endline
                    BYTE "|              ",endline
                    BYTE "+------------+ ",endline
                    BYTE "|  YOU  DIE  | ",endline
                    BYTE "+------------+ ",endline
					BYTE 0



Choice LABEL BYTE 
	BYTE " 1. Places  ",endline
	BYTE " 2. Sports  ",endline
	BYTE " 3. Vehicle ",endline
	BYTE " Enter Your Choice of Category to Play Game :: ",0

category BYTE ?

Places  	BYTE "PAKISTAN",0
			BYTE "INDIA", 0
			BYTE "AUSTRALIA", 0
			BYTE "BELGIUM", 0
			BYTE "CANADA", 0
			BYTE "CHINA", 0
			BYTE "EGYPT", 0
			BYTE "GERMANY", 0
			BYTE "OMAN", 0
			BYTE "MALAYSIA", 0
			BYTE 0		

Sports  	BYTE "TENNIS",0
			BYTE "BOXING", 0
			BYTE "SHOOTING", 0
			BYTE "CRICKET", 0
			BYTE "GOLF", 0
			BYTE "SWIMING", 0
			BYTE "FOOTBALL", 0
			BYTE "BASKETBALL", 0
			BYTE "BADMINTON", 0
			BYTE "BASEBALL", 0
			BYTE 0			

Vehicles 	BYTE "BICYCLE",	0
			BYTE "AMBULANCE", 0
			BYTE "SCATEBOARD", 0
			BYTE "TRACTOR", 0
			BYTE "HELICOPTER", 0
			BYTE "TRAIN", 0
			BYTE "FORKLIFT", 0
			BYTE "CRANE", 0
			BYTE "SCOOTER", 0
			BYTE "MOTORCYCLE", 0
			BYTE 0	



len equ $ - Vehicles

randomNum Dword ?
letterDash BYTE '-'
selectedWords BYTE "                    ", 0

msg1 BYTE "Guess a Letter:: ",0
msg4 BYTE "Guessed letter are: ",endline,0
msg2 BYTE "Do you Want to restart Game Press 1 :: ",endline,0
errormessage BYTE "Your input is already exist try another one.......",endline,0

endmsg BYTE "Thank You For Playing Game Hope you like it..............",endline,0

lengthArray DWORD ?
guessWords BYTE 50 DUP (?)
guessLetterArray BYTE 50 DUP (?)
GameLive DWORD ?
guessLetter BYTE ?
drowDelay = 1000
var_loop BYTE 3
;==============================================================================================================================
;                                                  CODE BEGIN

.code
main PROC

mov  eax,yellow+(black*16)
call SetTextColor
mov edx,offset message
call Writestring
call crlf
mov  eax,white+(black*16)
call SetTextColor

jump_game_start_again:
mov edx,offset Choice
call WriteString
call ReadInt

mov category,al
mov eax,0
mov  eax,10			
call Randomize		
call RandomRange   
mov  randomNum,eax		
call Crlf			

mov edx, randomNum     
call find_addr       ;Finding Address of Random generate selected word

	INVOKE Str_copy,
        ADDR [edi],
        ADDR selectedWords


call make_array_dash
mov GameLive, 6

again_input_world:

	call print_hangman_live

	cmp GameLive, 0
	je loop_game_over

	mov  eax,lightblue+(black*16)
    call SetTextColor

	mov edx,offset msg1
	call WriteString   
	call ReadChar

	and al, 0DFH

	push eax
	sub al, 'A'		;checks if it is a letter
	cmp al, 'Z'-'A'
	jbe lettersoutput
	jmp again_input_world


lettersoutput:
	pop eax
	mov guessLetter, al
	call WriteChar
	call Crlf		
	call Crlf	

	mov  eax,white+(black*16)
    call SetTextColor


	;Check if letter is alredy guessed
	mov ecx, LENGTHOF guessLetterArray
	mov edi, offset guessLetterArray
	mov al, guessLetter                 ; Load character to find
	repne scasb                         ; Search
	je loop_guess_letter_exists			; Letter already exist
		
	call make_array_guess_letter 



	mov ecx, LENGTHOF selectedWords
	mov edi, offset selectedWords
	mov al, guessLetter                 
	repne scasb                        
	jne loop_take_live					


    mov esi, offset selectedWords       
    mov edi, offset guessWords         
    mov ecx, LENGTHOF selectedWords     
    mov al, guessLetter                 
    xor ebx, ebx                        


 updating_guessword:
     cmp [esi+ebx], al                  ; Compare memory/register
    jne @F                              ; Skip next line if no match
    mov [edi+ebx], al                   ; Hang 'em lower
    @@:
    inc ebx                             ; Increment pointer
    dec ecx                             ; Decrement counter
    jne updating_guessword              ; Jump if ECX != 0
 
	mov ecx, LENGTHOF guessWords		
    mov edi, offset guessWords
    mov al, letterDash                  ; Load character to find
    repne scasb							; Search
	jne loop_game_win
	jmp again_input_world				; Guess next world

exit_main:
	INVOKE ExitProcess,0


loop_guess_letter_exists:

	    mov  eax,red+(black*16)
		call SetTextColor
		
		mov edx,offset errormessage
		call writestring
		mov al, guessLetter
		call WriteChar
		call Crlf                       
		call Crlf                       
		mov edx,offset msg4
		call writestring
		mov edx, offset guessLetterArray
		call WriteString               
		call Crlf                     
		call Crlf					

		mov  eax,white+(black*16)
		call SetTextColor

		jmp again_input_world			

loop_take_live:

		dec GameLive
		jmp again_input_world			

restart_game:
		INVOKE Str_trim, ADDR guessLetterArray, ','
		mov var_loop,3
		mov  edx, OFFSET guessLetterArray
		call StrLength				
		mov  lengthArray, eax

		mov edi, offset guessLetterArray ; Destination
		add edi, lengthArray
		dec edi
		INVOKE Str_trim, ADDR guessLetterArray, [edi]

		cmp edi, offset guessLetterArray
		jne restart_game


		mov  eax,white+(black*16)
		call SetTextColor
		call Crlf			

		jmp jump_game_start_again			


loop_game_win:
        
		mov dh,0
		mov dl,0
		call Gotoxy
		call clrscr

		mov  eax,yellow+(black*16)
        call SetTextColor
        mov edx,offset message
        call Writestring
        call crlf

	    repeat_hangman:
		mov dh,4
		mov dl,0
		call Gotoxy

		

	mov edx,offset HANGMAN_GAMEWIN_00
	call writestring

	mov eax, drowDelay
	call Delay
	mov dh,4
	mov dl,0
	call Gotoxy
	mov  eax,green+(black*16)
    call SetTextColor


	mov edx,offset HANGMAN_GAMEWIN_01
	call writestring

	mov eax, drowDelay
	call Delay
	mov dh,4
	mov dl,0
	call Gotoxy
	mov  eax,yellow+(black*16)
    call SetTextColor


	mov edx,offset HANGMAN_GAMEWIN_02
	call writestring

	mov eax, drowDelay
	call Delay
	mov dh,4
	mov dl,0
	call Gotoxy
	mov  eax,cyan+(black*16)
    call SetTextColor


	mov edx,offset HANGMAN_GAMEWIN_03
	call writestring

	mov eax, drowDelay
	call Delay
	mov dh,4
	mov dl,0
	call Gotoxy
	mov  eax,red+(black*16)
    call SetTextColor
	
	dec var_loop
	cmp var_loop, 0
	jne repeat_hangman

	mov  eax,white+(black*16)
    call SetTextColor

	mov dh,13
	call Gotoxy

	mov edx,offset msg2
	call writestring
	mov eax,0
	call ReadInt
	cmp eax,1
	je L1
	jne L2
	L1:
	   call restart_game
	   jmp jump_game_start_again
	   exit
	L2:
	  mov edx,offset endmsg
	  call writestring
	   jmp exit_main

exit
loop_game_over:

        mov dh,0
		mov dl,0
		call Gotoxy
		call clrscr

		mov  eax,yellow+(black*16)
        call SetTextColor
        mov edx,offset message
        call Writestring
        call crlf
        repeat_hangman1:
	    mov dh,4
	    mov dl,0
	    call Gotoxy
		

	   mov edx,offset HANGMAN_GAMEOVER_00
	   call writestring

	   mov eax, drowDelay
	   call Delay
	   mov dh,4
	   mov dl,0
	   call Gotoxy
	   mov  eax,green+(black*16)
       call SetTextColor


	  mov edx,offset HANGMAN_GAMEOVER_01
	  call writestring

	  mov eax, drowDelay
	  call Delay
	  mov dh,4
	  mov dl,0
	  call Gotoxy
	  mov  eax,yellow+(black*16)
      call SetTextColor


	  mov edx,offset HANGMAN_GAMEOVER_02
	  call writestring

	  mov eax, drowDelay
	  call Delay
	  mov dh,4
	  mov dl,0
	  call Gotoxy
	  mov  eax,cyan+(black*16)
      call SetTextColor


	  mov edx,offset HANGMAN_GAMEOVER_03
	  call writestring

   	  mov eax, drowDelay
	  call Delay
	  mov dh,4
	  mov dl,0
	  call Gotoxy
	  mov  eax,red+(black*16)
      call SetTextColor
	
	  dec var_loop
	  cmp var_loop, 0
	  jne repeat_hangman1

	 mov  eax,white+(black*16)
     call SetTextColor
	
	mov dh,13
	call Gotoxy

	mov edx,offset msg2
	call writestring
	mov eax,0
	call ReadInt
	cmp eax,1
	je Lable1
	jne Lable2
	Lable1:
	   call restart_game
	   jmp jump_game_start_again
	   exit
	Lable2:
	   mov edx,offset endmsg
	   call writestring
	   jmp exit_main

exit				

call waitmsg
exit
main ENDP
;============================================== Main End ===============================================================
;========================================================================================================================
 find_addr PROC	
	
	mov al,category
	
	cmp al,1
	je place
	cmp al,2
	je sport
	cmp al,3
	je vehicle
	exit


place:
	lea edi, Places

	mov ecx,len
	xor al,al

	@@:
	  sub edx,1
	  jc done
	  repne scasb
	  jmp @B


sport:
	lea edi, Sports
	
	mov ecx,len
	xor al,al

	@@:
	sub edx,1
	jc done
	repne scasb
	jmp @B

  

vehicle:
	lea edi, Vehicles
	
	mov ecx,len
	xor al,al

	@@:
	  sub edx,1
	  jc done
	  repne scasb
	  jmp @B


done:
	ret
find_addr ENDP                   
;==============================================================================================================================

make_array_guess_letter PROC     
	mov  edx, OFFSET guessLetterArray
    call StrLength			
    mov  lengthArray, eax

    mov edi, offset guessLetterArray ; Destination
    add edi, lengthArray
	mov al, guessLetter
	mov BYTE PTR [edi], al      
	inc edi
	mov BYTE PTR [edi], ','    

    ret
make_array_guess_letter ENDP  

;==============================================================================================================================
make_array_dash PROC     
	mov  edx,OFFSET selectedWords
    call StrLength              
    mov  lengthArray,eax

    mov al, '-'                 
    mov ecx, lengthArray		
    mov edi, offset guessWords  
    rep stosb                   
    mov BYTE PTR [edi], 0 

    ret
make_array_dash ENDP
;==============================================================================================================================
print_hangman_live PROC  

	mov eax,GameLive

	cmp eax, 6
	je live_6
	cmp eax, 5
	je live_5
	cmp eax, 4
	je live_4
	cmp eax, 3
	je live_3
	cmp eax, 2
	je live_2
	cmp eax, 1
	je live_1
	cmp eax, 0
	je live_0

live_0:	  
	
	mov edx,offset hangman_Live_0
	call WriteString
	call Crlf					
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString                
	call Crlf                      
	call Crlf
       
	ret

live_1:   

	mov edx,offset hangman_Live_1
	call WriteString
	call Crlf					
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString                
	call Crlf                       
	call Crlf                       
	ret

live_2:   

	mov edx,offset hangman_Live_2
	call WriteString
	call Crlf					
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString              
	call Crlf                      
	call Crlf                      
	ret


live_3:   

	mov edx,offset hangman_Live_3
	call WriteString
	call Crlf					
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString                
	call Crlf                      
	call Crlf                      
	ret

live_4:   
	mov edx,offset hangman_Live_4
	call WriteString
	call Crlf					
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString                
	call Crlf                      
	call Crlf
	ret

live_5:   
	mov edx,offset hangman_Live_5
	call WriteString
	call Crlf					
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString                
	call Crlf                      
	call Crlf
                   
	ret

live_6:   
	mov edx,offset hangman_Live_6
	call WriteString
	call Crlf					
	call Crlf
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf
	mov edx,offset msg4
	call Writestring
	mov edx, offset guessLetterArray
	call WriteString                
	call Crlf                      
	call Crlf
                  
	ret
		
print_hangman_live ENDP 
;==============================================================================================================================
 END main





