;�պ��� ���ø�ũ��(AFK Fishing)

#NoTrayIcon

#Include AES Encryption.ahk
#Include ImageButton Effects.ahk
#Include ImageButton Effects2.ahk
#Include JSON_FromObj.ahk
#Include ShowTextRectangle.ahk

;���� �ּҿ����� ������ ����ʿ� X
#Include address.ahk

;�̹������������� ���� �����
FileCreateDir, %A_ScriptDir%/yulcroimg/

;�̹����ν���(���ϵ��λ�)
#Include �̹����ν���.ahk

;������ �̹������� ����ó��
FileSetAttrib, +H, %A_ScriptDir%\yulcroimg, 1, 1


;ini���� ��������
num := 1
While(num <= 17)
{
	IniRead, fish%num%, fishingList.ini, Setting, fish%num%, true
	num := num + 1
}

global fish1
global fish2
global fish3
global fish4
global fish5
global fish6
global fish7
global fish8
global fish9
global fish10
global fish11
global fish12
global fish13
global fish14
global fish15
global fish16
global fish17

global inti := 1

;������ �� false!
global laggdelay := false

;���� en(default), ko
global lang = "en"

Gui, Add, Picture, x213 y5 w22 h22 vhelp ghelp, %A_ScriptDir%\yulcroimg\btnError.png
Gui, Add, Picture, x155 y405 w40 h40 vsave gsave, %A_ScriptDir%\yulcroimg\btnSave.png
;Gui, Add, Text, x10 y10 w100 h20 vDebug, �����

Bhelp := new ImageButtonChange2("help", "yulcroimg\btnError_hover.png", "yulcroimg\btnError_press.png")
Bsave := new ImageButtonChange2("save", "yulcroimg\btnSave_hover.png", "yulcroimg\btnSave_press.png")


if(lang = "ko")
{	;�ѱ�
	Gui, Color,F9ECCB
	Gui Show, w240 h485, �������

	Gui Font, S10 C694642 W600, Malgun Gothic
	Gui, Add, Text, x60 y15 w120 h20 +Center C694642, �պ���
	Gui, Add, Text, x50 y35 w140 h20 +Center C694642, �� ���ø�ũ�� ��

	Gui Font, S8 CFF5D4F W600, Malgun Gothic
	Gui, Add, Text, x0 y70 w240 h20 +Center vProgress, ��������Ʈ: F4  ����: F6  ����: F7

	;�׷�ڽ�
	Gui Font, S9 C694642, Batang
	Gui, Add, GroupBox, x20 y100 w200 h365, ����� ���
}
else
{	;����
	Gui, Color,F9ECCB
	Gui Show, w240 h485, AFK Fishing

	Gui Font, S10 C694642 W600, Century Gothic
	Gui, Add, Text, x60 y15 w120 h20 +Center C694642, Longvinter
	Gui, Add, Text, x50 y35 w140 h20 +Center C694642, �� Fishing Macro ��

	Gui Font, S8 CFF5D4F W600, Century Gothic
	Gui, Add, Text, x0 y70 w240 h20 +Center vProgress, SetPoint: F4  Start: F6  Finish: F7

	;�׷�ڽ�
	Gui Font, S11 C694642 Bold, Arial
	Gui, Add, GroupBox, x20 y100 w200 h365, Fish List
}

global getPressed1
global getPressed2
global getPressed3
global getPressed4
global getPressed5
global getPressed6
global getPressed7
global getPressed8
global getPressed9
global getPressed10
global getPressed11
global getPressed12
global getPressed13
global getPressed14
global getPressed15
global getPressed16
global getPressed17

Loop 17
{
	check := fish%A_Index%
	;GuiControl, , Debug, %check%

	if (%check% = false)
	{
		getPressed%A_Index% := "_press"
	}
}

Gui, Add, Picture, x45 y130 w40 h40 vfish_1 gfish_1, %A_ScriptDir%\yulcroimg\1fish_pic%getPressed1%.bmp
Gui, Add, Picture, x100 y130 w40 h40 vfish_2 gfish_2, %A_ScriptDir%\yulcroimg\2fish_pic%getPressed2%.bmp
Gui, Add, Picture, x155 y130 w40 h40 vfish_3 gfish_3, %A_ScriptDir%\yulcroimg\3fish_pic%getPressed3%.bmp

Gui, Add, Picture, x45 y185 w40 h40 vfish_4 gfish_4, %A_ScriptDir%\yulcroimg\4fish_pic%getPressed4%.bmp
Gui, Add, Picture, x100 y185 w40 h40 vfish_5 gfish_5, %A_ScriptDir%\yulcroimg\5fish_pic%getPressed5%.bmp
Gui, Add, Picture, x155 y185 w40 h40 vfish_6 gfish_6, %A_ScriptDir%\yulcroimg\6fish_pic%getPressed6%.bmp

Gui, Add, Picture, x45 y240 w40 h40 vfish_7 gfish_7, %A_ScriptDir%\yulcroimg\7fish_pic%getPressed7%.bmp
Gui, Add, Picture, x100 y240 w40 h40 vfish_8 gfish_8, %A_ScriptDir%\yulcroimg\8fish_pic%getPressed8%.bmp
Gui, Add, Picture, x155 y240 w40 h40 vfish_9 gfish_9, %A_ScriptDir%\yulcroimg\9fish_pic%getPressed9%.bmp

Gui, Add, Picture, x45 y295 w40 h40 vfish_10 gfish_10, %A_ScriptDir%\yulcroimg\10fish_pic%getPressed10%.bmp
Gui, Add, Picture, x100 y295 w40 h40 vfish_11 gfish_11, %A_ScriptDir%\yulcroimg\11fish_pic%getPressed11%.bmp
Gui, Add, Picture, x155 y295 w40 h40 vfish_12 gfish_12, %A_ScriptDir%\yulcroimg\12fish_pic%getPressed12%.bmp

Gui, Add, Picture, x45 y350 w40 h40 vfish_13 gfish_13, %A_ScriptDir%\yulcroimg\13fish_pic%getPressed13%.bmp
Gui, Add, Picture, x100 y350 w40 h40 vfish_14 gfish_14, %A_ScriptDir%\yulcroimg\14fish_pic%getPressed14%.bmp
Gui, Add, Picture, x155 y350 w40 h40 vfish_15 gfish_15, %A_ScriptDir%\yulcroimg\15fish_pic%getPressed15%.bmp

Gui, Add, Picture, x45 y405 w40 h40 vfish_16 gfish_16, %A_ScriptDir%\yulcroimg\16fish_pic%getPressed16%.bmp
Gui, Add, Picture, x100 y405 w40 h40 vfish_17 gfish_17, %A_ScriptDir%\yulcroimg\17fish_pic%getPressed17%.bmp


Loop 17
{
	Oripic := "fish_" . A_Index
	Hoverpic := "yulcroimg\" . A_Index . "fish_pic_hover.bmp"

	check := fish%A_Index%

	if(%check% = true)
	{
		Presspic := "yulcroimg\" . A_Index . "fish_pic_press.bmp"
	}
	else if(%check% = false)
	{
		Presspic := "yulcroimg\" . A_Index . "fish_pic.bmp"
	}

	;GuiControl, , Debug, %check%

	B%A_Index% := new ImageButtonChange(Oripic, Hoverpic, Presspic)
}

global fishingX
global fishingY
global betterfish := true

fishingspotX := []
fishingspotY := []

Obj := new ShowTextRectangle() ; ��ü����

return

{
	fish_1:
	  fish1 := BtnPress(fish1)
	  return

	fish_2:
	  fish2 := BtnPress(fish2)
	  return

	fish_3:
	  fish3 := BtnPress(fish3)
	  return

	fish_4:
	  fish4 := BtnPress(fish4)
	  return

	fish_5:
	  fish5 := BtnPress(fish5)
	  return

	fish_6:
	  fish6 := BtnPress(fish6)
	  return

	fish_7:
	  fish7 := BtnPress(fish7)
	  return

	fish_8:
	  fish8 := BtnPress(fish8)
	  return

	fish_9:
	  fish9 := BtnPress(fish9)
	  return

	fish_10:
	  fish10 := BtnPress(fish10)
	  return

	fish_11:
	  fish11 := BtnPress(fish11)
	  return

	fish_12:
	  fish12 := BtnPress(fish12)
	  return

	fish_13:
	  fish13 := BtnPress(fish13)
	  return

	fish_14:
	  fish14 := BtnPress(fish14)
	  return

	fish_15:
	  fish15 := BtnPress(fish15)
	  return

	fish_16:
	  fish16 := BtnPress(fish16)
	  return

	fish_17:
	  fish17 := BtnPress(fish17)
	  return
}

BtnPress(tf)
{
	GuiControl, , Debug, tf:%tf%
	if(%tf% = true)
	{
		GuiControl, , Debug, false��
		return "false"
	}
	else if (%tf% = false)
	{
		GuiControl, , Debug, true��
		return "true"
	}
}
return

help:
{
if(lang = "ko")
{	;�ѱ�
	MsgBox, 0, ������� ��ũ�� ����,
	(
1. �� ��ũ�δ� 1920X1080 �ػ��� â��忡 ����ȭ�Ǿ��ֽ��ϴ�. �̿��� ���ÿ����� ���������� �۵����� ���� �� �ֽ��ϴ�.

2. ���� ���ø� ���Ͽ� '��� ����' �� '�̳� ���ô�' ����� ���� �帮�� �ٸ� ���ô뵵 ��� ��� �����մϴ�.

3. ��������� ����⸦ ���� ��Ȱ��ȭ �մϴ�.

4. ���콺�� ���� ����Ʈ�� �ø��� F4�� ���� �����մϴ�. (���� ���� ����)

5. ��������Ʈ ���� �Ϸ� �� F6�� ���� ���ø� �����մϴ�.

6. �� ��ũ�δ� ��纣���Ѱ� ���������� �κ��丮�� �ִ� ��� �Դ� ����� �����ϰ� �ֽ��ϴ�.

7. ��ũ�ΰ� �������ϰų� ������ϰ� ���� ��� F7�� �����ϴ�.

8. �� ��ũ�δ� �Ϻ����� �ʽ��ϴ�. �߿��� �������� ������ ������� ���ʽÿ�. �����ڴ� �ش� ���α׷��� ����ϸ� �߻��� ��� ����� å���� ���� �ʽ��ϴ�.

������ ���Ϸ�
���ڵ� ���� siharyun#6555
	)
}
else
{	;����
	MsgBox, 0, how to use AFK Fishing Macro,
	(
1. This macro is optimized for the 1920X1080 resolution window mode. It may not function properly in other settings.

2. Please use 'Fishing Hat' and 'Bait Buster' for the best experience but you can use any other fishing rods too.

3. Disable the fish you want to throw away

4. Place your mouse on the fishing point and Press F4 to set Fishing spots (you can select multiple spots)

5. After set all the spots around, press F6 to start Fishing

6. The program also contains auto eating pack of worms or pack of blueberries.

7. Whenever you want macro to be stopped, Press F7

8. This is not Perfect Program. Do not have any important things together. Creater doesn't have responsibility on any kind of action of the user using this program.

Created by Siharyun
contact discord - siharyun#6555
	)
}
}
return

save()
{
	Gui, Submit, nohide
	num := 1

	While(num <= 17)
	{
		check := fish%num%

		if(%check% = true)
			IniWrite, true, fishingList.ini, Setting, fish%num%
		else if(%check% = false)
			IniWrite, false, fishingList.ini, Setting, fish%num%

		num := num + 1
	}

	MsgBox, 0, successfully, saved!, 0.5
}
return

discord:
{
	;discord("test")
}
return

GuiClose:
{
	;������ �̰��ּ�Ǯ�� laggdelay false!
	;FileRemoveDir, %A_ScriptDir%\yulcroimg, 1
	ExitApp
}
return

F7::
{
	Reload
}
return

F4::
{
	MouseGetpos, fishingX, fishingY
	GuiControl, , Debug, %fishingX%

	fishingspotX.Insert(fishingX)
	fishingspotY.Insert(fishingY)

	squareX := fishingX - 35
	squareY := fishingY - 53
	Obj.Show(squareX, squareY, 50, 50, "", "FFC31E", "000000")

	MouseGetpos, fishingX, fishingY
	GuiControl, , Debug, %fishingX%
}
return

F6::
{
	;��ũ�� ����
	Gui, Submit, nohide

	SetMouseDelay, -1
	SetKeyDelay, -1

	; ������ ���ý����� ������ break
	if(fishingspotX.MaxIndex() = null)
	{
		if(lang = "ko") ;�ѱ�
			MsgBox, 0, ������ ��������Ʈ�� �����ϴ�!, F4�� ���� ��������Ʈ�� �����ϼ���!
		else ;����
			MsgBox, 0, No spot to fish, Use F4 to set the fishing spots!
		return
	}
	Sleep 100

	GuiControl, , Debug, ���ý���
	discord("start")

	spotnum := 1
	betterfish = true

	Obj.Hide()

	While(true)
	{
		;betterfish effect����------------------------------------
		if (%betterfish% = true)
		{
			ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\better_fish_effect.bmp
			if (ErrorLevel != 0)
			{
				GuiControl, , Debug, �̳�����Ʈ����
				Send {tab}
				Sleep 100
				MouseMove, 0, 0, ,
				Sleep 1000

				;�������Ѻ��� �Ա�
				ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\pack_of_worms.bmp
				if (ErrorLevel = 0)
				{
					fishfoundX := FoundX + 10
					fishfoundY := FoundY + 10

					Send {Click Left %fishfoundX% %fishfoundY%}
					Sleep 200

				}
				else
				{
					;��纣���� �Ա�
					ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\pack_of_blueberries.bmp
					if (ErrorLevel = 0)
					{
						fishfoundX := FoundX + 10
						fishfoundY := FoundY + 10

						Send {Click Left %fishfoundX% %fishfoundY%}
						Sleep 200
					}
					else
					{
						betterfish = false
					}
				}
				Send {tab}
				Sleep 1000
			}
		}

		Sleep 100
		MouseMove, fishingspotX[spotnum], fishingspotY[spotnum]
		Sleep 100
		Send {Click Left}
		Sleep 200
		GuiControl, , Debug, �����

		MouseMove, 200, 0, ,R

		Sleep 1000
		if(laggdelay = 1)	;���������
			Sleep 1000

		;�κ���á���� Ȯ�ο�
		if(lang = "ko") ;�ѱ�
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\fish_full_ko.bmp
		else ;����
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\fish_full.bmp
		if (ErrorLevel = 0)
		{
			;�κ�����
			GuiControl, , Debug, full
			Send {tab}
			Sleep 100
			MouseMove, 0, 0, ,

			inti := 1

			fishthrow := false
			;GuiControl, , Debug, %fishnow%
			Sleep 1000

			While (inti <= 17)
			{
				fishnow := fish%inti%

				;GuiControl, , Debug, ����%inti%
				if (%fishnow% = false)
				{
					while(true)
					{
						GuiControl, , Debug, fish%inti%
						ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\%inti%fish_pic.bmp
						if (ErrorLevel = 0)
						{
							GuiControl, , Debug, %inti%fish ����

							fishfoundX := FoundX + 10
							fishfoundY := FoundY + 10

							Send {Click Right %fishfoundX% %fishfoundY%}
							fishthrow := true
							Sleep 200
							MouseMove, -800, 0, ,R
							Sleep 500
							if(laggdelay = 1)	;���������
								Sleep 300
						}
						else
						{
							Sleep 100
							inti := inti + 1
							break
						}
					}
				}
				else
				{
					inti := inti + 1
				}
			}
			GuiControl, , Debug, %inti%������
			Sleep 100
			;���� ��á���� Ȯ��
			if (fishthrow = true)
			{
				GuiControl, , Debug, ����Ȳ���
				;����� ������
				Send {tab}
				Sleep 1500
			}
			else if (fishthrow = false)
			{
				GuiControl, , Debug, �������
				break
			}

		}
		else
		{
			;����� ������ Ȯ�ο�
			if(lang = "ko") ;�ѱ�
			ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\fish_none_ko.bmp
			else
			ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 %A_ScriptDir%\yulcroimg\fish_none.bmp
			if (ErrorLevel = 0)
			{
				GuiControl, , Debug, ��������%spotnum%
				Sleep 4000

				if(laggdelay = 1)	;���������
					Sleep 2000

				if (spotnum = fishingspotX.MaxIndex())
					spotnum := 1
				else
					spotnum++
			}
			else
			{
				;�� �� ����������
				While(A_TimeIdle < 30000)
				{
					GuiControl, , Debug, ������
					ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 %A_ScriptDir%\yulcroimg\fish_got.bmp
					if (ErrorLevel = 0)
					{
						GuiControl, , Debug, ����
						Send {e}
						Sleep 100
						Send {e}
						Sleep 100
						Send {e}
						Sleep 100
						Send {e}
						Sleep 1000
						break
					}
				}
				GuiControl, , Debug, ��������
				Sleep 200
			}
		}
	}
	discord("finished")

	if(lang = "ko") ;�ѱ�
		MsgBox, 0, ����, ��!,
	else ;����
		MsgBox, 0, fishing, finished!,
}
return

getMyMac()
{
	Runwait, %ComSpec% /c getmac /NH | clip,,hide
	RegExMatch(clipboard, ".*?([0-9A-Z].{16})(?!\w\\Device)", mac)
	return %mac1%
}
return

discord(status)
{
	;���� �Ϸ� �� ���ڵ� �޼����� ���� ������(�̿�)

	;�� ���ּ� Ȯ��
	myMacOri := getMyMac()

	StringReplace,myMac,myMacOri,-,,ALL

	;���ּ� ��ȣȭ
	new AES
	myMac := AES.Encrypt(myMac, "longvinter", 256)

	;�ð����(�����)
	formattime, time, , yyyy�� MM�� dd��  tt h�� mm�� ss��

	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	whr.Open("POST", webhook, true)
	whr.SetRequestHeader("Content-Type", "application/json")
	;POST�� ������ ����

	if (status = "test")
		data := ({ "content" : "``````ansi`n[1;33mTest Message[0m`n[0;36mUser : [0m" . myMac . "`n[0;36mTime : [0m" . time . "``````" })
	else if (status = "start")
		data := ({ "content" : "``````ansi`n[1;32mStart Fishing[0m`n[0;36mUser : [0m" . myMac . "`n[0;36mTime : [0m" . time . "``````" })
	else if (status = "finished")
		data := ({ "content" : "``````ansi`n[1;31mFinished Fishing[0m`n[0;36mUser : [0m" . myMac . "`n[0;36mTime : [0m" . time . "``````" })

	Body := json_fromobj(data)
	whr.Send(Body)
	whr.WaitForResponse()
}
return


